#include "system.h"

extern int main(void);

void Reset_Handler(void);
void Default_Handler(void);

__attribute__((section(".isr_vector"))) void (* const vector_table[])(void) = {
    (void (*)(void))((uint32_t)RAM_END),  // Initial stack pointer
    Reset_Handler,                        // Reset Handler
    Default_Handler,                      // NMI Handler
    Default_Handler,                      // Hard Fault Handler
    // Other handlers
};

void Reset_Handler(void) {
    // Initialize data and bss sections
    extern uint32_t _sdata, _edata, _sbss, _ebss;
    uint32_t *pSrc, *pDst;

    pSrc = &_etext;
    for (pDst = &_sdata; pDst < &_edata; ) {
        *pDst++ = *pSrc++;
    }

    for (pDst = &_sbss; pDst < &_ebss; ) {
        *pDst++ = 0;
    }

    main();
    while (1);
}

void Default_Handler(void) {
    while (1);
}
