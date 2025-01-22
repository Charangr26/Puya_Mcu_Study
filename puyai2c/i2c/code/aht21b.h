#ifndef AHT21B_H
#define AHT21B_H

#include <stdint.h>

// AHT21B sensor I2C address and commands
#define AHT21B_ADDRESS  0x38
#define AHT21B_CMD_INIT  0xBE
#define AHT21B_CMD_MEAS  0xAC
#define AHT21B_DATA_LEN  6

// Function declarations
void AHT21B_Init(void);
void AHT21B_TriggerMeasurement(void);
void AHT21B_ReadData(void);
void delay_ms(uint32_t ms);

#endif // AHT21B_H