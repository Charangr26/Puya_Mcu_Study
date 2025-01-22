
spi.elf:     file format elf32-littlearm


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
 80000e4:	08000408 	.word	0x08000408

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
 8000104:	08000408 	.word	0x08000408

08000108 <strlen>:
 8000108:	2300      	movs	r3, #0
 800010a:	5cc2      	ldrb	r2, [r0, r3]
 800010c:	3301      	adds	r3, #1
 800010e:	2a00      	cmp	r2, #0
 8000110:	d1fb      	bne.n	800010a <strlen+0x2>
 8000112:	1e58      	subs	r0, r3, #1
 8000114:	4770      	bx	lr
	...

08000118 <SPI_write>:
 8000118:	2202      	movs	r2, #2
 800011a:	4b05      	ldr	r3, [pc, #20]	; (8000130 <SPI_write+0x18>)
 800011c:	6899      	ldr	r1, [r3, #8]
 800011e:	4211      	tst	r1, r2
 8000120:	d0fc      	beq.n	800011c <SPI_write+0x4>
 8000122:	2201      	movs	r2, #1
 8000124:	60d8      	str	r0, [r3, #12]
 8000126:	6899      	ldr	r1, [r3, #8]
 8000128:	4211      	tst	r1, r2
 800012a:	d0fc      	beq.n	8000126 <SPI_write+0xe>
 800012c:	68db      	ldr	r3, [r3, #12]
 800012e:	4770      	bx	lr
 8000130:	40013000 	.word	0x40013000

08000134 <UART_write>:
 8000134:	2280      	movs	r2, #128	; 0x80
 8000136:	4b03      	ldr	r3, [pc, #12]	; (8000144 <UART_write+0x10>)
 8000138:	6819      	ldr	r1, [r3, #0]
 800013a:	4211      	tst	r1, r2
 800013c:	d0fc      	beq.n	8000138 <UART_write+0x4>
 800013e:	6058      	str	r0, [r3, #4]
 8000140:	4770      	bx	lr
 8000142:	46c0      	nop			; (mov r8, r8)
 8000144:	40013800 	.word	0x40013800

08000148 <UART_sendString>:
 8000148:	b510      	push	{r4, lr}
 800014a:	0004      	movs	r4, r0
 800014c:	7820      	ldrb	r0, [r4, #0]
 800014e:	2800      	cmp	r0, #0
 8000150:	d100      	bne.n	8000154 <UART_sendString+0xc>
 8000152:	bd10      	pop	{r4, pc}
 8000154:	3401      	adds	r4, #1
 8000156:	f7ff ffed 	bl	8000134 <UART_write>
 800015a:	e7f7      	b.n	800014c <UART_sendString+0x4>

0800015c <ADC_COMP_IRQHandler>:
 800015c:	e7fe      	b.n	800015c <ADC_COMP_IRQHandler>

0800015e <Reset_Handler>:
 800015e:	481d      	ldr	r0, [pc, #116]	; (80001d4 <Reset_Handler+0x76>)
 8000160:	4685      	mov	sp, r0
 8000162:	4a12      	ldr	r2, [pc, #72]	; (80001ac <Reset_Handler+0x4e>)
 8000164:	4b12      	ldr	r3, [pc, #72]	; (80001b0 <Reset_Handler+0x52>)
 8000166:	4913      	ldr	r1, [pc, #76]	; (80001b4 <Reset_Handler+0x56>)
 8000168:	609a      	str	r2, [r3, #8]
 800016a:	4a13      	ldr	r2, [pc, #76]	; (80001b8 <Reset_Handler+0x5a>)
 800016c:	4b13      	ldr	r3, [pc, #76]	; (80001bc <Reset_Handler+0x5e>)
 800016e:	428b      	cmp	r3, r1
 8000170:	d316      	bcc.n	80001a0 <Reset_Handler+0x42>
 8000172:	2100      	movs	r1, #0
 8000174:	4b12      	ldr	r3, [pc, #72]	; (80001c0 <Reset_Handler+0x62>)
 8000176:	4a13      	ldr	r2, [pc, #76]	; (80001c4 <Reset_Handler+0x66>)
 8000178:	4293      	cmp	r3, r2
 800017a:	d314      	bcc.n	80001a6 <Reset_Handler+0x48>
 800017c:	4a12      	ldr	r2, [pc, #72]	; (80001c8 <Reset_Handler+0x6a>)
 800017e:	4913      	ldr	r1, [pc, #76]	; (80001cc <Reset_Handler+0x6e>)
 8000180:	6853      	ldr	r3, [r2, #4]
 8000182:	6809      	ldr	r1, [r1, #0]
 8000184:	0c1b      	lsrs	r3, r3, #16
 8000186:	041b      	lsls	r3, r3, #16
 8000188:	430b      	orrs	r3, r1
 800018a:	2180      	movs	r1, #128	; 0x80
 800018c:	0209      	lsls	r1, r1, #8
 800018e:	430b      	orrs	r3, r1
 8000190:	2105      	movs	r1, #5
 8000192:	6053      	str	r3, [r2, #4]
 8000194:	4b0e      	ldr	r3, [pc, #56]	; (80001d0 <Reset_Handler+0x72>)
 8000196:	6019      	str	r1, [r3, #0]
 8000198:	2323      	movs	r3, #35	; 0x23
 800019a:	6353      	str	r3, [r2, #52]	; 0x34
 800019c:	f000 f81c 	bl	80001d8 <main>
 80001a0:	ca01      	ldmia	r2!, {r0}
 80001a2:	c301      	stmia	r3!, {r0}
 80001a4:	e7e3      	b.n	800016e <Reset_Handler+0x10>
 80001a6:	c302      	stmia	r3!, {r1}
 80001a8:	e7e6      	b.n	8000178 <Reset_Handler+0x1a>
 80001aa:	46c0      	nop			; (mov r8, r8)
 80001ac:	08000000 	.word	0x08000000
 80001b0:	e000ed00 	.word	0xe000ed00
 80001b4:	20000000 	.word	0x20000000
 80001b8:	08000470 	.word	0x08000470
 80001bc:	20000000 	.word	0x20000000
 80001c0:	20000000 	.word	0x20000000
 80001c4:	2000001c 	.word	0x2000001c
 80001c8:	40021000 	.word	0x40021000
 80001cc:	1fff0f10 	.word	0x1fff0f10
 80001d0:	e000e010 	.word	0xe000e010
 80001d4:	20000c00 	.word	0x20000c00

080001d8 <main>:
 80001d8:	2101      	movs	r1, #1
 80001da:	4a78      	ldr	r2, [pc, #480]	; (80003bc <main+0x1e4>)
 80001dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80001de:	6b53      	ldr	r3, [r2, #52]	; 0x34
 80001e0:	4c77      	ldr	r4, [pc, #476]	; (80003c0 <main+0x1e8>)
 80001e2:	430b      	orrs	r3, r1
 80001e4:	6353      	str	r3, [r2, #52]	; 0x34
 80001e6:	23a0      	movs	r3, #160	; 0xa0
 80001e8:	05db      	lsls	r3, r3, #23
 80001ea:	6818      	ldr	r0, [r3, #0]
 80001ec:	2580      	movs	r5, #128	; 0x80
 80001ee:	4004      	ands	r4, r0
 80001f0:	4874      	ldr	r0, [pc, #464]	; (80003c4 <main+0x1ec>)
 80001f2:	016d      	lsls	r5, r5, #5
 80001f4:	4320      	orrs	r0, r4
 80001f6:	2482      	movs	r4, #130	; 0x82
 80001f8:	6018      	str	r0, [r3, #0]
 80001fa:	6858      	ldr	r0, [r3, #4]
 80001fc:	2702      	movs	r7, #2
 80001fe:	43a0      	bics	r0, r4
 8000200:	6058      	str	r0, [r3, #4]
 8000202:	68d8      	ldr	r0, [r3, #12]
 8000204:	3c7f      	subs	r4, #127	; 0x7f
 8000206:	43a0      	bics	r0, r4
 8000208:	4308      	orrs	r0, r1
 800020a:	60d8      	str	r0, [r3, #12]
 800020c:	6a18      	ldr	r0, [r3, #32]
 800020e:	4c6e      	ldr	r4, [pc, #440]	; (80003c8 <main+0x1f0>)
 8000210:	4e6e      	ldr	r6, [pc, #440]	; (80003cc <main+0x1f4>)
 8000212:	4004      	ands	r4, r0
 8000214:	200a      	movs	r0, #10
 8000216:	4320      	orrs	r0, r4
 8000218:	6218      	str	r0, [r3, #32]
 800021a:	6c10      	ldr	r0, [r2, #64]	; 0x40
 800021c:	4c6c      	ldr	r4, [pc, #432]	; (80003d0 <main+0x1f8>)
 800021e:	4328      	orrs	r0, r5
 8000220:	6410      	str	r0, [r2, #64]	; 0x40
 8000222:	20db      	movs	r0, #219	; 0xdb
 8000224:	0080      	lsls	r0, r0, #2
 8000226:	6020      	str	r0, [r4, #0]
 8000228:	6065      	str	r5, [r4, #4]
 800022a:	6820      	ldr	r0, [r4, #0]
 800022c:	2540      	movs	r5, #64	; 0x40
 800022e:	43b8      	bics	r0, r7
 8000230:	6020      	str	r0, [r4, #0]
 8000232:	6820      	ldr	r0, [r4, #0]
 8000234:	b08f      	sub	sp, #60	; 0x3c
 8000236:	4388      	bics	r0, r1
 8000238:	6020      	str	r0, [r4, #0]
 800023a:	6b50      	ldr	r0, [r2, #52]	; 0x34
 800023c:	4301      	orrs	r1, r0
 800023e:	20f0      	movs	r0, #240	; 0xf0
 8000240:	6351      	str	r1, [r2, #52]	; 0x34
 8000242:	6819      	ldr	r1, [r3, #0]
 8000244:	4381      	bics	r1, r0
 8000246:	0008      	movs	r0, r1
 8000248:	21a0      	movs	r1, #160	; 0xa0
 800024a:	4301      	orrs	r1, r0
 800024c:	2004      	movs	r0, #4
 800024e:	6019      	str	r1, [r3, #0]
 8000250:	6859      	ldr	r1, [r3, #4]
 8000252:	4381      	bics	r1, r0
 8000254:	6059      	str	r1, [r3, #4]
 8000256:	68d9      	ldr	r1, [r3, #12]
 8000258:	30bc      	adds	r0, #188	; 0xbc
 800025a:	4381      	bics	r1, r0
 800025c:	4329      	orrs	r1, r5
 800025e:	60d9      	str	r1, [r3, #12]
 8000260:	6a19      	ldr	r1, [r3, #32]
 8000262:	485c      	ldr	r0, [pc, #368]	; (80003d4 <main+0x1fc>)
 8000264:	4008      	ands	r0, r1
 8000266:	2188      	movs	r1, #136	; 0x88
 8000268:	0149      	lsls	r1, r1, #5
 800026a:	4301      	orrs	r1, r0
 800026c:	6219      	str	r1, [r3, #32]
 800026e:	2380      	movs	r3, #128	; 0x80
 8000270:	6c11      	ldr	r1, [r2, #64]	; 0x40
 8000272:	01db      	lsls	r3, r3, #7
 8000274:	430b      	orrs	r3, r1
 8000276:	6413      	str	r3, [r2, #64]	; 0x40
 8000278:	23d0      	movs	r3, #208	; 0xd0
 800027a:	60b3      	str	r3, [r6, #8]
 800027c:	4b56      	ldr	r3, [pc, #344]	; (80003d8 <main+0x200>)
 800027e:	60f3      	str	r3, [r6, #12]
 8000280:	4856      	ldr	r0, [pc, #344]	; (80003dc <main+0x204>)
 8000282:	f7ff ff41 	bl	8000108 <strlen>
 8000286:	b283      	uxth	r3, r0
 8000288:	9300      	str	r3, [sp, #0]
 800028a:	6823      	ldr	r3, [r4, #0]
 800028c:	2006      	movs	r0, #6
 800028e:	431d      	orrs	r5, r3
 8000290:	6025      	str	r5, [r4, #0]
 8000292:	f7ff ff41 	bl	8000118 <SPI_write>
 8000296:	0038      	movs	r0, r7
 8000298:	f7ff ff3e 	bl	8000118 <SPI_write>
 800029c:	2000      	movs	r0, #0
 800029e:	f7ff ff3b 	bl	8000118 <SPI_write>
 80002a2:	2000      	movs	r0, #0
 80002a4:	f7ff ff38 	bl	8000118 <SPI_write>
 80002a8:	2000      	movs	r0, #0
 80002aa:	f7ff ff35 	bl	8000118 <SPI_write>
 80002ae:	2500      	movs	r5, #0
 80002b0:	9a00      	ldr	r2, [sp, #0]
 80002b2:	b2ab      	uxth	r3, r5
 80002b4:	429a      	cmp	r2, r3
 80002b6:	d842      	bhi.n	800033e <main+0x166>
 80002b8:	2240      	movs	r2, #64	; 0x40
 80002ba:	6823      	ldr	r3, [r4, #0]
 80002bc:	4393      	bics	r3, r2
 80002be:	6023      	str	r3, [r4, #0]
 80002c0:	2300      	movs	r3, #0
 80002c2:	4a47      	ldr	r2, [pc, #284]	; (80003e0 <main+0x208>)
 80002c4:	9303      	str	r3, [sp, #12]
 80002c6:	9b03      	ldr	r3, [sp, #12]
 80002c8:	4293      	cmp	r3, r2
 80002ca:	dd3e      	ble.n	800034a <main+0x172>
 80002cc:	4843      	ldr	r0, [pc, #268]	; (80003dc <main+0x204>)
 80002ce:	f7ff ff1b 	bl	8000108 <strlen>
 80002d2:	b283      	uxth	r3, r0
 80002d4:	9301      	str	r3, [sp, #4]
 80002d6:	2340      	movs	r3, #64	; 0x40
 80002d8:	6822      	ldr	r2, [r4, #0]
 80002da:	2003      	movs	r0, #3
 80002dc:	4313      	orrs	r3, r2
 80002de:	6023      	str	r3, [r4, #0]
 80002e0:	f7ff ff1a 	bl	8000118 <SPI_write>
 80002e4:	2000      	movs	r0, #0
 80002e6:	f7ff ff17 	bl	8000118 <SPI_write>
 80002ea:	2000      	movs	r0, #0
 80002ec:	f7ff ff14 	bl	8000118 <SPI_write>
 80002f0:	2000      	movs	r0, #0
 80002f2:	f7ff ff11 	bl	8000118 <SPI_write>
 80002f6:	2700      	movs	r7, #0
 80002f8:	ad09      	add	r5, sp, #36	; 0x24
 80002fa:	9b01      	ldr	r3, [sp, #4]
 80002fc:	42bb      	cmp	r3, r7
 80002fe:	d128      	bne.n	8000352 <main+0x17a>
 8000300:	2240      	movs	r2, #64	; 0x40
 8000302:	6823      	ldr	r3, [r4, #0]
 8000304:	4835      	ldr	r0, [pc, #212]	; (80003dc <main+0x204>)
 8000306:	4393      	bics	r3, r2
 8000308:	6023      	str	r3, [r4, #0]
 800030a:	f7ff fefd 	bl	8000108 <strlen>
 800030e:	2300      	movs	r3, #0
 8000310:	ac09      	add	r4, sp, #36	; 0x24
 8000312:	5423      	strb	r3, [r4, r0]
 8000314:	4833      	ldr	r0, [pc, #204]	; (80003e4 <main+0x20c>)
 8000316:	f7ff ff17 	bl	8000148 <UART_sendString>
 800031a:	0020      	movs	r0, r4
 800031c:	f7ff ff14 	bl	8000148 <UART_sendString>
 8000320:	4831      	ldr	r0, [pc, #196]	; (80003e8 <main+0x210>)
 8000322:	f7ff ff11 	bl	8000148 <UART_sendString>
 8000326:	2420      	movs	r4, #32
 8000328:	6833      	ldr	r3, [r6, #0]
 800032a:	4223      	tst	r3, r4
 800032c:	d0fc      	beq.n	8000328 <main+0x150>
 800032e:	6833      	ldr	r3, [r6, #0]
 8000330:	4223      	tst	r3, r4
 8000332:	d0fc      	beq.n	800032e <main+0x156>
 8000334:	6870      	ldr	r0, [r6, #4]
 8000336:	b2c0      	uxtb	r0, r0
 8000338:	f7ff fefc 	bl	8000134 <UART_write>
 800033c:	e7f4      	b.n	8000328 <main+0x150>
 800033e:	4b27      	ldr	r3, [pc, #156]	; (80003dc <main+0x204>)
 8000340:	5d58      	ldrb	r0, [r3, r5]
 8000342:	f7ff fee9 	bl	8000118 <SPI_write>
 8000346:	3501      	adds	r5, #1
 8000348:	e7b2      	b.n	80002b0 <main+0xd8>
 800034a:	9b03      	ldr	r3, [sp, #12]
 800034c:	3301      	adds	r3, #1
 800034e:	9303      	str	r3, [sp, #12]
 8000350:	e7b9      	b.n	80002c6 <main+0xee>
 8000352:	20ff      	movs	r0, #255	; 0xff
 8000354:	f7ff fee0 	bl	8000118 <SPI_write>
 8000358:	2280      	movs	r2, #128	; 0x80
 800035a:	68a3      	ldr	r3, [r4, #8]
 800035c:	4213      	tst	r3, r2
 800035e:	d1fb      	bne.n	8000358 <main+0x180>
 8000360:	2202      	movs	r2, #2
 8000362:	68a3      	ldr	r3, [r4, #8]
 8000364:	4213      	tst	r3, r2
 8000366:	d0fb      	beq.n	8000360 <main+0x188>
 8000368:	23ff      	movs	r3, #255	; 0xff
 800036a:	60e3      	str	r3, [r4, #12]
 800036c:	3bfe      	subs	r3, #254	; 0xfe
 800036e:	68a2      	ldr	r2, [r4, #8]
 8000370:	421a      	tst	r2, r3
 8000372:	d0fc      	beq.n	800036e <main+0x196>
 8000374:	68e3      	ldr	r3, [r4, #12]
 8000376:	481d      	ldr	r0, [pc, #116]	; (80003ec <main+0x214>)
 8000378:	702b      	strb	r3, [r5, #0]
 800037a:	f7ff fee5 	bl	8000148 <UART_sendString>
 800037e:	782b      	ldrb	r3, [r5, #0]
 8000380:	2211      	movs	r2, #17
 8000382:	491b      	ldr	r1, [pc, #108]	; (80003f0 <main+0x218>)
 8000384:	a804      	add	r0, sp, #16
 8000386:	9300      	str	r3, [sp, #0]
 8000388:	f000 f834 	bl	80003f4 <memcpy>
 800038c:	2208      	movs	r2, #8
 800038e:	9b00      	ldr	r3, [sp, #0]
 8000390:	a902      	add	r1, sp, #8
 8000392:	1889      	adds	r1, r1, r2
 8000394:	091b      	lsrs	r3, r3, #4
 8000396:	5cc8      	ldrb	r0, [r1, r3]
 8000398:	f7ff fecc 	bl	8000134 <UART_write>
 800039c:	230f      	movs	r3, #15
 800039e:	2208      	movs	r2, #8
 80003a0:	9900      	ldr	r1, [sp, #0]
 80003a2:	3701      	adds	r7, #1
 80003a4:	400b      	ands	r3, r1
 80003a6:	a902      	add	r1, sp, #8
 80003a8:	188a      	adds	r2, r1, r2
 80003aa:	5cd0      	ldrb	r0, [r2, r3]
 80003ac:	f7ff fec2 	bl	8000134 <UART_write>
 80003b0:	480d      	ldr	r0, [pc, #52]	; (80003e8 <main+0x210>)
 80003b2:	f7ff fec9 	bl	8000148 <UART_sendString>
 80003b6:	b2bf      	uxth	r7, r7
 80003b8:	3501      	adds	r5, #1
 80003ba:	e79e      	b.n	80002fa <main+0x122>
 80003bc:	40021000 	.word	0x40021000
 80003c0:	ffff3ff0 	.word	0xffff3ff0
 80003c4:	0000800a 	.word	0x0000800a
 80003c8:	0fffff00 	.word	0x0fffff00
 80003cc:	40013800 	.word	0x40013800
 80003d0:	40013000 	.word	0x40013000
 80003d4:	ffff00ff 	.word	0xffff00ff
 80003d8:	0000200c 	.word	0x0000200c
 80003dc:	08000420 	.word	0x08000420
 80003e0:	000f423f 	.word	0x000f423f
 80003e4:	0800043c 	.word	0x0800043c
 80003e8:	08000453 	.word	0x08000453
 80003ec:	08000430 	.word	0x08000430
 80003f0:	08000456 	.word	0x08000456

080003f4 <memcpy>:
 80003f4:	2300      	movs	r3, #0
 80003f6:	b510      	push	{r4, lr}
 80003f8:	429a      	cmp	r2, r3
 80003fa:	d100      	bne.n	80003fe <memcpy+0xa>
 80003fc:	bd10      	pop	{r4, pc}
 80003fe:	5ccc      	ldrb	r4, [r1, r3]
 8000400:	54c4      	strb	r4, [r0, r3]
 8000402:	3301      	adds	r3, #1
 8000404:	e7f8      	b.n	80003f8 <memcpy+0x4>
	...

08000408 <_init>:
 8000408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800040a:	46c0      	nop			; (mov r8, r8)
 800040c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800040e:	bc08      	pop	{r3}
 8000410:	469e      	mov	lr, r3
 8000412:	4770      	bx	lr

08000414 <_fini>:
 8000414:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000416:	46c0      	nop			; (mov r8, r8)
 8000418:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800041a:	bc08      	pop	{r3}
 800041c:	469e      	mov	lr, r3
 800041e:	4770      	bx	lr
