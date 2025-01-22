# ===================================================================================
# Project:  PY32F002 Example
# Author:   Stefan Wagner
# Year:     2023
# URL:      https://github.com/wagiminator    
# ===================================================================================
# Type "make help" in the command line.
# ===================================================================================

# Files and Folders
MAINFILE = main.c spi.c uart.c 
TARGET   = spi
INCLUDE  = include
TOOLS    = tools

# Microcontroller Settings
F_CPU    = 24000000
LDSCRIPT = linker/py32f002xx5.ld
CPUARCH  = -mcpu=cortex-m0plus -mthumb

# Toolchain
PREFIX   = arm-none-eabi
CC       = $(PREFIX)-gcc
OBJCOPY  = $(PREFIX)-objcopy
OBJDUMP  = $(PREFIX)-objdump
OBJSIZE  = $(PREFIX)-size
ISPTOOL  = python3 $(TOOLS)/puyaisp.py -f $(TARGET).bin
CLEAN    = rm -f *.lst *.obj *.cof *.list *.map *.eep.hex *.o *.d

# Compiler Flags
CFLAGS   = -g -Os -flto -Wall $(CPUARCH) -DF_CPU=$(F_CPU) -I$(INCLUDE) -I.
CFLAGS  += -fdata-sections -ffunction-sections -fno-builtin -fno-common
LDFLAGS  = -T$(LDSCRIPT) -Wl,--gc-sections --specs=nano.specs --specs=nosys.specs
LDFLAGS += -static -lc -lm

# Source and Object Files
SRCS = $(MAINFILE) $(wildcard $(INCLUDE)/*.c) $(wildcard $(INCLUDE)/*.S)
OBJS = $(SRCS:.c=.o)

# Symbolic Targets
help:
	@echo "Use the following commands:"
	@echo "make all       compile and build $(TARGET).elf/.bin/.hex/.asm"
	@echo "make hex       compile and build $(TARGET).hex"
	@echo "make asm       compile and disassemble to $(TARGET).asm"
	@echo "make bin       compile and build $(TARGET).bin"
	@echo "make flash     compile and upload to MCU"
	@echo "make clean     remove all build files"

all: $(TARGET).elf $(TARGET).bin $(TARGET).hex $(TARGET).asm size

$(TARGET).elf: $(OBJS)
	@echo "Building $(TARGET).elf ..."
	@$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(TARGET).lst: $(TARGET).elf
	@echo "Building $(TARGET).lst ..."
	@$(OBJDUMP) -S $^ > $@

$(TARGET).map: $(TARGET).elf
	@echo "Building $(TARGET).map ..."
	@$(OBJDUMP) -t $^ > $@

$(TARGET).bin: $(TARGET).elf
	@echo "Building $(TARGET).bin ..."
	@$(OBJCOPY) -O binary $< $@

$(TARGET).hex: $(TARGET).elf
	@echo "Building $(TARGET).hex ..."
	@$(OBJCOPY) -O ihex $< $@

$(TARGET).asm: $(TARGET).elf
	@echo "Disassembling to $(TARGET).asm ..."
	@$(OBJDUMP) -d $< > $@

flash: $(TARGET).bin
	@echo "Uploading to MCU ..."
	@$(ISPTOOL)

clean:
	@echo "Cleaning all up ..."
	@$(CLEAN)
	@rm -f $(TARGET).elf $(TARGET).bin $(TARGET).hex $(TARGET).asm $(TARGET).lst $(TARGET).map

size:
	@echo "------------------"
	@echo "FLASH: $(shell $(OBJSIZE) -d $(TARGET).elf | awk '/[0-9]/ {print $$1 + $$2}') bytes"
	@echo "SRAM:  $(shell $(OBJSIZE) -d $(TARGET).elf | awk '/[0-9]/ {print $$2 + $$3}') bytes"
	@echo "------------------"

# Rule to build object files
%.o: %.c
	@echo "Compiling $< ..."
	@$(CC) $(CFLAGS) -c $< -o $@

%.o: %.S
	@echo "Assembling $< ..."
	@$(CC) $(CFLAGS) -c $< -o $@

# Phony targets
.PHONY: help all clean flash size
