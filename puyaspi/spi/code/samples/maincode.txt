#include "spi.h"
#include "uart.h"
#include <string.h>

// Define the W25Q128 commands
#define W25Q128_CMD_WRITE_ENABLE  0x06
#define W25Q128_CMD_WRITE_DATA    0x02
#define W25Q128_CMD_READ_DATA     0x03
#define W25Q128_WRITE_ADDR        0x0000

// Function prototypes
void UART_sendString(const char* str);
void UART_sendHex(uint8_t value);
void W25Q128_WriteData(uint32_t address, const uint8_t* data, uint16_t length);
void W25Q128_ReadData(uint32_t address, uint8_t* buffer, uint16_t length);

// Function to send a string via UART
void UART_sendString(const char* str) {
    while (*str) {
        UART_write(*str++);
    }
}

// Function to send a byte as hex via UART
void UART_sendHex(uint8_t value) {
    const char hexDigits[] = "0123456789ABCDEF";
    UART_write(hexDigits[(value >> 4) & 0x0F]);  // Send high nibble
    UART_write(hexDigits[value & 0x0F]);         // Send low nibble
}

// Function to write data to the W25Q128
void W25Q128_WriteData(uint32_t address, const uint8_t* data, uint16_t length) {
    SPI_enable();

    // Enable write operations on W25Q128
    SPI_write(W25Q128_CMD_WRITE_ENABLE);

    // Send Write Data command with the address
    SPI_write(W25Q128_CMD_WRITE_DATA);
    SPI_write((address >> 16) & 0xFF);
    SPI_write((address >> 8) & 0xFF);
    SPI_write(address & 0xFF);

    // Write the data
    for (uint16_t i = 0; i < length; i++) {
        SPI_write(data[i]);
    }

    SPI_disable();
}

// Function to read data from the W25Q128
void W25Q128_ReadData(uint32_t address, uint8_t* buffer, uint16_t length) {
    SPI_enable();

    // Send Read Data command with the address
    SPI_write(W25Q128_CMD_READ_DATA);
    SPI_write((address >> 16) & 0xFF);
    SPI_write((address >> 8) & 0xFF);
    SPI_write(address & 0xFF);

    // Read the data by sending dummy bytes
    for (uint16_t i = 0; i < length; i++) {
        SPI_write(0xFF);  // Send dummy byte to generate clock and receive data
        
        // Wait for SPI to be ready
        while (SPI_busy());
        
        // Read the received data
        buffer[i] = SPI_read();

        // Debug print to verify the data being read
        UART_sendString("Read byte: ");
        UART_sendHex(buffer[i]);  // Print each byte in hexadecimal
        UART_sendString("\r\n");
    }

    SPI_disable();
}

int main(void) {
    // Initialize SPI and UART
    SPI_init();
    UART_init();

    const char* writeMessage = "Hello, W25Q128!";
    uint8_t readBuffer[20];  // Buffer to hold the read data

    // Write the message to the W25Q128
    W25Q128_WriteData(W25Q128_WRITE_ADDR, (const uint8_t*)writeMessage, strlen(writeMessage));

    // Small delay to ensure the data is written
    for (volatile int i = 0; i < 1000000; ++i);

    // Read the data back from the W25Q128
    W25Q128_ReadData(W25Q128_WRITE_ADDR, readBuffer, strlen(writeMessage));

    // Null-terminate the read buffer to make it a valid string
    readBuffer[strlen(writeMessage)] = '\0';

    // Print the read data via UART
    UART_sendString("Read Data from W25Q128:\r\n");
    UART_sendString((const char*)readBuffer);
    UART_sendString("\r\n");

    // Main loop
    while (1) {
        // Check if data is available to read
        if (UART_available()) {
            // Read a character from UART
            char receivedChar = UART_read();

            // Echo the received character back via UART
            UART_write(receivedChar);
        }
    }

    return 0;
}
