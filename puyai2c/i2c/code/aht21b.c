#include "aht21b.h"
#include "i2c.h"
#include "uart.h"
#include <stdio.h>
#include "gpio.h"
#include "py32f0xx.h"

static void I2C_Reset(void) {
    UART_SendString("Resetting I2C bus...\r\n");
    I2C_stop();
    delay_ms(10);
}

void AHT21B_Init(void) {
    uint8_t initCmd[] = {AHT21B_CMD_INIT, 0x08, 0x00};

    UART_SendString("Sending soft reset...\r\n");
    I2C_Reset();

    // Try to detect sensor
    UART_SendString("Checking for sensor presence...\r\n");
    I2C_start(AHT21B_ADDRESS << 1);
    I2C_write(0x00);
    I2C_stop();
    UART_SendString("Init sequence started\r\n");

    delay_ms(100);

    // Send initialization command
    UART_SendString("Sending init command...\r\n");
    I2C_start(AHT21B_ADDRESS << 1);
    
    for (int i = 0; i < sizeof(initCmd); i++) {
        I2C_write(initCmd[i]);
    }
    
    I2C_stop();
    
    UART_SendString("Init command sent\r\n");
    delay_ms(500);  // Wait for initialization
}

void AHT21B_TriggerMeasurement(void) {
    uint8_t measureCmd[] = {AHT21B_CMD_MEAS, 0x33, 0x00};

    I2C_Reset();

    UART_SendString("Triggering measurement...\r\n");
    I2C_start(AHT21B_ADDRESS << 1);
    
    for (int i = 0; i < sizeof(measureCmd); i++) {
        I2C_write(measureCmd[i]);
    }
    
    I2C_stop();
    
    UART_SendString("Measurement triggered\r\n");
}

void AHT21B_ReadData(void) {
    float temperature = 0;
    float humidity = 0;
    uint8_t data[AHT21B_DATA_LEN];
    char buffer[64];

    while (1) {
        AHT21B_TriggerMeasurement();
        delay_ms(80);  // Wait for measurement to complete

        UART_SendString("Reading sensor data...\r\n");
        I2C_start((AHT21B_ADDRESS << 1) | 1);
        
        for (int i = 0; i < AHT21B_DATA_LEN; i++) {
            data[i] = I2C_read(i < (AHT21B_DATA_LEN - 1));
        }
        
        I2C_stop();
        UART_SendString("Data read complete\r\n");

        if ((data[0] & 0x80) == 0) {
            uint32_t rawHumidity = ((uint32_t)data[1] << 12) | ((uint32_t)data[2] << 4) | (data[3] >> 4);
            humidity = (float)rawHumidity * 100.0f / 1048576.0f;

            uint32_t rawTemp = ((uint32_t)(data[3] & 0x0F) << 16) | ((uint32_t)data[4] << 8) | data[5];
            temperature = (float)rawTemp * 200.0f / 1048576.0f - 50.0f;

            if (temperature >= -40.0f && temperature <= 85.0f && 
                humidity >= 0.0f && humidity <= 100.0f) {
                
                snprintf(buffer, sizeof(buffer), 
                        "Temperature: %.2f C\r\nHumidity: %.2f %%\r\n",
                        temperature, humidity);
                UART_SendString(buffer);
            } else {
                UART_SendString("Invalid readings detected\r\n");
            }
        } else {
            UART_SendString("Sensor busy or invalid data\r\n");
        }

        delay_ms(2000);  // Wait 2 seconds before next reading
    }
}

void delay_ms(uint32_t ms) {
    for (uint32_t i = 0; i < ms; i++) {
        for (uint32_t j = 0; j < 1000; j++) {
            __NOP();
        }
    }
}