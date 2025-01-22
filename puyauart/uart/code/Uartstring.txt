#include "uart.h"
#include <string.h>  // For strlen

void UART_sendString(const char* str) {
    while (*str) {
        UART_write(*str++);
    }
}

int main(void) {
    // Initialize the UART
    UART_init();

    const char* message = "RADINNOLABS\r\n";

    // Main loop
    while (1) {
        // Send the string periodically
        UART_sendString(message);

        // Small delay to avoid flooding the terminal
        for (volatile int i = 0; i < 1000000; ++i);

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

