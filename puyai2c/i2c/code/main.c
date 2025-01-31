#include "i2c.h"       // Include your I2C driver
#include "uart.h"      // Include your UART driver
#include <stdint.h>
#include <stdio.h>     // Include stdio for snprintf
#include "gpio.h"
#include "py32f0xx.h"

// AHT21B sensor I2C address
#define AHT21B_ADDRESS  0x38

// AHT21B commands
#define AHT21B_CMD_INIT  0xBE
#define AHT21B_CMD_MEAS  0xAC
#define AHT21B_CMD_RESET 0xBA

void delay_ms(uint32_t ms);
void AHT21B_Init(void);
void AHT21B_TriggerMeasurement(void);
void AHT21B_ReadData(float* temperature, float* humidity);
void AHT21B_Reset(void);

// UART_SendString function declaration and definition
void UART_SendString(const char *str) {
    while (*str) {
        UART_write(*str++);  // Replace this with your actual UART sending function
    }
}

int main(void) {
    // Initialize system and peripherals
    UART_init();  // Initialize UART for communication
    I2C_init();   // Initialize I2C

    UART_SendString("Initializing AHT21B...\r\n");
    delay_ms(500);

    // Initialize AHT21B sensor
    AHT21B_Init();

    while (1) {
        float temperature = 0;
        float humidity = 0;

        delay_ms(500);

        // Trigger a new measurement
        AHT21B_TriggerMeasurement();

        // Read temperature and humidity data
        AHT21B_ReadData(&temperature, &humidity);

        // Variables for integer and decimal parts
        int tempInt = (int)(temperature);
        int tempDec = (int)((temperature - tempInt) * 100);  // Get 2 decimal places
        int humInt = (int)(humidity);
        int humDec = (int)((humidity - humInt) * 100);  // Get 2 decimal places

        // Display the temperature and humidity
        char buffer[64];
        snprintf(buffer, sizeof(buffer), "Temperature: %d.%02d C\r\nHumidity: %d.%02d %%\r\n",
                 tempInt, tempDec, humInt, humDec);

        UART_SendString(buffer);  // Send the updated values via UART

        delay_ms(10000);  // 10 seconds delay before the next measurement
    }
}

void AHT21B_Init(void) {
    uint8_t initCmd[] = {AHT21B_CMD_INIT, 0x08, 0x00};

    // Send initialization command
    I2C_start(AHT21B_ADDRESS << 1);  // Send the address with the write bit
    for (int i = 0; i < sizeof(initCmd); i++) {
        I2C_write(initCmd[i]);
    }
    I2C_stop();

    delay_ms(500);  // Wait for sensor stabilization

    // Verify initialization
    uint8_t status = 0xFF;
    I2C_start((AHT21B_ADDRESS << 1) | 1);  // Read status
    status = I2C_read(0);
    I2C_stop();

    if (!(status & 0x08)) {
        UART_SendString("AHT21B initialization failed!\r\n");
    } else {
        UART_SendString("AHT21B initialized successfully.\r\n");
    }
}

void AHT21B_TriggerMeasurement(void) {
    uint8_t measureCmd[] = {AHT21B_CMD_MEAS, 0x33, 0x00};

    UART_SendString("Triggering measurement...\r\n");

    // Send measurement command to AHT21B
    I2C_start(AHT21B_ADDRESS << 1);  // Send the address with the write bit
    for (int i = 0; i < sizeof(measureCmd); i++) {
        I2C_write(measureCmd[i]);  // Send the measurement command
    }
    I2C_stop();

    UART_SendString("Measurement command sent. Waiting for sensor readiness...\r\n");

    // Wait for readiness (max 1 second)
    uint8_t status = 0xFF;
    for (int i = 0; i < 20; i++) {  // Check status 20 times (20 * 50ms = 1s)
        I2C_start((AHT21B_ADDRESS << 1) | 1);
        status = I2C_read(0);  // Read status byte
        I2C_stop();

        if (!(status & 0x80)) {
            UART_SendString("Sensor ready.\r\n");
            return;
        }
        delay_ms(50);
    }

    UART_SendString("Sensor not ready after 1 second.\r\n");
}

void AHT21B_ReadData(float* temperature, float* humidity) {
    uint8_t data[6];
    int attempts = 5;  // Retry up to 5 times

    while (attempts--) {
        // Request data from AHT21B
        I2C_start((AHT21B_ADDRESS << 1) | 1);  // Send the address with the read bit
        for (int i = 0; i < 6; i++) {
            data[i] = I2C_read(i < 5);  // Acknowledge all but the last byte
        }
        I2C_stop();

        // Check if the status byte indicates valid data
        if (!(data[0] & 0x80)) {
            break;  // Data is valid
        }

        delay_ms(50);  // Wait and retry
    }

    if (data[0] & 0x80) {
        UART_SendString("Invalid data after retries, skipping...\r\n");
        *temperature = 0;
        *humidity = 0;
        return;
    }

    // Extract and validate data
    uint32_t rawHumidity = ((data[1] << 12) | (data[2] << 4) | (data[3] >> 4)) & 0xFFFFF;
    uint32_t rawTemperature = ((data[3] & 0x0F) << 16) | (data[4] << 8) | data[5];

    *humidity = ((float)rawHumidity / 1048576.0) * 100.0;
    *temperature = ((float)rawTemperature / 1048576.0) * 200.0 - 50.0;

    // Clamp and validate
    if (*temperature < -40.0 || *temperature > 85.0) {
        UART_SendString("Temperature out of range, retrying...\r\n");
        *temperature = 0;
    }
    if (*humidity < 0.0 || *humidity > 100.0) {
        UART_SendString("Humidity out of range, retrying...\r\n");
        *humidity = 0;
    }
}

void AHT21B_Reset(void) {
    uint8_t resetCmd = AHT21B_CMD_RESET;

    UART_SendString("Sending reset command...\r\n");

    // Send reset command
    I2C_start(AHT21B_ADDRESS << 1);  // Send the address with the write bit
    I2C_write(resetCmd);             // Send the reset command
    I2C_stop();

    delay_ms(1000);  // Wait for the reset to complete
}

// Delay function (simple blocking)
void delay_ms(uint32_t ms) {
    for (uint32_t i = 0; i < ms; i++) {
        for (uint32_t j = 0; j < 1000; j++) {
            __asm__("nop");  // No-operation for precise timing
        }
    }
}
