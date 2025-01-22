
example.elf:     file format elf32-littlearm


Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000000 	.word	0x20000000
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080001e8 	.word	0x080001e8

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000004 	.word	0x20000004
 8000104:	080001e8 	.word	0x080001e8

08000108 <ADC_COMP_IRQHandler>:
 8000108:	e7fe      	b.n	8000108 <ADC_COMP_IRQHandler>

0800010a <Reset_Handler>:
 800010a:	481d      	ldr	r0, [pc, #116]	; (8000180 <Reset_Handler+0x76>)
 800010c:	4685      	mov	sp, r0
 800010e:	4a12      	ldr	r2, [pc, #72]	; (8000158 <Reset_Handler+0x4e>)
 8000110:	4b12      	ldr	r3, [pc, #72]	; (800015c <Reset_Handler+0x52>)
 8000112:	4913      	ldr	r1, [pc, #76]	; (8000160 <Reset_Handler+0x56>)
 8000114:	609a      	str	r2, [r3, #8]
 8000116:	4a13      	ldr	r2, [pc, #76]	; (8000164 <Reset_Handler+0x5a>)
 8000118:	4b13      	ldr	r3, [pc, #76]	; (8000168 <Reset_Handler+0x5e>)
 800011a:	428b      	cmp	r3, r1
 800011c:	d316      	bcc.n	800014c <Reset_Handler+0x42>
 800011e:	2100      	movs	r1, #0
 8000120:	4b12      	ldr	r3, [pc, #72]	; (800016c <Reset_Handler+0x62>)
 8000122:	4a13      	ldr	r2, [pc, #76]	; (8000170 <Reset_Handler+0x66>)
 8000124:	4293      	cmp	r3, r2
 8000126:	d314      	bcc.n	8000152 <Reset_Handler+0x48>
 8000128:	4a12      	ldr	r2, [pc, #72]	; (8000174 <Reset_Handler+0x6a>)
 800012a:	4913      	ldr	r1, [pc, #76]	; (8000178 <Reset_Handler+0x6e>)
 800012c:	6853      	ldr	r3, [r2, #4]
 800012e:	6809      	ldr	r1, [r1, #0]
 8000130:	0c1b      	lsrs	r3, r3, #16
 8000132:	041b      	lsls	r3, r3, #16
 8000134:	430b      	orrs	r3, r1
 8000136:	2180      	movs	r1, #128	; 0x80
 8000138:	0209      	lsls	r1, r1, #8
 800013a:	430b      	orrs	r3, r1
 800013c:	2105      	movs	r1, #5
 800013e:	6053      	str	r3, [r2, #4]
 8000140:	4b0e      	ldr	r3, [pc, #56]	; (800017c <Reset_Handler+0x72>)
 8000142:	6019      	str	r1, [r3, #0]
 8000144:	2323      	movs	r3, #35	; 0x23
 8000146:	6353      	str	r3, [r2, #52]	; 0x34
 8000148:	f000 f81c 	bl	8000184 <main>
 800014c:	ca01      	ldmia	r2!, {r0}
 800014e:	c301      	stmia	r3!, {r0}
 8000150:	e7e3      	b.n	800011a <Reset_Handler+0x10>
 8000152:	c302      	stmia	r3!, {r1}
 8000154:	e7e6      	b.n	8000124 <Reset_Handler+0x1a>
 8000156:	46c0      	nop			; (mov r8, r8)
 8000158:	08000000 	.word	0x08000000
 800015c:	e000ed00 	.word	0xe000ed00
 8000160:	20000000 	.word	0x20000000
 8000164:	08000208 	.word	0x08000208
 8000168:	20000000 	.word	0x20000000
 800016c:	20000000 	.word	0x20000000
 8000170:	2000001c 	.word	0x2000001c
 8000174:	40021000 	.word	0x40021000
 8000178:	1fff0f10 	.word	0x1fff0f10
 800017c:	e000e010 	.word	0xe000e010
 8000180:	20000c00 	.word	0x20000c00

08000184 <main>:
 8000184:	23a0      	movs	r3, #160	; 0xa0
 8000186:	2180      	movs	r1, #128	; 0x80
 8000188:	05db      	lsls	r3, r3, #23
 800018a:	6818      	ldr	r0, [r3, #0]
 800018c:	b530      	push	{r4, r5, lr}
 800018e:	4c12      	ldr	r4, [pc, #72]	; (80001d8 <main+0x54>)
 8000190:	03c9      	lsls	r1, r1, #15
 8000192:	4020      	ands	r0, r4
 8000194:	4301      	orrs	r1, r0
 8000196:	6019      	str	r1, [r3, #0]
 8000198:	68da      	ldr	r2, [r3, #12]
 800019a:	4910      	ldr	r1, [pc, #64]	; (80001dc <main+0x58>)
 800019c:	4022      	ands	r2, r4
 800019e:	2480      	movs	r4, #128	; 0x80
 80001a0:	60da      	str	r2, [r3, #12]
 80001a2:	685a      	ldr	r2, [r3, #4]
 80001a4:	0264      	lsls	r4, r4, #9
 80001a6:	400a      	ands	r2, r1
 80001a8:	605a      	str	r2, [r3, #4]
 80001aa:	4a0d      	ldr	r2, [pc, #52]	; (80001e0 <main+0x5c>)
 80001ac:	23f6      	movs	r3, #246	; 0xf6
 80001ae:	2000      	movs	r0, #0
 80001b0:	490c      	ldr	r1, [pc, #48]	; (80001e4 <main+0x60>)
 80001b2:	33ff      	adds	r3, #255	; 0xff
 80001b4:	3b01      	subs	r3, #1
 80001b6:	2b00      	cmp	r3, #0
 80001b8:	d107      	bne.n	80001ca <main+0x46>
 80001ba:	21a0      	movs	r1, #160	; 0xa0
 80001bc:	2380      	movs	r3, #128	; 0x80
 80001be:	05c9      	lsls	r1, r1, #23
 80001c0:	6948      	ldr	r0, [r1, #20]
 80001c2:	011b      	lsls	r3, r3, #4
 80001c4:	4043      	eors	r3, r0
 80001c6:	614b      	str	r3, [r1, #20]
 80001c8:	e7f0      	b.n	80001ac <main+0x28>
 80001ca:	6051      	str	r1, [r2, #4]
 80001cc:	6090      	str	r0, [r2, #8]
 80001ce:	6815      	ldr	r5, [r2, #0]
 80001d0:	4225      	tst	r5, r4
 80001d2:	d0fc      	beq.n	80001ce <main+0x4a>
 80001d4:	e7ee      	b.n	80001b4 <main+0x30>
 80001d6:	46c0      	nop			; (mov r8, r8)
 80001d8:	ff3fffff 	.word	0xff3fffff
 80001dc:	fffff7ff 	.word	0xfffff7ff
 80001e0:	e000e010 	.word	0xe000e010
 80001e4:	00005dbf 	.word	0x00005dbf

080001e8 <_init>:
 80001e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80001ea:	46c0      	nop			; (mov r8, r8)
 80001ec:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80001ee:	bc08      	pop	{r3}
 80001f0:	469e      	mov	lr, r3
 80001f2:	4770      	bx	lr

080001f4 <_fini>:
 80001f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80001f6:	46c0      	nop			; (mov r8, r8)
 80001f8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80001fa:	bc08      	pop	{r3}
 80001fc:	469e      	mov	lr, r3
 80001fe:	4770      	bx	lr
