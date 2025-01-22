
uart.elf:     file format elf32-littlearm


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
 80000e4:	08000234 	.word	0x08000234

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
 8000104:	08000234 	.word	0x08000234

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
 8000164:	08000264 	.word	0x08000264
 8000168:	20000000 	.word	0x20000000
 800016c:	20000000 	.word	0x20000000
 8000170:	2000001c 	.word	0x2000001c
 8000174:	40021000 	.word	0x40021000
 8000178:	1fff0f10 	.word	0x1fff0f10
 800017c:	e000e010 	.word	0xe000e010
 8000180:	20000c00 	.word	0x20000c00

08000184 <main>:
 8000184:	2301      	movs	r3, #1
 8000186:	4a25      	ldr	r2, [pc, #148]	; (800021c <main+0x98>)
 8000188:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800018a:	6b51      	ldr	r1, [r2, #52]	; 0x34
 800018c:	20f0      	movs	r0, #240	; 0xf0
 800018e:	430b      	orrs	r3, r1
 8000190:	6353      	str	r3, [r2, #52]	; 0x34
 8000192:	23a0      	movs	r3, #160	; 0xa0
 8000194:	05db      	lsls	r3, r3, #23
 8000196:	6819      	ldr	r1, [r3, #0]
 8000198:	2420      	movs	r4, #32
 800019a:	4381      	bics	r1, r0
 800019c:	0008      	movs	r0, r1
 800019e:	21a0      	movs	r1, #160	; 0xa0
 80001a0:	4301      	orrs	r1, r0
 80001a2:	2004      	movs	r0, #4
 80001a4:	6019      	str	r1, [r3, #0]
 80001a6:	6859      	ldr	r1, [r3, #4]
 80001a8:	4381      	bics	r1, r0
 80001aa:	6059      	str	r1, [r3, #4]
 80001ac:	68d9      	ldr	r1, [r3, #12]
 80001ae:	30bc      	adds	r0, #188	; 0xbc
 80001b0:	4381      	bics	r1, r0
 80001b2:	0008      	movs	r0, r1
 80001b4:	2140      	movs	r1, #64	; 0x40
 80001b6:	4301      	orrs	r1, r0
 80001b8:	60d9      	str	r1, [r3, #12]
 80001ba:	6a19      	ldr	r1, [r3, #32]
 80001bc:	4818      	ldr	r0, [pc, #96]	; (8000220 <main+0x9c>)
 80001be:	4008      	ands	r0, r1
 80001c0:	2188      	movs	r1, #136	; 0x88
 80001c2:	0149      	lsls	r1, r1, #5
 80001c4:	4301      	orrs	r1, r0
 80001c6:	6219      	str	r1, [r3, #32]
 80001c8:	2380      	movs	r3, #128	; 0x80
 80001ca:	6c11      	ldr	r1, [r2, #64]	; 0x40
 80001cc:	01db      	lsls	r3, r3, #7
 80001ce:	430b      	orrs	r3, r1
 80001d0:	6413      	str	r3, [r2, #64]	; 0x40
 80001d2:	22d0      	movs	r2, #208	; 0xd0
 80001d4:	2080      	movs	r0, #128	; 0x80
 80001d6:	4b13      	ldr	r3, [pc, #76]	; (8000224 <main+0xa0>)
 80001d8:	609a      	str	r2, [r3, #8]
 80001da:	4a13      	ldr	r2, [pc, #76]	; (8000228 <main+0xa4>)
 80001dc:	60da      	str	r2, [r3, #12]
 80001de:	4d13      	ldr	r5, [pc, #76]	; (800022c <main+0xa8>)
 80001e0:	4913      	ldr	r1, [pc, #76]	; (8000230 <main+0xac>)
 80001e2:	780a      	ldrb	r2, [r1, #0]
 80001e4:	2a00      	cmp	r2, #0
 80001e6:	d110      	bne.n	800020a <main+0x86>
 80001e8:	9201      	str	r2, [sp, #4]
 80001ea:	9a01      	ldr	r2, [sp, #4]
 80001ec:	42aa      	cmp	r2, r5
 80001ee:	dd12      	ble.n	8000216 <main+0x92>
 80001f0:	681a      	ldr	r2, [r3, #0]
 80001f2:	4222      	tst	r2, r4
 80001f4:	d0f4      	beq.n	80001e0 <main+0x5c>
 80001f6:	681a      	ldr	r2, [r3, #0]
 80001f8:	4222      	tst	r2, r4
 80001fa:	d0fc      	beq.n	80001f6 <main+0x72>
 80001fc:	685a      	ldr	r2, [r3, #4]
 80001fe:	6819      	ldr	r1, [r3, #0]
 8000200:	4201      	tst	r1, r0
 8000202:	d0fc      	beq.n	80001fe <main+0x7a>
 8000204:	b2d2      	uxtb	r2, r2
 8000206:	605a      	str	r2, [r3, #4]
 8000208:	e7e9      	b.n	80001de <main+0x5a>
 800020a:	3101      	adds	r1, #1
 800020c:	681e      	ldr	r6, [r3, #0]
 800020e:	4206      	tst	r6, r0
 8000210:	d0fc      	beq.n	800020c <main+0x88>
 8000212:	605a      	str	r2, [r3, #4]
 8000214:	e7e5      	b.n	80001e2 <main+0x5e>
 8000216:	9a01      	ldr	r2, [sp, #4]
 8000218:	3201      	adds	r2, #1
 800021a:	e7e5      	b.n	80001e8 <main+0x64>
 800021c:	40021000 	.word	0x40021000
 8000220:	ffff00ff 	.word	0xffff00ff
 8000224:	40013800 	.word	0x40013800
 8000228:	0000200c 	.word	0x0000200c
 800022c:	000f423f 	.word	0x000f423f
 8000230:	0800024c 	.word	0x0800024c

08000234 <_init>:
 8000234:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000236:	46c0      	nop			; (mov r8, r8)
 8000238:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800023a:	bc08      	pop	{r3}
 800023c:	469e      	mov	lr, r3
 800023e:	4770      	bx	lr

08000240 <_fini>:
 8000240:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000242:	46c0      	nop			; (mov r8, r8)
 8000244:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000246:	bc08      	pop	{r3}
 8000248:	469e      	mov	lr, r3
 800024a:	4770      	bx	lr
