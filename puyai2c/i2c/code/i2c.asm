
i2c.elf:     file format elf32-littlearm


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
 80000dc:	20000064 	.word	0x20000064
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08002678 	.word	0x08002678

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
 8000100:	20000068 	.word	0x20000068
 8000104:	08002678 	.word	0x08002678

08000108 <__gnu_thumb1_case_shi>:
 8000108:	b403      	push	{r0, r1}
 800010a:	4671      	mov	r1, lr
 800010c:	0849      	lsrs	r1, r1, #1
 800010e:	0040      	lsls	r0, r0, #1
 8000110:	0049      	lsls	r1, r1, #1
 8000112:	5e09      	ldrsh	r1, [r1, r0]
 8000114:	0049      	lsls	r1, r1, #1
 8000116:	448e      	add	lr, r1
 8000118:	bc03      	pop	{r0, r1}
 800011a:	4770      	bx	lr

0800011c <__udivsi3>:
 800011c:	2200      	movs	r2, #0
 800011e:	0843      	lsrs	r3, r0, #1
 8000120:	428b      	cmp	r3, r1
 8000122:	d374      	bcc.n	800020e <__udivsi3+0xf2>
 8000124:	0903      	lsrs	r3, r0, #4
 8000126:	428b      	cmp	r3, r1
 8000128:	d35f      	bcc.n	80001ea <__udivsi3+0xce>
 800012a:	0a03      	lsrs	r3, r0, #8
 800012c:	428b      	cmp	r3, r1
 800012e:	d344      	bcc.n	80001ba <__udivsi3+0x9e>
 8000130:	0b03      	lsrs	r3, r0, #12
 8000132:	428b      	cmp	r3, r1
 8000134:	d328      	bcc.n	8000188 <__udivsi3+0x6c>
 8000136:	0c03      	lsrs	r3, r0, #16
 8000138:	428b      	cmp	r3, r1
 800013a:	d30d      	bcc.n	8000158 <__udivsi3+0x3c>
 800013c:	22ff      	movs	r2, #255	; 0xff
 800013e:	0209      	lsls	r1, r1, #8
 8000140:	ba12      	rev	r2, r2
 8000142:	0c03      	lsrs	r3, r0, #16
 8000144:	428b      	cmp	r3, r1
 8000146:	d302      	bcc.n	800014e <__udivsi3+0x32>
 8000148:	1212      	asrs	r2, r2, #8
 800014a:	0209      	lsls	r1, r1, #8
 800014c:	d065      	beq.n	800021a <__udivsi3+0xfe>
 800014e:	0b03      	lsrs	r3, r0, #12
 8000150:	428b      	cmp	r3, r1
 8000152:	d319      	bcc.n	8000188 <__udivsi3+0x6c>
 8000154:	e000      	b.n	8000158 <__udivsi3+0x3c>
 8000156:	0a09      	lsrs	r1, r1, #8
 8000158:	0bc3      	lsrs	r3, r0, #15
 800015a:	428b      	cmp	r3, r1
 800015c:	d301      	bcc.n	8000162 <__udivsi3+0x46>
 800015e:	03cb      	lsls	r3, r1, #15
 8000160:	1ac0      	subs	r0, r0, r3
 8000162:	4152      	adcs	r2, r2
 8000164:	0b83      	lsrs	r3, r0, #14
 8000166:	428b      	cmp	r3, r1
 8000168:	d301      	bcc.n	800016e <__udivsi3+0x52>
 800016a:	038b      	lsls	r3, r1, #14
 800016c:	1ac0      	subs	r0, r0, r3
 800016e:	4152      	adcs	r2, r2
 8000170:	0b43      	lsrs	r3, r0, #13
 8000172:	428b      	cmp	r3, r1
 8000174:	d301      	bcc.n	800017a <__udivsi3+0x5e>
 8000176:	034b      	lsls	r3, r1, #13
 8000178:	1ac0      	subs	r0, r0, r3
 800017a:	4152      	adcs	r2, r2
 800017c:	0b03      	lsrs	r3, r0, #12
 800017e:	428b      	cmp	r3, r1
 8000180:	d301      	bcc.n	8000186 <__udivsi3+0x6a>
 8000182:	030b      	lsls	r3, r1, #12
 8000184:	1ac0      	subs	r0, r0, r3
 8000186:	4152      	adcs	r2, r2
 8000188:	0ac3      	lsrs	r3, r0, #11
 800018a:	428b      	cmp	r3, r1
 800018c:	d301      	bcc.n	8000192 <__udivsi3+0x76>
 800018e:	02cb      	lsls	r3, r1, #11
 8000190:	1ac0      	subs	r0, r0, r3
 8000192:	4152      	adcs	r2, r2
 8000194:	0a83      	lsrs	r3, r0, #10
 8000196:	428b      	cmp	r3, r1
 8000198:	d301      	bcc.n	800019e <__udivsi3+0x82>
 800019a:	028b      	lsls	r3, r1, #10
 800019c:	1ac0      	subs	r0, r0, r3
 800019e:	4152      	adcs	r2, r2
 80001a0:	0a43      	lsrs	r3, r0, #9
 80001a2:	428b      	cmp	r3, r1
 80001a4:	d301      	bcc.n	80001aa <__udivsi3+0x8e>
 80001a6:	024b      	lsls	r3, r1, #9
 80001a8:	1ac0      	subs	r0, r0, r3
 80001aa:	4152      	adcs	r2, r2
 80001ac:	0a03      	lsrs	r3, r0, #8
 80001ae:	428b      	cmp	r3, r1
 80001b0:	d301      	bcc.n	80001b6 <__udivsi3+0x9a>
 80001b2:	020b      	lsls	r3, r1, #8
 80001b4:	1ac0      	subs	r0, r0, r3
 80001b6:	4152      	adcs	r2, r2
 80001b8:	d2cd      	bcs.n	8000156 <__udivsi3+0x3a>
 80001ba:	09c3      	lsrs	r3, r0, #7
 80001bc:	428b      	cmp	r3, r1
 80001be:	d301      	bcc.n	80001c4 <__udivsi3+0xa8>
 80001c0:	01cb      	lsls	r3, r1, #7
 80001c2:	1ac0      	subs	r0, r0, r3
 80001c4:	4152      	adcs	r2, r2
 80001c6:	0983      	lsrs	r3, r0, #6
 80001c8:	428b      	cmp	r3, r1
 80001ca:	d301      	bcc.n	80001d0 <__udivsi3+0xb4>
 80001cc:	018b      	lsls	r3, r1, #6
 80001ce:	1ac0      	subs	r0, r0, r3
 80001d0:	4152      	adcs	r2, r2
 80001d2:	0943      	lsrs	r3, r0, #5
 80001d4:	428b      	cmp	r3, r1
 80001d6:	d301      	bcc.n	80001dc <__udivsi3+0xc0>
 80001d8:	014b      	lsls	r3, r1, #5
 80001da:	1ac0      	subs	r0, r0, r3
 80001dc:	4152      	adcs	r2, r2
 80001de:	0903      	lsrs	r3, r0, #4
 80001e0:	428b      	cmp	r3, r1
 80001e2:	d301      	bcc.n	80001e8 <__udivsi3+0xcc>
 80001e4:	010b      	lsls	r3, r1, #4
 80001e6:	1ac0      	subs	r0, r0, r3
 80001e8:	4152      	adcs	r2, r2
 80001ea:	08c3      	lsrs	r3, r0, #3
 80001ec:	428b      	cmp	r3, r1
 80001ee:	d301      	bcc.n	80001f4 <__udivsi3+0xd8>
 80001f0:	00cb      	lsls	r3, r1, #3
 80001f2:	1ac0      	subs	r0, r0, r3
 80001f4:	4152      	adcs	r2, r2
 80001f6:	0883      	lsrs	r3, r0, #2
 80001f8:	428b      	cmp	r3, r1
 80001fa:	d301      	bcc.n	8000200 <__udivsi3+0xe4>
 80001fc:	008b      	lsls	r3, r1, #2
 80001fe:	1ac0      	subs	r0, r0, r3
 8000200:	4152      	adcs	r2, r2
 8000202:	0843      	lsrs	r3, r0, #1
 8000204:	428b      	cmp	r3, r1
 8000206:	d301      	bcc.n	800020c <__udivsi3+0xf0>
 8000208:	004b      	lsls	r3, r1, #1
 800020a:	1ac0      	subs	r0, r0, r3
 800020c:	4152      	adcs	r2, r2
 800020e:	1a41      	subs	r1, r0, r1
 8000210:	d200      	bcs.n	8000214 <__udivsi3+0xf8>
 8000212:	4601      	mov	r1, r0
 8000214:	4152      	adcs	r2, r2
 8000216:	4610      	mov	r0, r2
 8000218:	4770      	bx	lr
 800021a:	e7ff      	b.n	800021c <__udivsi3+0x100>
 800021c:	b501      	push	{r0, lr}
 800021e:	2000      	movs	r0, #0
 8000220:	f000 f806 	bl	8000230 <__aeabi_idiv0>
 8000224:	bd02      	pop	{r1, pc}
 8000226:	46c0      	nop			; (mov r8, r8)

08000228 <__aeabi_uidivmod>:
 8000228:	2900      	cmp	r1, #0
 800022a:	d0f7      	beq.n	800021c <__udivsi3+0x100>
 800022c:	e776      	b.n	800011c <__udivsi3>
 800022e:	4770      	bx	lr

08000230 <__aeabi_idiv0>:
 8000230:	4770      	bx	lr
 8000232:	46c0      	nop			; (mov r8, r8)

08000234 <__aeabi_cfrcmple>:
 8000234:	4684      	mov	ip, r0
 8000236:	0008      	movs	r0, r1
 8000238:	4661      	mov	r1, ip
 800023a:	e7ff      	b.n	800023c <__aeabi_cfcmpeq>

0800023c <__aeabi_cfcmpeq>:
 800023c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800023e:	f000 f89f 	bl	8000380 <__lesf2>
 8000242:	2800      	cmp	r0, #0
 8000244:	d401      	bmi.n	800024a <__aeabi_cfcmpeq+0xe>
 8000246:	2100      	movs	r1, #0
 8000248:	42c8      	cmn	r0, r1
 800024a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

0800024c <__aeabi_fcmpeq>:
 800024c:	b510      	push	{r4, lr}
 800024e:	f000 f82b 	bl	80002a8 <__eqsf2>
 8000252:	4240      	negs	r0, r0
 8000254:	3001      	adds	r0, #1
 8000256:	bd10      	pop	{r4, pc}

08000258 <__aeabi_fcmplt>:
 8000258:	b510      	push	{r4, lr}
 800025a:	f000 f891 	bl	8000380 <__lesf2>
 800025e:	2800      	cmp	r0, #0
 8000260:	db01      	blt.n	8000266 <__aeabi_fcmplt+0xe>
 8000262:	2000      	movs	r0, #0
 8000264:	bd10      	pop	{r4, pc}
 8000266:	2001      	movs	r0, #1
 8000268:	bd10      	pop	{r4, pc}
 800026a:	46c0      	nop			; (mov r8, r8)

0800026c <__aeabi_fcmple>:
 800026c:	b510      	push	{r4, lr}
 800026e:	f000 f887 	bl	8000380 <__lesf2>
 8000272:	2800      	cmp	r0, #0
 8000274:	dd01      	ble.n	800027a <__aeabi_fcmple+0xe>
 8000276:	2000      	movs	r0, #0
 8000278:	bd10      	pop	{r4, pc}
 800027a:	2001      	movs	r0, #1
 800027c:	bd10      	pop	{r4, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_fcmpgt>:
 8000280:	b510      	push	{r4, lr}
 8000282:	f000 f837 	bl	80002f4 <__gesf2>
 8000286:	2800      	cmp	r0, #0
 8000288:	dc01      	bgt.n	800028e <__aeabi_fcmpgt+0xe>
 800028a:	2000      	movs	r0, #0
 800028c:	bd10      	pop	{r4, pc}
 800028e:	2001      	movs	r0, #1
 8000290:	bd10      	pop	{r4, pc}
 8000292:	46c0      	nop			; (mov r8, r8)

08000294 <__aeabi_fcmpge>:
 8000294:	b510      	push	{r4, lr}
 8000296:	f000 f82d 	bl	80002f4 <__gesf2>
 800029a:	2800      	cmp	r0, #0
 800029c:	da01      	bge.n	80002a2 <__aeabi_fcmpge+0xe>
 800029e:	2000      	movs	r0, #0
 80002a0:	bd10      	pop	{r4, pc}
 80002a2:	2001      	movs	r0, #1
 80002a4:	bd10      	pop	{r4, pc}
 80002a6:	46c0      	nop			; (mov r8, r8)

080002a8 <__eqsf2>:
 80002a8:	b570      	push	{r4, r5, r6, lr}
 80002aa:	0042      	lsls	r2, r0, #1
 80002ac:	0245      	lsls	r5, r0, #9
 80002ae:	024e      	lsls	r6, r1, #9
 80002b0:	004c      	lsls	r4, r1, #1
 80002b2:	0fc3      	lsrs	r3, r0, #31
 80002b4:	0a6d      	lsrs	r5, r5, #9
 80002b6:	2001      	movs	r0, #1
 80002b8:	0e12      	lsrs	r2, r2, #24
 80002ba:	0a76      	lsrs	r6, r6, #9
 80002bc:	0e24      	lsrs	r4, r4, #24
 80002be:	0fc9      	lsrs	r1, r1, #31
 80002c0:	2aff      	cmp	r2, #255	; 0xff
 80002c2:	d006      	beq.n	80002d2 <__eqsf2+0x2a>
 80002c4:	2cff      	cmp	r4, #255	; 0xff
 80002c6:	d003      	beq.n	80002d0 <__eqsf2+0x28>
 80002c8:	42a2      	cmp	r2, r4
 80002ca:	d101      	bne.n	80002d0 <__eqsf2+0x28>
 80002cc:	42b5      	cmp	r5, r6
 80002ce:	d006      	beq.n	80002de <__eqsf2+0x36>
 80002d0:	bd70      	pop	{r4, r5, r6, pc}
 80002d2:	2d00      	cmp	r5, #0
 80002d4:	d1fc      	bne.n	80002d0 <__eqsf2+0x28>
 80002d6:	2cff      	cmp	r4, #255	; 0xff
 80002d8:	d1fa      	bne.n	80002d0 <__eqsf2+0x28>
 80002da:	2e00      	cmp	r6, #0
 80002dc:	d1f8      	bne.n	80002d0 <__eqsf2+0x28>
 80002de:	428b      	cmp	r3, r1
 80002e0:	d006      	beq.n	80002f0 <__eqsf2+0x48>
 80002e2:	2001      	movs	r0, #1
 80002e4:	2a00      	cmp	r2, #0
 80002e6:	d1f3      	bne.n	80002d0 <__eqsf2+0x28>
 80002e8:	0028      	movs	r0, r5
 80002ea:	1e43      	subs	r3, r0, #1
 80002ec:	4198      	sbcs	r0, r3
 80002ee:	e7ef      	b.n	80002d0 <__eqsf2+0x28>
 80002f0:	2000      	movs	r0, #0
 80002f2:	e7ed      	b.n	80002d0 <__eqsf2+0x28>

080002f4 <__gesf2>:
 80002f4:	b570      	push	{r4, r5, r6, lr}
 80002f6:	0042      	lsls	r2, r0, #1
 80002f8:	0245      	lsls	r5, r0, #9
 80002fa:	024e      	lsls	r6, r1, #9
 80002fc:	004c      	lsls	r4, r1, #1
 80002fe:	0fc3      	lsrs	r3, r0, #31
 8000300:	0a6d      	lsrs	r5, r5, #9
 8000302:	0e12      	lsrs	r2, r2, #24
 8000304:	0a76      	lsrs	r6, r6, #9
 8000306:	0e24      	lsrs	r4, r4, #24
 8000308:	0fc8      	lsrs	r0, r1, #31
 800030a:	2aff      	cmp	r2, #255	; 0xff
 800030c:	d01b      	beq.n	8000346 <__gesf2+0x52>
 800030e:	2cff      	cmp	r4, #255	; 0xff
 8000310:	d00e      	beq.n	8000330 <__gesf2+0x3c>
 8000312:	2a00      	cmp	r2, #0
 8000314:	d11b      	bne.n	800034e <__gesf2+0x5a>
 8000316:	2c00      	cmp	r4, #0
 8000318:	d101      	bne.n	800031e <__gesf2+0x2a>
 800031a:	2e00      	cmp	r6, #0
 800031c:	d01c      	beq.n	8000358 <__gesf2+0x64>
 800031e:	2d00      	cmp	r5, #0
 8000320:	d00c      	beq.n	800033c <__gesf2+0x48>
 8000322:	4283      	cmp	r3, r0
 8000324:	d01c      	beq.n	8000360 <__gesf2+0x6c>
 8000326:	2102      	movs	r1, #2
 8000328:	1e58      	subs	r0, r3, #1
 800032a:	4008      	ands	r0, r1
 800032c:	3801      	subs	r0, #1
 800032e:	bd70      	pop	{r4, r5, r6, pc}
 8000330:	2e00      	cmp	r6, #0
 8000332:	d122      	bne.n	800037a <__gesf2+0x86>
 8000334:	2a00      	cmp	r2, #0
 8000336:	d1f4      	bne.n	8000322 <__gesf2+0x2e>
 8000338:	2d00      	cmp	r5, #0
 800033a:	d1f2      	bne.n	8000322 <__gesf2+0x2e>
 800033c:	2800      	cmp	r0, #0
 800033e:	d1f6      	bne.n	800032e <__gesf2+0x3a>
 8000340:	2001      	movs	r0, #1
 8000342:	4240      	negs	r0, r0
 8000344:	e7f3      	b.n	800032e <__gesf2+0x3a>
 8000346:	2d00      	cmp	r5, #0
 8000348:	d117      	bne.n	800037a <__gesf2+0x86>
 800034a:	2cff      	cmp	r4, #255	; 0xff
 800034c:	d0f0      	beq.n	8000330 <__gesf2+0x3c>
 800034e:	2c00      	cmp	r4, #0
 8000350:	d1e7      	bne.n	8000322 <__gesf2+0x2e>
 8000352:	2e00      	cmp	r6, #0
 8000354:	d1e5      	bne.n	8000322 <__gesf2+0x2e>
 8000356:	e7e6      	b.n	8000326 <__gesf2+0x32>
 8000358:	2000      	movs	r0, #0
 800035a:	2d00      	cmp	r5, #0
 800035c:	d0e7      	beq.n	800032e <__gesf2+0x3a>
 800035e:	e7e2      	b.n	8000326 <__gesf2+0x32>
 8000360:	42a2      	cmp	r2, r4
 8000362:	dc05      	bgt.n	8000370 <__gesf2+0x7c>
 8000364:	dbea      	blt.n	800033c <__gesf2+0x48>
 8000366:	42b5      	cmp	r5, r6
 8000368:	d802      	bhi.n	8000370 <__gesf2+0x7c>
 800036a:	d3e7      	bcc.n	800033c <__gesf2+0x48>
 800036c:	2000      	movs	r0, #0
 800036e:	e7de      	b.n	800032e <__gesf2+0x3a>
 8000370:	4243      	negs	r3, r0
 8000372:	4158      	adcs	r0, r3
 8000374:	0040      	lsls	r0, r0, #1
 8000376:	3801      	subs	r0, #1
 8000378:	e7d9      	b.n	800032e <__gesf2+0x3a>
 800037a:	2002      	movs	r0, #2
 800037c:	4240      	negs	r0, r0
 800037e:	e7d6      	b.n	800032e <__gesf2+0x3a>

08000380 <__lesf2>:
 8000380:	b570      	push	{r4, r5, r6, lr}
 8000382:	0042      	lsls	r2, r0, #1
 8000384:	0245      	lsls	r5, r0, #9
 8000386:	024e      	lsls	r6, r1, #9
 8000388:	004c      	lsls	r4, r1, #1
 800038a:	0fc3      	lsrs	r3, r0, #31
 800038c:	0a6d      	lsrs	r5, r5, #9
 800038e:	0e12      	lsrs	r2, r2, #24
 8000390:	0a76      	lsrs	r6, r6, #9
 8000392:	0e24      	lsrs	r4, r4, #24
 8000394:	0fc8      	lsrs	r0, r1, #31
 8000396:	2aff      	cmp	r2, #255	; 0xff
 8000398:	d00b      	beq.n	80003b2 <__lesf2+0x32>
 800039a:	2cff      	cmp	r4, #255	; 0xff
 800039c:	d00d      	beq.n	80003ba <__lesf2+0x3a>
 800039e:	2a00      	cmp	r2, #0
 80003a0:	d11f      	bne.n	80003e2 <__lesf2+0x62>
 80003a2:	2c00      	cmp	r4, #0
 80003a4:	d116      	bne.n	80003d4 <__lesf2+0x54>
 80003a6:	2e00      	cmp	r6, #0
 80003a8:	d114      	bne.n	80003d4 <__lesf2+0x54>
 80003aa:	2000      	movs	r0, #0
 80003ac:	2d00      	cmp	r5, #0
 80003ae:	d010      	beq.n	80003d2 <__lesf2+0x52>
 80003b0:	e009      	b.n	80003c6 <__lesf2+0x46>
 80003b2:	2d00      	cmp	r5, #0
 80003b4:	d10c      	bne.n	80003d0 <__lesf2+0x50>
 80003b6:	2cff      	cmp	r4, #255	; 0xff
 80003b8:	d113      	bne.n	80003e2 <__lesf2+0x62>
 80003ba:	2e00      	cmp	r6, #0
 80003bc:	d108      	bne.n	80003d0 <__lesf2+0x50>
 80003be:	2a00      	cmp	r2, #0
 80003c0:	d008      	beq.n	80003d4 <__lesf2+0x54>
 80003c2:	4283      	cmp	r3, r0
 80003c4:	d012      	beq.n	80003ec <__lesf2+0x6c>
 80003c6:	2102      	movs	r1, #2
 80003c8:	1e58      	subs	r0, r3, #1
 80003ca:	4008      	ands	r0, r1
 80003cc:	3801      	subs	r0, #1
 80003ce:	e000      	b.n	80003d2 <__lesf2+0x52>
 80003d0:	2002      	movs	r0, #2
 80003d2:	bd70      	pop	{r4, r5, r6, pc}
 80003d4:	2d00      	cmp	r5, #0
 80003d6:	d1f4      	bne.n	80003c2 <__lesf2+0x42>
 80003d8:	2800      	cmp	r0, #0
 80003da:	d1fa      	bne.n	80003d2 <__lesf2+0x52>
 80003dc:	2001      	movs	r0, #1
 80003de:	4240      	negs	r0, r0
 80003e0:	e7f7      	b.n	80003d2 <__lesf2+0x52>
 80003e2:	2c00      	cmp	r4, #0
 80003e4:	d1ed      	bne.n	80003c2 <__lesf2+0x42>
 80003e6:	2e00      	cmp	r6, #0
 80003e8:	d1eb      	bne.n	80003c2 <__lesf2+0x42>
 80003ea:	e7ec      	b.n	80003c6 <__lesf2+0x46>
 80003ec:	42a2      	cmp	r2, r4
 80003ee:	dc05      	bgt.n	80003fc <__lesf2+0x7c>
 80003f0:	dbf2      	blt.n	80003d8 <__lesf2+0x58>
 80003f2:	42b5      	cmp	r5, r6
 80003f4:	d802      	bhi.n	80003fc <__lesf2+0x7c>
 80003f6:	d3ef      	bcc.n	80003d8 <__lesf2+0x58>
 80003f8:	2000      	movs	r0, #0
 80003fa:	e7ea      	b.n	80003d2 <__lesf2+0x52>
 80003fc:	4243      	negs	r3, r0
 80003fe:	4158      	adcs	r0, r3
 8000400:	0040      	lsls	r0, r0, #1
 8000402:	3801      	subs	r0, #1
 8000404:	e7e5      	b.n	80003d2 <__lesf2+0x52>
 8000406:	46c0      	nop			; (mov r8, r8)

08000408 <__aeabi_fmul>:
 8000408:	b5f0      	push	{r4, r5, r6, r7, lr}
 800040a:	464f      	mov	r7, r9
 800040c:	4646      	mov	r6, r8
 800040e:	46d6      	mov	lr, sl
 8000410:	0244      	lsls	r4, r0, #9
 8000412:	0045      	lsls	r5, r0, #1
 8000414:	b5c0      	push	{r6, r7, lr}
 8000416:	0a64      	lsrs	r4, r4, #9
 8000418:	1c0f      	adds	r7, r1, #0
 800041a:	0e2d      	lsrs	r5, r5, #24
 800041c:	0fc6      	lsrs	r6, r0, #31
 800041e:	2d00      	cmp	r5, #0
 8000420:	d100      	bne.n	8000424 <__aeabi_fmul+0x1c>
 8000422:	e08d      	b.n	8000540 <__aeabi_fmul+0x138>
 8000424:	2dff      	cmp	r5, #255	; 0xff
 8000426:	d100      	bne.n	800042a <__aeabi_fmul+0x22>
 8000428:	e092      	b.n	8000550 <__aeabi_fmul+0x148>
 800042a:	2300      	movs	r3, #0
 800042c:	2080      	movs	r0, #128	; 0x80
 800042e:	4699      	mov	r9, r3
 8000430:	469a      	mov	sl, r3
 8000432:	00e4      	lsls	r4, r4, #3
 8000434:	04c0      	lsls	r0, r0, #19
 8000436:	4304      	orrs	r4, r0
 8000438:	3d7f      	subs	r5, #127	; 0x7f
 800043a:	0278      	lsls	r0, r7, #9
 800043c:	0a43      	lsrs	r3, r0, #9
 800043e:	4698      	mov	r8, r3
 8000440:	007b      	lsls	r3, r7, #1
 8000442:	0e1b      	lsrs	r3, r3, #24
 8000444:	0fff      	lsrs	r7, r7, #31
 8000446:	2b00      	cmp	r3, #0
 8000448:	d100      	bne.n	800044c <__aeabi_fmul+0x44>
 800044a:	e070      	b.n	800052e <__aeabi_fmul+0x126>
 800044c:	2bff      	cmp	r3, #255	; 0xff
 800044e:	d100      	bne.n	8000452 <__aeabi_fmul+0x4a>
 8000450:	e086      	b.n	8000560 <__aeabi_fmul+0x158>
 8000452:	4642      	mov	r2, r8
 8000454:	00d0      	lsls	r0, r2, #3
 8000456:	2280      	movs	r2, #128	; 0x80
 8000458:	3b7f      	subs	r3, #127	; 0x7f
 800045a:	18ed      	adds	r5, r5, r3
 800045c:	2300      	movs	r3, #0
 800045e:	04d2      	lsls	r2, r2, #19
 8000460:	4302      	orrs	r2, r0
 8000462:	4690      	mov	r8, r2
 8000464:	469c      	mov	ip, r3
 8000466:	0031      	movs	r1, r6
 8000468:	464b      	mov	r3, r9
 800046a:	4079      	eors	r1, r7
 800046c:	1c68      	adds	r0, r5, #1
 800046e:	2b0f      	cmp	r3, #15
 8000470:	d81c      	bhi.n	80004ac <__aeabi_fmul+0xa4>
 8000472:	4a76      	ldr	r2, [pc, #472]	; (800064c <__aeabi_fmul+0x244>)
 8000474:	009b      	lsls	r3, r3, #2
 8000476:	58d3      	ldr	r3, [r2, r3]
 8000478:	469f      	mov	pc, r3
 800047a:	0039      	movs	r1, r7
 800047c:	4644      	mov	r4, r8
 800047e:	46e2      	mov	sl, ip
 8000480:	4653      	mov	r3, sl
 8000482:	2b02      	cmp	r3, #2
 8000484:	d00f      	beq.n	80004a6 <__aeabi_fmul+0x9e>
 8000486:	2b03      	cmp	r3, #3
 8000488:	d100      	bne.n	800048c <__aeabi_fmul+0x84>
 800048a:	e0d7      	b.n	800063c <__aeabi_fmul+0x234>
 800048c:	2b01      	cmp	r3, #1
 800048e:	d137      	bne.n	8000500 <__aeabi_fmul+0xf8>
 8000490:	2000      	movs	r0, #0
 8000492:	2400      	movs	r4, #0
 8000494:	05c0      	lsls	r0, r0, #23
 8000496:	4320      	orrs	r0, r4
 8000498:	07c9      	lsls	r1, r1, #31
 800049a:	4308      	orrs	r0, r1
 800049c:	bce0      	pop	{r5, r6, r7}
 800049e:	46ba      	mov	sl, r7
 80004a0:	46b1      	mov	r9, r6
 80004a2:	46a8      	mov	r8, r5
 80004a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80004a6:	20ff      	movs	r0, #255	; 0xff
 80004a8:	2400      	movs	r4, #0
 80004aa:	e7f3      	b.n	8000494 <__aeabi_fmul+0x8c>
 80004ac:	0c26      	lsrs	r6, r4, #16
 80004ae:	0424      	lsls	r4, r4, #16
 80004b0:	0c22      	lsrs	r2, r4, #16
 80004b2:	4644      	mov	r4, r8
 80004b4:	0424      	lsls	r4, r4, #16
 80004b6:	0c24      	lsrs	r4, r4, #16
 80004b8:	4643      	mov	r3, r8
 80004ba:	0027      	movs	r7, r4
 80004bc:	0c1b      	lsrs	r3, r3, #16
 80004be:	4357      	muls	r7, r2
 80004c0:	4374      	muls	r4, r6
 80004c2:	435a      	muls	r2, r3
 80004c4:	435e      	muls	r6, r3
 80004c6:	1912      	adds	r2, r2, r4
 80004c8:	0c3b      	lsrs	r3, r7, #16
 80004ca:	189b      	adds	r3, r3, r2
 80004cc:	429c      	cmp	r4, r3
 80004ce:	d903      	bls.n	80004d8 <__aeabi_fmul+0xd0>
 80004d0:	2280      	movs	r2, #128	; 0x80
 80004d2:	0252      	lsls	r2, r2, #9
 80004d4:	4694      	mov	ip, r2
 80004d6:	4466      	add	r6, ip
 80004d8:	043f      	lsls	r7, r7, #16
 80004da:	041a      	lsls	r2, r3, #16
 80004dc:	0c3f      	lsrs	r7, r7, #16
 80004de:	19d2      	adds	r2, r2, r7
 80004e0:	0194      	lsls	r4, r2, #6
 80004e2:	1e67      	subs	r7, r4, #1
 80004e4:	41bc      	sbcs	r4, r7
 80004e6:	0c1b      	lsrs	r3, r3, #16
 80004e8:	0e92      	lsrs	r2, r2, #26
 80004ea:	199b      	adds	r3, r3, r6
 80004ec:	4314      	orrs	r4, r2
 80004ee:	019b      	lsls	r3, r3, #6
 80004f0:	431c      	orrs	r4, r3
 80004f2:	011b      	lsls	r3, r3, #4
 80004f4:	d400      	bmi.n	80004f8 <__aeabi_fmul+0xf0>
 80004f6:	e09b      	b.n	8000630 <__aeabi_fmul+0x228>
 80004f8:	2301      	movs	r3, #1
 80004fa:	0862      	lsrs	r2, r4, #1
 80004fc:	401c      	ands	r4, r3
 80004fe:	4314      	orrs	r4, r2
 8000500:	0002      	movs	r2, r0
 8000502:	327f      	adds	r2, #127	; 0x7f
 8000504:	2a00      	cmp	r2, #0
 8000506:	dd64      	ble.n	80005d2 <__aeabi_fmul+0x1ca>
 8000508:	0763      	lsls	r3, r4, #29
 800050a:	d004      	beq.n	8000516 <__aeabi_fmul+0x10e>
 800050c:	230f      	movs	r3, #15
 800050e:	4023      	ands	r3, r4
 8000510:	2b04      	cmp	r3, #4
 8000512:	d000      	beq.n	8000516 <__aeabi_fmul+0x10e>
 8000514:	3404      	adds	r4, #4
 8000516:	0123      	lsls	r3, r4, #4
 8000518:	d503      	bpl.n	8000522 <__aeabi_fmul+0x11a>
 800051a:	0002      	movs	r2, r0
 800051c:	4b4c      	ldr	r3, [pc, #304]	; (8000650 <__aeabi_fmul+0x248>)
 800051e:	3280      	adds	r2, #128	; 0x80
 8000520:	401c      	ands	r4, r3
 8000522:	2afe      	cmp	r2, #254	; 0xfe
 8000524:	dcbf      	bgt.n	80004a6 <__aeabi_fmul+0x9e>
 8000526:	01a4      	lsls	r4, r4, #6
 8000528:	0a64      	lsrs	r4, r4, #9
 800052a:	b2d0      	uxtb	r0, r2
 800052c:	e7b2      	b.n	8000494 <__aeabi_fmul+0x8c>
 800052e:	4643      	mov	r3, r8
 8000530:	2b00      	cmp	r3, #0
 8000532:	d13d      	bne.n	80005b0 <__aeabi_fmul+0x1a8>
 8000534:	464a      	mov	r2, r9
 8000536:	3301      	adds	r3, #1
 8000538:	431a      	orrs	r2, r3
 800053a:	4691      	mov	r9, r2
 800053c:	469c      	mov	ip, r3
 800053e:	e792      	b.n	8000466 <__aeabi_fmul+0x5e>
 8000540:	2c00      	cmp	r4, #0
 8000542:	d129      	bne.n	8000598 <__aeabi_fmul+0x190>
 8000544:	2304      	movs	r3, #4
 8000546:	4699      	mov	r9, r3
 8000548:	3b03      	subs	r3, #3
 800054a:	2500      	movs	r5, #0
 800054c:	469a      	mov	sl, r3
 800054e:	e774      	b.n	800043a <__aeabi_fmul+0x32>
 8000550:	2c00      	cmp	r4, #0
 8000552:	d11b      	bne.n	800058c <__aeabi_fmul+0x184>
 8000554:	2308      	movs	r3, #8
 8000556:	4699      	mov	r9, r3
 8000558:	3b06      	subs	r3, #6
 800055a:	25ff      	movs	r5, #255	; 0xff
 800055c:	469a      	mov	sl, r3
 800055e:	e76c      	b.n	800043a <__aeabi_fmul+0x32>
 8000560:	4643      	mov	r3, r8
 8000562:	35ff      	adds	r5, #255	; 0xff
 8000564:	2b00      	cmp	r3, #0
 8000566:	d10b      	bne.n	8000580 <__aeabi_fmul+0x178>
 8000568:	2302      	movs	r3, #2
 800056a:	464a      	mov	r2, r9
 800056c:	431a      	orrs	r2, r3
 800056e:	4691      	mov	r9, r2
 8000570:	469c      	mov	ip, r3
 8000572:	e778      	b.n	8000466 <__aeabi_fmul+0x5e>
 8000574:	4653      	mov	r3, sl
 8000576:	0031      	movs	r1, r6
 8000578:	2b02      	cmp	r3, #2
 800057a:	d000      	beq.n	800057e <__aeabi_fmul+0x176>
 800057c:	e783      	b.n	8000486 <__aeabi_fmul+0x7e>
 800057e:	e792      	b.n	80004a6 <__aeabi_fmul+0x9e>
 8000580:	2303      	movs	r3, #3
 8000582:	464a      	mov	r2, r9
 8000584:	431a      	orrs	r2, r3
 8000586:	4691      	mov	r9, r2
 8000588:	469c      	mov	ip, r3
 800058a:	e76c      	b.n	8000466 <__aeabi_fmul+0x5e>
 800058c:	230c      	movs	r3, #12
 800058e:	4699      	mov	r9, r3
 8000590:	3b09      	subs	r3, #9
 8000592:	25ff      	movs	r5, #255	; 0xff
 8000594:	469a      	mov	sl, r3
 8000596:	e750      	b.n	800043a <__aeabi_fmul+0x32>
 8000598:	0020      	movs	r0, r4
 800059a:	f001 f987 	bl	80018ac <__clzsi2>
 800059e:	2576      	movs	r5, #118	; 0x76
 80005a0:	1f43      	subs	r3, r0, #5
 80005a2:	409c      	lsls	r4, r3
 80005a4:	2300      	movs	r3, #0
 80005a6:	426d      	negs	r5, r5
 80005a8:	4699      	mov	r9, r3
 80005aa:	469a      	mov	sl, r3
 80005ac:	1a2d      	subs	r5, r5, r0
 80005ae:	e744      	b.n	800043a <__aeabi_fmul+0x32>
 80005b0:	4640      	mov	r0, r8
 80005b2:	f001 f97b 	bl	80018ac <__clzsi2>
 80005b6:	4642      	mov	r2, r8
 80005b8:	1f43      	subs	r3, r0, #5
 80005ba:	409a      	lsls	r2, r3
 80005bc:	2300      	movs	r3, #0
 80005be:	1a2d      	subs	r5, r5, r0
 80005c0:	4690      	mov	r8, r2
 80005c2:	469c      	mov	ip, r3
 80005c4:	3d76      	subs	r5, #118	; 0x76
 80005c6:	e74e      	b.n	8000466 <__aeabi_fmul+0x5e>
 80005c8:	2480      	movs	r4, #128	; 0x80
 80005ca:	2100      	movs	r1, #0
 80005cc:	20ff      	movs	r0, #255	; 0xff
 80005ce:	03e4      	lsls	r4, r4, #15
 80005d0:	e760      	b.n	8000494 <__aeabi_fmul+0x8c>
 80005d2:	2301      	movs	r3, #1
 80005d4:	1a9b      	subs	r3, r3, r2
 80005d6:	2b1b      	cmp	r3, #27
 80005d8:	dd00      	ble.n	80005dc <__aeabi_fmul+0x1d4>
 80005da:	e759      	b.n	8000490 <__aeabi_fmul+0x88>
 80005dc:	0022      	movs	r2, r4
 80005de:	309e      	adds	r0, #158	; 0x9e
 80005e0:	40da      	lsrs	r2, r3
 80005e2:	4084      	lsls	r4, r0
 80005e4:	0013      	movs	r3, r2
 80005e6:	1e62      	subs	r2, r4, #1
 80005e8:	4194      	sbcs	r4, r2
 80005ea:	431c      	orrs	r4, r3
 80005ec:	0763      	lsls	r3, r4, #29
 80005ee:	d004      	beq.n	80005fa <__aeabi_fmul+0x1f2>
 80005f0:	230f      	movs	r3, #15
 80005f2:	4023      	ands	r3, r4
 80005f4:	2b04      	cmp	r3, #4
 80005f6:	d000      	beq.n	80005fa <__aeabi_fmul+0x1f2>
 80005f8:	3404      	adds	r4, #4
 80005fa:	0163      	lsls	r3, r4, #5
 80005fc:	d51a      	bpl.n	8000634 <__aeabi_fmul+0x22c>
 80005fe:	2001      	movs	r0, #1
 8000600:	2400      	movs	r4, #0
 8000602:	e747      	b.n	8000494 <__aeabi_fmul+0x8c>
 8000604:	2080      	movs	r0, #128	; 0x80
 8000606:	03c0      	lsls	r0, r0, #15
 8000608:	4204      	tst	r4, r0
 800060a:	d009      	beq.n	8000620 <__aeabi_fmul+0x218>
 800060c:	4643      	mov	r3, r8
 800060e:	4203      	tst	r3, r0
 8000610:	d106      	bne.n	8000620 <__aeabi_fmul+0x218>
 8000612:	4644      	mov	r4, r8
 8000614:	4304      	orrs	r4, r0
 8000616:	0264      	lsls	r4, r4, #9
 8000618:	0039      	movs	r1, r7
 800061a:	20ff      	movs	r0, #255	; 0xff
 800061c:	0a64      	lsrs	r4, r4, #9
 800061e:	e739      	b.n	8000494 <__aeabi_fmul+0x8c>
 8000620:	2080      	movs	r0, #128	; 0x80
 8000622:	03c0      	lsls	r0, r0, #15
 8000624:	4304      	orrs	r4, r0
 8000626:	0264      	lsls	r4, r4, #9
 8000628:	0031      	movs	r1, r6
 800062a:	20ff      	movs	r0, #255	; 0xff
 800062c:	0a64      	lsrs	r4, r4, #9
 800062e:	e731      	b.n	8000494 <__aeabi_fmul+0x8c>
 8000630:	0028      	movs	r0, r5
 8000632:	e765      	b.n	8000500 <__aeabi_fmul+0xf8>
 8000634:	01a4      	lsls	r4, r4, #6
 8000636:	2000      	movs	r0, #0
 8000638:	0a64      	lsrs	r4, r4, #9
 800063a:	e72b      	b.n	8000494 <__aeabi_fmul+0x8c>
 800063c:	2080      	movs	r0, #128	; 0x80
 800063e:	03c0      	lsls	r0, r0, #15
 8000640:	4304      	orrs	r4, r0
 8000642:	0264      	lsls	r4, r4, #9
 8000644:	20ff      	movs	r0, #255	; 0xff
 8000646:	0a64      	lsrs	r4, r4, #9
 8000648:	e724      	b.n	8000494 <__aeabi_fmul+0x8c>
 800064a:	46c0      	nop			; (mov r8, r8)
 800064c:	08002690 	.word	0x08002690
 8000650:	f7ffffff 	.word	0xf7ffffff

08000654 <__aeabi_fsub>:
 8000654:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000656:	46ce      	mov	lr, r9
 8000658:	4647      	mov	r7, r8
 800065a:	0243      	lsls	r3, r0, #9
 800065c:	0a5b      	lsrs	r3, r3, #9
 800065e:	024e      	lsls	r6, r1, #9
 8000660:	00da      	lsls	r2, r3, #3
 8000662:	4694      	mov	ip, r2
 8000664:	0a72      	lsrs	r2, r6, #9
 8000666:	4691      	mov	r9, r2
 8000668:	0045      	lsls	r5, r0, #1
 800066a:	004a      	lsls	r2, r1, #1
 800066c:	b580      	push	{r7, lr}
 800066e:	0e2d      	lsrs	r5, r5, #24
 8000670:	001f      	movs	r7, r3
 8000672:	0fc4      	lsrs	r4, r0, #31
 8000674:	0e12      	lsrs	r2, r2, #24
 8000676:	0fc9      	lsrs	r1, r1, #31
 8000678:	09b6      	lsrs	r6, r6, #6
 800067a:	2aff      	cmp	r2, #255	; 0xff
 800067c:	d05b      	beq.n	8000736 <__aeabi_fsub+0xe2>
 800067e:	2001      	movs	r0, #1
 8000680:	4041      	eors	r1, r0
 8000682:	428c      	cmp	r4, r1
 8000684:	d039      	beq.n	80006fa <__aeabi_fsub+0xa6>
 8000686:	1aa8      	subs	r0, r5, r2
 8000688:	2800      	cmp	r0, #0
 800068a:	dd5a      	ble.n	8000742 <__aeabi_fsub+0xee>
 800068c:	2a00      	cmp	r2, #0
 800068e:	d06a      	beq.n	8000766 <__aeabi_fsub+0x112>
 8000690:	2dff      	cmp	r5, #255	; 0xff
 8000692:	d100      	bne.n	8000696 <__aeabi_fsub+0x42>
 8000694:	e0d9      	b.n	800084a <__aeabi_fsub+0x1f6>
 8000696:	2280      	movs	r2, #128	; 0x80
 8000698:	04d2      	lsls	r2, r2, #19
 800069a:	4316      	orrs	r6, r2
 800069c:	281b      	cmp	r0, #27
 800069e:	dc00      	bgt.n	80006a2 <__aeabi_fsub+0x4e>
 80006a0:	e0e9      	b.n	8000876 <__aeabi_fsub+0x222>
 80006a2:	2001      	movs	r0, #1
 80006a4:	4663      	mov	r3, ip
 80006a6:	1a18      	subs	r0, r3, r0
 80006a8:	0143      	lsls	r3, r0, #5
 80006aa:	d400      	bmi.n	80006ae <__aeabi_fsub+0x5a>
 80006ac:	e0b4      	b.n	8000818 <__aeabi_fsub+0x1c4>
 80006ae:	0180      	lsls	r0, r0, #6
 80006b0:	0987      	lsrs	r7, r0, #6
 80006b2:	0038      	movs	r0, r7
 80006b4:	f001 f8fa 	bl	80018ac <__clzsi2>
 80006b8:	3805      	subs	r0, #5
 80006ba:	4087      	lsls	r7, r0
 80006bc:	4285      	cmp	r5, r0
 80006be:	dc00      	bgt.n	80006c2 <__aeabi_fsub+0x6e>
 80006c0:	e0cc      	b.n	800085c <__aeabi_fsub+0x208>
 80006c2:	1a2d      	subs	r5, r5, r0
 80006c4:	48b5      	ldr	r0, [pc, #724]	; (800099c <__aeabi_fsub+0x348>)
 80006c6:	4038      	ands	r0, r7
 80006c8:	0743      	lsls	r3, r0, #29
 80006ca:	d004      	beq.n	80006d6 <__aeabi_fsub+0x82>
 80006cc:	230f      	movs	r3, #15
 80006ce:	4003      	ands	r3, r0
 80006d0:	2b04      	cmp	r3, #4
 80006d2:	d000      	beq.n	80006d6 <__aeabi_fsub+0x82>
 80006d4:	3004      	adds	r0, #4
 80006d6:	0143      	lsls	r3, r0, #5
 80006d8:	d400      	bmi.n	80006dc <__aeabi_fsub+0x88>
 80006da:	e0a0      	b.n	800081e <__aeabi_fsub+0x1ca>
 80006dc:	1c6a      	adds	r2, r5, #1
 80006de:	2dfe      	cmp	r5, #254	; 0xfe
 80006e0:	d100      	bne.n	80006e4 <__aeabi_fsub+0x90>
 80006e2:	e08d      	b.n	8000800 <__aeabi_fsub+0x1ac>
 80006e4:	0180      	lsls	r0, r0, #6
 80006e6:	0a47      	lsrs	r7, r0, #9
 80006e8:	b2d2      	uxtb	r2, r2
 80006ea:	05d0      	lsls	r0, r2, #23
 80006ec:	4338      	orrs	r0, r7
 80006ee:	07e4      	lsls	r4, r4, #31
 80006f0:	4320      	orrs	r0, r4
 80006f2:	bcc0      	pop	{r6, r7}
 80006f4:	46b9      	mov	r9, r7
 80006f6:	46b0      	mov	r8, r6
 80006f8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80006fa:	1aa8      	subs	r0, r5, r2
 80006fc:	4680      	mov	r8, r0
 80006fe:	2800      	cmp	r0, #0
 8000700:	dd45      	ble.n	800078e <__aeabi_fsub+0x13a>
 8000702:	2a00      	cmp	r2, #0
 8000704:	d070      	beq.n	80007e8 <__aeabi_fsub+0x194>
 8000706:	2dff      	cmp	r5, #255	; 0xff
 8000708:	d100      	bne.n	800070c <__aeabi_fsub+0xb8>
 800070a:	e09e      	b.n	800084a <__aeabi_fsub+0x1f6>
 800070c:	2380      	movs	r3, #128	; 0x80
 800070e:	04db      	lsls	r3, r3, #19
 8000710:	431e      	orrs	r6, r3
 8000712:	4643      	mov	r3, r8
 8000714:	2b1b      	cmp	r3, #27
 8000716:	dc00      	bgt.n	800071a <__aeabi_fsub+0xc6>
 8000718:	e0d2      	b.n	80008c0 <__aeabi_fsub+0x26c>
 800071a:	2001      	movs	r0, #1
 800071c:	4460      	add	r0, ip
 800071e:	0143      	lsls	r3, r0, #5
 8000720:	d57a      	bpl.n	8000818 <__aeabi_fsub+0x1c4>
 8000722:	3501      	adds	r5, #1
 8000724:	2dff      	cmp	r5, #255	; 0xff
 8000726:	d06b      	beq.n	8000800 <__aeabi_fsub+0x1ac>
 8000728:	2301      	movs	r3, #1
 800072a:	4a9d      	ldr	r2, [pc, #628]	; (80009a0 <__aeabi_fsub+0x34c>)
 800072c:	4003      	ands	r3, r0
 800072e:	0840      	lsrs	r0, r0, #1
 8000730:	4010      	ands	r0, r2
 8000732:	4318      	orrs	r0, r3
 8000734:	e7c8      	b.n	80006c8 <__aeabi_fsub+0x74>
 8000736:	2e00      	cmp	r6, #0
 8000738:	d020      	beq.n	800077c <__aeabi_fsub+0x128>
 800073a:	428c      	cmp	r4, r1
 800073c:	d023      	beq.n	8000786 <__aeabi_fsub+0x132>
 800073e:	0028      	movs	r0, r5
 8000740:	38ff      	subs	r0, #255	; 0xff
 8000742:	2800      	cmp	r0, #0
 8000744:	d039      	beq.n	80007ba <__aeabi_fsub+0x166>
 8000746:	1b57      	subs	r7, r2, r5
 8000748:	2d00      	cmp	r5, #0
 800074a:	d000      	beq.n	800074e <__aeabi_fsub+0xfa>
 800074c:	e09d      	b.n	800088a <__aeabi_fsub+0x236>
 800074e:	4663      	mov	r3, ip
 8000750:	2b00      	cmp	r3, #0
 8000752:	d100      	bne.n	8000756 <__aeabi_fsub+0x102>
 8000754:	e0db      	b.n	800090e <__aeabi_fsub+0x2ba>
 8000756:	1e7b      	subs	r3, r7, #1
 8000758:	2f01      	cmp	r7, #1
 800075a:	d100      	bne.n	800075e <__aeabi_fsub+0x10a>
 800075c:	e10d      	b.n	800097a <__aeabi_fsub+0x326>
 800075e:	2fff      	cmp	r7, #255	; 0xff
 8000760:	d071      	beq.n	8000846 <__aeabi_fsub+0x1f2>
 8000762:	001f      	movs	r7, r3
 8000764:	e098      	b.n	8000898 <__aeabi_fsub+0x244>
 8000766:	2e00      	cmp	r6, #0
 8000768:	d100      	bne.n	800076c <__aeabi_fsub+0x118>
 800076a:	e0a7      	b.n	80008bc <__aeabi_fsub+0x268>
 800076c:	1e42      	subs	r2, r0, #1
 800076e:	2801      	cmp	r0, #1
 8000770:	d100      	bne.n	8000774 <__aeabi_fsub+0x120>
 8000772:	e0e6      	b.n	8000942 <__aeabi_fsub+0x2ee>
 8000774:	28ff      	cmp	r0, #255	; 0xff
 8000776:	d068      	beq.n	800084a <__aeabi_fsub+0x1f6>
 8000778:	0010      	movs	r0, r2
 800077a:	e78f      	b.n	800069c <__aeabi_fsub+0x48>
 800077c:	2001      	movs	r0, #1
 800077e:	4041      	eors	r1, r0
 8000780:	42a1      	cmp	r1, r4
 8000782:	d000      	beq.n	8000786 <__aeabi_fsub+0x132>
 8000784:	e77f      	b.n	8000686 <__aeabi_fsub+0x32>
 8000786:	20ff      	movs	r0, #255	; 0xff
 8000788:	4240      	negs	r0, r0
 800078a:	4680      	mov	r8, r0
 800078c:	44a8      	add	r8, r5
 800078e:	4640      	mov	r0, r8
 8000790:	2800      	cmp	r0, #0
 8000792:	d038      	beq.n	8000806 <__aeabi_fsub+0x1b2>
 8000794:	1b51      	subs	r1, r2, r5
 8000796:	2d00      	cmp	r5, #0
 8000798:	d100      	bne.n	800079c <__aeabi_fsub+0x148>
 800079a:	e0ae      	b.n	80008fa <__aeabi_fsub+0x2a6>
 800079c:	2aff      	cmp	r2, #255	; 0xff
 800079e:	d100      	bne.n	80007a2 <__aeabi_fsub+0x14e>
 80007a0:	e0df      	b.n	8000962 <__aeabi_fsub+0x30e>
 80007a2:	2380      	movs	r3, #128	; 0x80
 80007a4:	4660      	mov	r0, ip
 80007a6:	04db      	lsls	r3, r3, #19
 80007a8:	4318      	orrs	r0, r3
 80007aa:	4684      	mov	ip, r0
 80007ac:	291b      	cmp	r1, #27
 80007ae:	dc00      	bgt.n	80007b2 <__aeabi_fsub+0x15e>
 80007b0:	e0d9      	b.n	8000966 <__aeabi_fsub+0x312>
 80007b2:	2001      	movs	r0, #1
 80007b4:	0015      	movs	r5, r2
 80007b6:	1980      	adds	r0, r0, r6
 80007b8:	e7b1      	b.n	800071e <__aeabi_fsub+0xca>
 80007ba:	20fe      	movs	r0, #254	; 0xfe
 80007bc:	1c6a      	adds	r2, r5, #1
 80007be:	4210      	tst	r0, r2
 80007c0:	d171      	bne.n	80008a6 <__aeabi_fsub+0x252>
 80007c2:	2d00      	cmp	r5, #0
 80007c4:	d000      	beq.n	80007c8 <__aeabi_fsub+0x174>
 80007c6:	e0a6      	b.n	8000916 <__aeabi_fsub+0x2c2>
 80007c8:	4663      	mov	r3, ip
 80007ca:	2b00      	cmp	r3, #0
 80007cc:	d100      	bne.n	80007d0 <__aeabi_fsub+0x17c>
 80007ce:	e0d9      	b.n	8000984 <__aeabi_fsub+0x330>
 80007d0:	2200      	movs	r2, #0
 80007d2:	2e00      	cmp	r6, #0
 80007d4:	d100      	bne.n	80007d8 <__aeabi_fsub+0x184>
 80007d6:	e788      	b.n	80006ea <__aeabi_fsub+0x96>
 80007d8:	1b98      	subs	r0, r3, r6
 80007da:	0143      	lsls	r3, r0, #5
 80007dc:	d400      	bmi.n	80007e0 <__aeabi_fsub+0x18c>
 80007de:	e0e1      	b.n	80009a4 <__aeabi_fsub+0x350>
 80007e0:	4663      	mov	r3, ip
 80007e2:	000c      	movs	r4, r1
 80007e4:	1af0      	subs	r0, r6, r3
 80007e6:	e76f      	b.n	80006c8 <__aeabi_fsub+0x74>
 80007e8:	2e00      	cmp	r6, #0
 80007ea:	d100      	bne.n	80007ee <__aeabi_fsub+0x19a>
 80007ec:	e0b7      	b.n	800095e <__aeabi_fsub+0x30a>
 80007ee:	0002      	movs	r2, r0
 80007f0:	3a01      	subs	r2, #1
 80007f2:	2801      	cmp	r0, #1
 80007f4:	d100      	bne.n	80007f8 <__aeabi_fsub+0x1a4>
 80007f6:	e09c      	b.n	8000932 <__aeabi_fsub+0x2de>
 80007f8:	28ff      	cmp	r0, #255	; 0xff
 80007fa:	d026      	beq.n	800084a <__aeabi_fsub+0x1f6>
 80007fc:	4690      	mov	r8, r2
 80007fe:	e788      	b.n	8000712 <__aeabi_fsub+0xbe>
 8000800:	22ff      	movs	r2, #255	; 0xff
 8000802:	2700      	movs	r7, #0
 8000804:	e771      	b.n	80006ea <__aeabi_fsub+0x96>
 8000806:	20fe      	movs	r0, #254	; 0xfe
 8000808:	1c6a      	adds	r2, r5, #1
 800080a:	4210      	tst	r0, r2
 800080c:	d064      	beq.n	80008d8 <__aeabi_fsub+0x284>
 800080e:	2aff      	cmp	r2, #255	; 0xff
 8000810:	d0f6      	beq.n	8000800 <__aeabi_fsub+0x1ac>
 8000812:	0015      	movs	r5, r2
 8000814:	4466      	add	r6, ip
 8000816:	0870      	lsrs	r0, r6, #1
 8000818:	0743      	lsls	r3, r0, #29
 800081a:	d000      	beq.n	800081e <__aeabi_fsub+0x1ca>
 800081c:	e756      	b.n	80006cc <__aeabi_fsub+0x78>
 800081e:	08c3      	lsrs	r3, r0, #3
 8000820:	2dff      	cmp	r5, #255	; 0xff
 8000822:	d012      	beq.n	800084a <__aeabi_fsub+0x1f6>
 8000824:	025b      	lsls	r3, r3, #9
 8000826:	0a5f      	lsrs	r7, r3, #9
 8000828:	b2ea      	uxtb	r2, r5
 800082a:	e75e      	b.n	80006ea <__aeabi_fsub+0x96>
 800082c:	4662      	mov	r2, ip
 800082e:	2a00      	cmp	r2, #0
 8000830:	d100      	bne.n	8000834 <__aeabi_fsub+0x1e0>
 8000832:	e096      	b.n	8000962 <__aeabi_fsub+0x30e>
 8000834:	2e00      	cmp	r6, #0
 8000836:	d008      	beq.n	800084a <__aeabi_fsub+0x1f6>
 8000838:	2280      	movs	r2, #128	; 0x80
 800083a:	03d2      	lsls	r2, r2, #15
 800083c:	4213      	tst	r3, r2
 800083e:	d004      	beq.n	800084a <__aeabi_fsub+0x1f6>
 8000840:	4648      	mov	r0, r9
 8000842:	4210      	tst	r0, r2
 8000844:	d101      	bne.n	800084a <__aeabi_fsub+0x1f6>
 8000846:	000c      	movs	r4, r1
 8000848:	464b      	mov	r3, r9
 800084a:	2b00      	cmp	r3, #0
 800084c:	d0d8      	beq.n	8000800 <__aeabi_fsub+0x1ac>
 800084e:	2780      	movs	r7, #128	; 0x80
 8000850:	03ff      	lsls	r7, r7, #15
 8000852:	431f      	orrs	r7, r3
 8000854:	027f      	lsls	r7, r7, #9
 8000856:	22ff      	movs	r2, #255	; 0xff
 8000858:	0a7f      	lsrs	r7, r7, #9
 800085a:	e746      	b.n	80006ea <__aeabi_fsub+0x96>
 800085c:	2320      	movs	r3, #32
 800085e:	003a      	movs	r2, r7
 8000860:	1b45      	subs	r5, r0, r5
 8000862:	0038      	movs	r0, r7
 8000864:	3501      	adds	r5, #1
 8000866:	40ea      	lsrs	r2, r5
 8000868:	1b5d      	subs	r5, r3, r5
 800086a:	40a8      	lsls	r0, r5
 800086c:	1e43      	subs	r3, r0, #1
 800086e:	4198      	sbcs	r0, r3
 8000870:	2500      	movs	r5, #0
 8000872:	4310      	orrs	r0, r2
 8000874:	e728      	b.n	80006c8 <__aeabi_fsub+0x74>
 8000876:	2320      	movs	r3, #32
 8000878:	1a1b      	subs	r3, r3, r0
 800087a:	0032      	movs	r2, r6
 800087c:	409e      	lsls	r6, r3
 800087e:	40c2      	lsrs	r2, r0
 8000880:	0030      	movs	r0, r6
 8000882:	1e43      	subs	r3, r0, #1
 8000884:	4198      	sbcs	r0, r3
 8000886:	4310      	orrs	r0, r2
 8000888:	e70c      	b.n	80006a4 <__aeabi_fsub+0x50>
 800088a:	2aff      	cmp	r2, #255	; 0xff
 800088c:	d0db      	beq.n	8000846 <__aeabi_fsub+0x1f2>
 800088e:	2380      	movs	r3, #128	; 0x80
 8000890:	4660      	mov	r0, ip
 8000892:	04db      	lsls	r3, r3, #19
 8000894:	4318      	orrs	r0, r3
 8000896:	4684      	mov	ip, r0
 8000898:	2f1b      	cmp	r7, #27
 800089a:	dd56      	ble.n	800094a <__aeabi_fsub+0x2f6>
 800089c:	2001      	movs	r0, #1
 800089e:	000c      	movs	r4, r1
 80008a0:	0015      	movs	r5, r2
 80008a2:	1a30      	subs	r0, r6, r0
 80008a4:	e700      	b.n	80006a8 <__aeabi_fsub+0x54>
 80008a6:	4663      	mov	r3, ip
 80008a8:	1b9f      	subs	r7, r3, r6
 80008aa:	017b      	lsls	r3, r7, #5
 80008ac:	d43d      	bmi.n	800092a <__aeabi_fsub+0x2d6>
 80008ae:	2f00      	cmp	r7, #0
 80008b0:	d000      	beq.n	80008b4 <__aeabi_fsub+0x260>
 80008b2:	e6fe      	b.n	80006b2 <__aeabi_fsub+0x5e>
 80008b4:	2400      	movs	r4, #0
 80008b6:	2200      	movs	r2, #0
 80008b8:	2700      	movs	r7, #0
 80008ba:	e716      	b.n	80006ea <__aeabi_fsub+0x96>
 80008bc:	0005      	movs	r5, r0
 80008be:	e7af      	b.n	8000820 <__aeabi_fsub+0x1cc>
 80008c0:	0032      	movs	r2, r6
 80008c2:	4643      	mov	r3, r8
 80008c4:	4641      	mov	r1, r8
 80008c6:	40da      	lsrs	r2, r3
 80008c8:	2320      	movs	r3, #32
 80008ca:	1a5b      	subs	r3, r3, r1
 80008cc:	409e      	lsls	r6, r3
 80008ce:	0030      	movs	r0, r6
 80008d0:	1e43      	subs	r3, r0, #1
 80008d2:	4198      	sbcs	r0, r3
 80008d4:	4310      	orrs	r0, r2
 80008d6:	e721      	b.n	800071c <__aeabi_fsub+0xc8>
 80008d8:	2d00      	cmp	r5, #0
 80008da:	d1a7      	bne.n	800082c <__aeabi_fsub+0x1d8>
 80008dc:	4663      	mov	r3, ip
 80008de:	2b00      	cmp	r3, #0
 80008e0:	d059      	beq.n	8000996 <__aeabi_fsub+0x342>
 80008e2:	2200      	movs	r2, #0
 80008e4:	2e00      	cmp	r6, #0
 80008e6:	d100      	bne.n	80008ea <__aeabi_fsub+0x296>
 80008e8:	e6ff      	b.n	80006ea <__aeabi_fsub+0x96>
 80008ea:	0030      	movs	r0, r6
 80008ec:	4460      	add	r0, ip
 80008ee:	0143      	lsls	r3, r0, #5
 80008f0:	d592      	bpl.n	8000818 <__aeabi_fsub+0x1c4>
 80008f2:	4b2a      	ldr	r3, [pc, #168]	; (800099c <__aeabi_fsub+0x348>)
 80008f4:	3501      	adds	r5, #1
 80008f6:	4018      	ands	r0, r3
 80008f8:	e78e      	b.n	8000818 <__aeabi_fsub+0x1c4>
 80008fa:	4663      	mov	r3, ip
 80008fc:	2b00      	cmp	r3, #0
 80008fe:	d047      	beq.n	8000990 <__aeabi_fsub+0x33c>
 8000900:	1e4b      	subs	r3, r1, #1
 8000902:	2901      	cmp	r1, #1
 8000904:	d015      	beq.n	8000932 <__aeabi_fsub+0x2de>
 8000906:	29ff      	cmp	r1, #255	; 0xff
 8000908:	d02b      	beq.n	8000962 <__aeabi_fsub+0x30e>
 800090a:	0019      	movs	r1, r3
 800090c:	e74e      	b.n	80007ac <__aeabi_fsub+0x158>
 800090e:	000c      	movs	r4, r1
 8000910:	464b      	mov	r3, r9
 8000912:	003d      	movs	r5, r7
 8000914:	e784      	b.n	8000820 <__aeabi_fsub+0x1cc>
 8000916:	4662      	mov	r2, ip
 8000918:	2a00      	cmp	r2, #0
 800091a:	d18b      	bne.n	8000834 <__aeabi_fsub+0x1e0>
 800091c:	2e00      	cmp	r6, #0
 800091e:	d192      	bne.n	8000846 <__aeabi_fsub+0x1f2>
 8000920:	2780      	movs	r7, #128	; 0x80
 8000922:	2400      	movs	r4, #0
 8000924:	22ff      	movs	r2, #255	; 0xff
 8000926:	03ff      	lsls	r7, r7, #15
 8000928:	e6df      	b.n	80006ea <__aeabi_fsub+0x96>
 800092a:	4663      	mov	r3, ip
 800092c:	000c      	movs	r4, r1
 800092e:	1af7      	subs	r7, r6, r3
 8000930:	e6bf      	b.n	80006b2 <__aeabi_fsub+0x5e>
 8000932:	0030      	movs	r0, r6
 8000934:	4460      	add	r0, ip
 8000936:	2501      	movs	r5, #1
 8000938:	0143      	lsls	r3, r0, #5
 800093a:	d400      	bmi.n	800093e <__aeabi_fsub+0x2ea>
 800093c:	e76c      	b.n	8000818 <__aeabi_fsub+0x1c4>
 800093e:	2502      	movs	r5, #2
 8000940:	e6f2      	b.n	8000728 <__aeabi_fsub+0xd4>
 8000942:	4663      	mov	r3, ip
 8000944:	2501      	movs	r5, #1
 8000946:	1b98      	subs	r0, r3, r6
 8000948:	e6ae      	b.n	80006a8 <__aeabi_fsub+0x54>
 800094a:	2320      	movs	r3, #32
 800094c:	4664      	mov	r4, ip
 800094e:	4660      	mov	r0, ip
 8000950:	40fc      	lsrs	r4, r7
 8000952:	1bdf      	subs	r7, r3, r7
 8000954:	40b8      	lsls	r0, r7
 8000956:	1e43      	subs	r3, r0, #1
 8000958:	4198      	sbcs	r0, r3
 800095a:	4320      	orrs	r0, r4
 800095c:	e79f      	b.n	800089e <__aeabi_fsub+0x24a>
 800095e:	0005      	movs	r5, r0
 8000960:	e75e      	b.n	8000820 <__aeabi_fsub+0x1cc>
 8000962:	464b      	mov	r3, r9
 8000964:	e771      	b.n	800084a <__aeabi_fsub+0x1f6>
 8000966:	2320      	movs	r3, #32
 8000968:	4665      	mov	r5, ip
 800096a:	4660      	mov	r0, ip
 800096c:	40cd      	lsrs	r5, r1
 800096e:	1a59      	subs	r1, r3, r1
 8000970:	4088      	lsls	r0, r1
 8000972:	1e43      	subs	r3, r0, #1
 8000974:	4198      	sbcs	r0, r3
 8000976:	4328      	orrs	r0, r5
 8000978:	e71c      	b.n	80007b4 <__aeabi_fsub+0x160>
 800097a:	4663      	mov	r3, ip
 800097c:	000c      	movs	r4, r1
 800097e:	2501      	movs	r5, #1
 8000980:	1af0      	subs	r0, r6, r3
 8000982:	e691      	b.n	80006a8 <__aeabi_fsub+0x54>
 8000984:	2e00      	cmp	r6, #0
 8000986:	d095      	beq.n	80008b4 <__aeabi_fsub+0x260>
 8000988:	000c      	movs	r4, r1
 800098a:	464f      	mov	r7, r9
 800098c:	2200      	movs	r2, #0
 800098e:	e6ac      	b.n	80006ea <__aeabi_fsub+0x96>
 8000990:	464b      	mov	r3, r9
 8000992:	000d      	movs	r5, r1
 8000994:	e744      	b.n	8000820 <__aeabi_fsub+0x1cc>
 8000996:	464f      	mov	r7, r9
 8000998:	2200      	movs	r2, #0
 800099a:	e6a6      	b.n	80006ea <__aeabi_fsub+0x96>
 800099c:	fbffffff 	.word	0xfbffffff
 80009a0:	7dffffff 	.word	0x7dffffff
 80009a4:	2800      	cmp	r0, #0
 80009a6:	d000      	beq.n	80009aa <__aeabi_fsub+0x356>
 80009a8:	e736      	b.n	8000818 <__aeabi_fsub+0x1c4>
 80009aa:	2400      	movs	r4, #0
 80009ac:	2700      	movs	r7, #0
 80009ae:	e69c      	b.n	80006ea <__aeabi_fsub+0x96>

080009b0 <__aeabi_f2iz>:
 80009b0:	0241      	lsls	r1, r0, #9
 80009b2:	0042      	lsls	r2, r0, #1
 80009b4:	0fc3      	lsrs	r3, r0, #31
 80009b6:	0a49      	lsrs	r1, r1, #9
 80009b8:	2000      	movs	r0, #0
 80009ba:	0e12      	lsrs	r2, r2, #24
 80009bc:	2a7e      	cmp	r2, #126	; 0x7e
 80009be:	dd03      	ble.n	80009c8 <__aeabi_f2iz+0x18>
 80009c0:	2a9d      	cmp	r2, #157	; 0x9d
 80009c2:	dd02      	ble.n	80009ca <__aeabi_f2iz+0x1a>
 80009c4:	4a09      	ldr	r2, [pc, #36]	; (80009ec <__aeabi_f2iz+0x3c>)
 80009c6:	1898      	adds	r0, r3, r2
 80009c8:	4770      	bx	lr
 80009ca:	2080      	movs	r0, #128	; 0x80
 80009cc:	0400      	lsls	r0, r0, #16
 80009ce:	4301      	orrs	r1, r0
 80009d0:	2a95      	cmp	r2, #149	; 0x95
 80009d2:	dc07      	bgt.n	80009e4 <__aeabi_f2iz+0x34>
 80009d4:	2096      	movs	r0, #150	; 0x96
 80009d6:	1a82      	subs	r2, r0, r2
 80009d8:	40d1      	lsrs	r1, r2
 80009da:	4248      	negs	r0, r1
 80009dc:	2b00      	cmp	r3, #0
 80009de:	d1f3      	bne.n	80009c8 <__aeabi_f2iz+0x18>
 80009e0:	0008      	movs	r0, r1
 80009e2:	e7f1      	b.n	80009c8 <__aeabi_f2iz+0x18>
 80009e4:	3a96      	subs	r2, #150	; 0x96
 80009e6:	4091      	lsls	r1, r2
 80009e8:	e7f7      	b.n	80009da <__aeabi_f2iz+0x2a>
 80009ea:	46c0      	nop			; (mov r8, r8)
 80009ec:	7fffffff 	.word	0x7fffffff

080009f0 <__aeabi_i2f>:
 80009f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009f2:	2800      	cmp	r0, #0
 80009f4:	d013      	beq.n	8000a1e <__aeabi_i2f+0x2e>
 80009f6:	17c3      	asrs	r3, r0, #31
 80009f8:	18c6      	adds	r6, r0, r3
 80009fa:	405e      	eors	r6, r3
 80009fc:	0fc4      	lsrs	r4, r0, #31
 80009fe:	0030      	movs	r0, r6
 8000a00:	f000 ff54 	bl	80018ac <__clzsi2>
 8000a04:	239e      	movs	r3, #158	; 0x9e
 8000a06:	0005      	movs	r5, r0
 8000a08:	1a1b      	subs	r3, r3, r0
 8000a0a:	2b96      	cmp	r3, #150	; 0x96
 8000a0c:	dc0f      	bgt.n	8000a2e <__aeabi_i2f+0x3e>
 8000a0e:	2808      	cmp	r0, #8
 8000a10:	dd01      	ble.n	8000a16 <__aeabi_i2f+0x26>
 8000a12:	3d08      	subs	r5, #8
 8000a14:	40ae      	lsls	r6, r5
 8000a16:	0276      	lsls	r6, r6, #9
 8000a18:	0a76      	lsrs	r6, r6, #9
 8000a1a:	b2d8      	uxtb	r0, r3
 8000a1c:	e002      	b.n	8000a24 <__aeabi_i2f+0x34>
 8000a1e:	2400      	movs	r4, #0
 8000a20:	2000      	movs	r0, #0
 8000a22:	2600      	movs	r6, #0
 8000a24:	05c0      	lsls	r0, r0, #23
 8000a26:	4330      	orrs	r0, r6
 8000a28:	07e4      	lsls	r4, r4, #31
 8000a2a:	4320      	orrs	r0, r4
 8000a2c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000a2e:	2b99      	cmp	r3, #153	; 0x99
 8000a30:	dd0c      	ble.n	8000a4c <__aeabi_i2f+0x5c>
 8000a32:	2205      	movs	r2, #5
 8000a34:	0031      	movs	r1, r6
 8000a36:	1a12      	subs	r2, r2, r0
 8000a38:	40d1      	lsrs	r1, r2
 8000a3a:	000a      	movs	r2, r1
 8000a3c:	0001      	movs	r1, r0
 8000a3e:	0030      	movs	r0, r6
 8000a40:	311b      	adds	r1, #27
 8000a42:	4088      	lsls	r0, r1
 8000a44:	1e41      	subs	r1, r0, #1
 8000a46:	4188      	sbcs	r0, r1
 8000a48:	4302      	orrs	r2, r0
 8000a4a:	0016      	movs	r6, r2
 8000a4c:	2d05      	cmp	r5, #5
 8000a4e:	dc12      	bgt.n	8000a76 <__aeabi_i2f+0x86>
 8000a50:	0031      	movs	r1, r6
 8000a52:	4f0d      	ldr	r7, [pc, #52]	; (8000a88 <__aeabi_i2f+0x98>)
 8000a54:	4039      	ands	r1, r7
 8000a56:	0772      	lsls	r2, r6, #29
 8000a58:	d009      	beq.n	8000a6e <__aeabi_i2f+0x7e>
 8000a5a:	200f      	movs	r0, #15
 8000a5c:	4030      	ands	r0, r6
 8000a5e:	2804      	cmp	r0, #4
 8000a60:	d005      	beq.n	8000a6e <__aeabi_i2f+0x7e>
 8000a62:	3104      	adds	r1, #4
 8000a64:	014a      	lsls	r2, r1, #5
 8000a66:	d502      	bpl.n	8000a6e <__aeabi_i2f+0x7e>
 8000a68:	239f      	movs	r3, #159	; 0x9f
 8000a6a:	4039      	ands	r1, r7
 8000a6c:	1b5b      	subs	r3, r3, r5
 8000a6e:	0189      	lsls	r1, r1, #6
 8000a70:	0a4e      	lsrs	r6, r1, #9
 8000a72:	b2d8      	uxtb	r0, r3
 8000a74:	e7d6      	b.n	8000a24 <__aeabi_i2f+0x34>
 8000a76:	1f6a      	subs	r2, r5, #5
 8000a78:	4096      	lsls	r6, r2
 8000a7a:	0031      	movs	r1, r6
 8000a7c:	4f02      	ldr	r7, [pc, #8]	; (8000a88 <__aeabi_i2f+0x98>)
 8000a7e:	4039      	ands	r1, r7
 8000a80:	0772      	lsls	r2, r6, #29
 8000a82:	d0f4      	beq.n	8000a6e <__aeabi_i2f+0x7e>
 8000a84:	e7e9      	b.n	8000a5a <__aeabi_i2f+0x6a>
 8000a86:	46c0      	nop			; (mov r8, r8)
 8000a88:	fbffffff 	.word	0xfbffffff

08000a8c <__aeabi_ui2f>:
 8000a8c:	b570      	push	{r4, r5, r6, lr}
 8000a8e:	1e05      	subs	r5, r0, #0
 8000a90:	d00e      	beq.n	8000ab0 <__aeabi_ui2f+0x24>
 8000a92:	f000 ff0b 	bl	80018ac <__clzsi2>
 8000a96:	239e      	movs	r3, #158	; 0x9e
 8000a98:	0004      	movs	r4, r0
 8000a9a:	1a1b      	subs	r3, r3, r0
 8000a9c:	2b96      	cmp	r3, #150	; 0x96
 8000a9e:	dc0c      	bgt.n	8000aba <__aeabi_ui2f+0x2e>
 8000aa0:	2808      	cmp	r0, #8
 8000aa2:	dd01      	ble.n	8000aa8 <__aeabi_ui2f+0x1c>
 8000aa4:	3c08      	subs	r4, #8
 8000aa6:	40a5      	lsls	r5, r4
 8000aa8:	026d      	lsls	r5, r5, #9
 8000aaa:	0a6d      	lsrs	r5, r5, #9
 8000aac:	b2d8      	uxtb	r0, r3
 8000aae:	e001      	b.n	8000ab4 <__aeabi_ui2f+0x28>
 8000ab0:	2000      	movs	r0, #0
 8000ab2:	2500      	movs	r5, #0
 8000ab4:	05c0      	lsls	r0, r0, #23
 8000ab6:	4328      	orrs	r0, r5
 8000ab8:	bd70      	pop	{r4, r5, r6, pc}
 8000aba:	2b99      	cmp	r3, #153	; 0x99
 8000abc:	dd09      	ble.n	8000ad2 <__aeabi_ui2f+0x46>
 8000abe:	0002      	movs	r2, r0
 8000ac0:	0029      	movs	r1, r5
 8000ac2:	321b      	adds	r2, #27
 8000ac4:	4091      	lsls	r1, r2
 8000ac6:	1e4a      	subs	r2, r1, #1
 8000ac8:	4191      	sbcs	r1, r2
 8000aca:	2205      	movs	r2, #5
 8000acc:	1a12      	subs	r2, r2, r0
 8000ace:	40d5      	lsrs	r5, r2
 8000ad0:	430d      	orrs	r5, r1
 8000ad2:	2c05      	cmp	r4, #5
 8000ad4:	dc12      	bgt.n	8000afc <__aeabi_ui2f+0x70>
 8000ad6:	0029      	movs	r1, r5
 8000ad8:	4e0c      	ldr	r6, [pc, #48]	; (8000b0c <__aeabi_ui2f+0x80>)
 8000ada:	4031      	ands	r1, r6
 8000adc:	076a      	lsls	r2, r5, #29
 8000ade:	d009      	beq.n	8000af4 <__aeabi_ui2f+0x68>
 8000ae0:	200f      	movs	r0, #15
 8000ae2:	4028      	ands	r0, r5
 8000ae4:	2804      	cmp	r0, #4
 8000ae6:	d005      	beq.n	8000af4 <__aeabi_ui2f+0x68>
 8000ae8:	3104      	adds	r1, #4
 8000aea:	014a      	lsls	r2, r1, #5
 8000aec:	d502      	bpl.n	8000af4 <__aeabi_ui2f+0x68>
 8000aee:	239f      	movs	r3, #159	; 0x9f
 8000af0:	4031      	ands	r1, r6
 8000af2:	1b1b      	subs	r3, r3, r4
 8000af4:	0189      	lsls	r1, r1, #6
 8000af6:	0a4d      	lsrs	r5, r1, #9
 8000af8:	b2d8      	uxtb	r0, r3
 8000afa:	e7db      	b.n	8000ab4 <__aeabi_ui2f+0x28>
 8000afc:	1f62      	subs	r2, r4, #5
 8000afe:	4095      	lsls	r5, r2
 8000b00:	0029      	movs	r1, r5
 8000b02:	4e02      	ldr	r6, [pc, #8]	; (8000b0c <__aeabi_ui2f+0x80>)
 8000b04:	4031      	ands	r1, r6
 8000b06:	076a      	lsls	r2, r5, #29
 8000b08:	d0f4      	beq.n	8000af4 <__aeabi_ui2f+0x68>
 8000b0a:	e7e9      	b.n	8000ae0 <__aeabi_ui2f+0x54>
 8000b0c:	fbffffff 	.word	0xfbffffff

08000b10 <__aeabi_dmul>:
 8000b10:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000b12:	4657      	mov	r7, sl
 8000b14:	464e      	mov	r6, r9
 8000b16:	4645      	mov	r5, r8
 8000b18:	46de      	mov	lr, fp
 8000b1a:	b5e0      	push	{r5, r6, r7, lr}
 8000b1c:	4698      	mov	r8, r3
 8000b1e:	030c      	lsls	r4, r1, #12
 8000b20:	004b      	lsls	r3, r1, #1
 8000b22:	0006      	movs	r6, r0
 8000b24:	4692      	mov	sl, r2
 8000b26:	b087      	sub	sp, #28
 8000b28:	0b24      	lsrs	r4, r4, #12
 8000b2a:	0d5b      	lsrs	r3, r3, #21
 8000b2c:	0fcf      	lsrs	r7, r1, #31
 8000b2e:	2b00      	cmp	r3, #0
 8000b30:	d100      	bne.n	8000b34 <__aeabi_dmul+0x24>
 8000b32:	e15c      	b.n	8000dee <__aeabi_dmul+0x2de>
 8000b34:	4ad9      	ldr	r2, [pc, #868]	; (8000e9c <__aeabi_dmul+0x38c>)
 8000b36:	4293      	cmp	r3, r2
 8000b38:	d100      	bne.n	8000b3c <__aeabi_dmul+0x2c>
 8000b3a:	e175      	b.n	8000e28 <__aeabi_dmul+0x318>
 8000b3c:	0f42      	lsrs	r2, r0, #29
 8000b3e:	00e4      	lsls	r4, r4, #3
 8000b40:	4314      	orrs	r4, r2
 8000b42:	2280      	movs	r2, #128	; 0x80
 8000b44:	0412      	lsls	r2, r2, #16
 8000b46:	4314      	orrs	r4, r2
 8000b48:	4ad5      	ldr	r2, [pc, #852]	; (8000ea0 <__aeabi_dmul+0x390>)
 8000b4a:	00c5      	lsls	r5, r0, #3
 8000b4c:	4694      	mov	ip, r2
 8000b4e:	4463      	add	r3, ip
 8000b50:	9300      	str	r3, [sp, #0]
 8000b52:	2300      	movs	r3, #0
 8000b54:	4699      	mov	r9, r3
 8000b56:	469b      	mov	fp, r3
 8000b58:	4643      	mov	r3, r8
 8000b5a:	4642      	mov	r2, r8
 8000b5c:	031e      	lsls	r6, r3, #12
 8000b5e:	0fd2      	lsrs	r2, r2, #31
 8000b60:	005b      	lsls	r3, r3, #1
 8000b62:	4650      	mov	r0, sl
 8000b64:	4690      	mov	r8, r2
 8000b66:	0b36      	lsrs	r6, r6, #12
 8000b68:	0d5b      	lsrs	r3, r3, #21
 8000b6a:	d100      	bne.n	8000b6e <__aeabi_dmul+0x5e>
 8000b6c:	e120      	b.n	8000db0 <__aeabi_dmul+0x2a0>
 8000b6e:	4acb      	ldr	r2, [pc, #812]	; (8000e9c <__aeabi_dmul+0x38c>)
 8000b70:	4293      	cmp	r3, r2
 8000b72:	d100      	bne.n	8000b76 <__aeabi_dmul+0x66>
 8000b74:	e162      	b.n	8000e3c <__aeabi_dmul+0x32c>
 8000b76:	49ca      	ldr	r1, [pc, #808]	; (8000ea0 <__aeabi_dmul+0x390>)
 8000b78:	0f42      	lsrs	r2, r0, #29
 8000b7a:	468c      	mov	ip, r1
 8000b7c:	9900      	ldr	r1, [sp, #0]
 8000b7e:	4463      	add	r3, ip
 8000b80:	00f6      	lsls	r6, r6, #3
 8000b82:	468c      	mov	ip, r1
 8000b84:	4316      	orrs	r6, r2
 8000b86:	2280      	movs	r2, #128	; 0x80
 8000b88:	449c      	add	ip, r3
 8000b8a:	0412      	lsls	r2, r2, #16
 8000b8c:	4663      	mov	r3, ip
 8000b8e:	4316      	orrs	r6, r2
 8000b90:	00c2      	lsls	r2, r0, #3
 8000b92:	2000      	movs	r0, #0
 8000b94:	9300      	str	r3, [sp, #0]
 8000b96:	9900      	ldr	r1, [sp, #0]
 8000b98:	4643      	mov	r3, r8
 8000b9a:	3101      	adds	r1, #1
 8000b9c:	468c      	mov	ip, r1
 8000b9e:	4649      	mov	r1, r9
 8000ba0:	407b      	eors	r3, r7
 8000ba2:	9301      	str	r3, [sp, #4]
 8000ba4:	290f      	cmp	r1, #15
 8000ba6:	d826      	bhi.n	8000bf6 <__aeabi_dmul+0xe6>
 8000ba8:	4bbe      	ldr	r3, [pc, #760]	; (8000ea4 <__aeabi_dmul+0x394>)
 8000baa:	0089      	lsls	r1, r1, #2
 8000bac:	5859      	ldr	r1, [r3, r1]
 8000bae:	468f      	mov	pc, r1
 8000bb0:	4643      	mov	r3, r8
 8000bb2:	9301      	str	r3, [sp, #4]
 8000bb4:	0034      	movs	r4, r6
 8000bb6:	0015      	movs	r5, r2
 8000bb8:	4683      	mov	fp, r0
 8000bba:	465b      	mov	r3, fp
 8000bbc:	2b02      	cmp	r3, #2
 8000bbe:	d016      	beq.n	8000bee <__aeabi_dmul+0xde>
 8000bc0:	2b03      	cmp	r3, #3
 8000bc2:	d100      	bne.n	8000bc6 <__aeabi_dmul+0xb6>
 8000bc4:	e203      	b.n	8000fce <__aeabi_dmul+0x4be>
 8000bc6:	2b01      	cmp	r3, #1
 8000bc8:	d000      	beq.n	8000bcc <__aeabi_dmul+0xbc>
 8000bca:	e0cd      	b.n	8000d68 <__aeabi_dmul+0x258>
 8000bcc:	2200      	movs	r2, #0
 8000bce:	2400      	movs	r4, #0
 8000bd0:	2500      	movs	r5, #0
 8000bd2:	9b01      	ldr	r3, [sp, #4]
 8000bd4:	0512      	lsls	r2, r2, #20
 8000bd6:	4322      	orrs	r2, r4
 8000bd8:	07db      	lsls	r3, r3, #31
 8000bda:	431a      	orrs	r2, r3
 8000bdc:	0028      	movs	r0, r5
 8000bde:	0011      	movs	r1, r2
 8000be0:	b007      	add	sp, #28
 8000be2:	bcf0      	pop	{r4, r5, r6, r7}
 8000be4:	46bb      	mov	fp, r7
 8000be6:	46b2      	mov	sl, r6
 8000be8:	46a9      	mov	r9, r5
 8000bea:	46a0      	mov	r8, r4
 8000bec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000bee:	2400      	movs	r4, #0
 8000bf0:	2500      	movs	r5, #0
 8000bf2:	4aaa      	ldr	r2, [pc, #680]	; (8000e9c <__aeabi_dmul+0x38c>)
 8000bf4:	e7ed      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000bf6:	0c28      	lsrs	r0, r5, #16
 8000bf8:	042d      	lsls	r5, r5, #16
 8000bfa:	0c2d      	lsrs	r5, r5, #16
 8000bfc:	002b      	movs	r3, r5
 8000bfe:	0c11      	lsrs	r1, r2, #16
 8000c00:	0412      	lsls	r2, r2, #16
 8000c02:	0c12      	lsrs	r2, r2, #16
 8000c04:	4353      	muls	r3, r2
 8000c06:	4698      	mov	r8, r3
 8000c08:	0013      	movs	r3, r2
 8000c0a:	002f      	movs	r7, r5
 8000c0c:	4343      	muls	r3, r0
 8000c0e:	4699      	mov	r9, r3
 8000c10:	434f      	muls	r7, r1
 8000c12:	444f      	add	r7, r9
 8000c14:	46bb      	mov	fp, r7
 8000c16:	4647      	mov	r7, r8
 8000c18:	000b      	movs	r3, r1
 8000c1a:	0c3f      	lsrs	r7, r7, #16
 8000c1c:	46ba      	mov	sl, r7
 8000c1e:	4343      	muls	r3, r0
 8000c20:	44da      	add	sl, fp
 8000c22:	9302      	str	r3, [sp, #8]
 8000c24:	45d1      	cmp	r9, sl
 8000c26:	d904      	bls.n	8000c32 <__aeabi_dmul+0x122>
 8000c28:	2780      	movs	r7, #128	; 0x80
 8000c2a:	027f      	lsls	r7, r7, #9
 8000c2c:	46b9      	mov	r9, r7
 8000c2e:	444b      	add	r3, r9
 8000c30:	9302      	str	r3, [sp, #8]
 8000c32:	4653      	mov	r3, sl
 8000c34:	0c1b      	lsrs	r3, r3, #16
 8000c36:	469b      	mov	fp, r3
 8000c38:	4653      	mov	r3, sl
 8000c3a:	041f      	lsls	r7, r3, #16
 8000c3c:	4643      	mov	r3, r8
 8000c3e:	041b      	lsls	r3, r3, #16
 8000c40:	0c1b      	lsrs	r3, r3, #16
 8000c42:	4698      	mov	r8, r3
 8000c44:	003b      	movs	r3, r7
 8000c46:	4443      	add	r3, r8
 8000c48:	9304      	str	r3, [sp, #16]
 8000c4a:	0c33      	lsrs	r3, r6, #16
 8000c4c:	0436      	lsls	r6, r6, #16
 8000c4e:	0c36      	lsrs	r6, r6, #16
 8000c50:	4698      	mov	r8, r3
 8000c52:	0033      	movs	r3, r6
 8000c54:	4343      	muls	r3, r0
 8000c56:	4699      	mov	r9, r3
 8000c58:	4643      	mov	r3, r8
 8000c5a:	4343      	muls	r3, r0
 8000c5c:	002f      	movs	r7, r5
 8000c5e:	469a      	mov	sl, r3
 8000c60:	4643      	mov	r3, r8
 8000c62:	4377      	muls	r7, r6
 8000c64:	435d      	muls	r5, r3
 8000c66:	0c38      	lsrs	r0, r7, #16
 8000c68:	444d      	add	r5, r9
 8000c6a:	1945      	adds	r5, r0, r5
 8000c6c:	45a9      	cmp	r9, r5
 8000c6e:	d903      	bls.n	8000c78 <__aeabi_dmul+0x168>
 8000c70:	2380      	movs	r3, #128	; 0x80
 8000c72:	025b      	lsls	r3, r3, #9
 8000c74:	4699      	mov	r9, r3
 8000c76:	44ca      	add	sl, r9
 8000c78:	043f      	lsls	r7, r7, #16
 8000c7a:	0c28      	lsrs	r0, r5, #16
 8000c7c:	0c3f      	lsrs	r7, r7, #16
 8000c7e:	042d      	lsls	r5, r5, #16
 8000c80:	19ed      	adds	r5, r5, r7
 8000c82:	0c27      	lsrs	r7, r4, #16
 8000c84:	0424      	lsls	r4, r4, #16
 8000c86:	0c24      	lsrs	r4, r4, #16
 8000c88:	0003      	movs	r3, r0
 8000c8a:	0020      	movs	r0, r4
 8000c8c:	4350      	muls	r0, r2
 8000c8e:	437a      	muls	r2, r7
 8000c90:	4691      	mov	r9, r2
 8000c92:	003a      	movs	r2, r7
 8000c94:	4453      	add	r3, sl
 8000c96:	9305      	str	r3, [sp, #20]
 8000c98:	0c03      	lsrs	r3, r0, #16
 8000c9a:	469a      	mov	sl, r3
 8000c9c:	434a      	muls	r2, r1
 8000c9e:	4361      	muls	r1, r4
 8000ca0:	4449      	add	r1, r9
 8000ca2:	4451      	add	r1, sl
 8000ca4:	44ab      	add	fp, r5
 8000ca6:	4589      	cmp	r9, r1
 8000ca8:	d903      	bls.n	8000cb2 <__aeabi_dmul+0x1a2>
 8000caa:	2380      	movs	r3, #128	; 0x80
 8000cac:	025b      	lsls	r3, r3, #9
 8000cae:	4699      	mov	r9, r3
 8000cb0:	444a      	add	r2, r9
 8000cb2:	0400      	lsls	r0, r0, #16
 8000cb4:	0c0b      	lsrs	r3, r1, #16
 8000cb6:	0c00      	lsrs	r0, r0, #16
 8000cb8:	0409      	lsls	r1, r1, #16
 8000cba:	1809      	adds	r1, r1, r0
 8000cbc:	0020      	movs	r0, r4
 8000cbe:	4699      	mov	r9, r3
 8000cc0:	4643      	mov	r3, r8
 8000cc2:	4370      	muls	r0, r6
 8000cc4:	435c      	muls	r4, r3
 8000cc6:	437e      	muls	r6, r7
 8000cc8:	435f      	muls	r7, r3
 8000cca:	0c03      	lsrs	r3, r0, #16
 8000ccc:	4698      	mov	r8, r3
 8000cce:	19a4      	adds	r4, r4, r6
 8000cd0:	4444      	add	r4, r8
 8000cd2:	444a      	add	r2, r9
 8000cd4:	9703      	str	r7, [sp, #12]
 8000cd6:	42a6      	cmp	r6, r4
 8000cd8:	d904      	bls.n	8000ce4 <__aeabi_dmul+0x1d4>
 8000cda:	2380      	movs	r3, #128	; 0x80
 8000cdc:	025b      	lsls	r3, r3, #9
 8000cde:	4698      	mov	r8, r3
 8000ce0:	4447      	add	r7, r8
 8000ce2:	9703      	str	r7, [sp, #12]
 8000ce4:	0423      	lsls	r3, r4, #16
 8000ce6:	9e02      	ldr	r6, [sp, #8]
 8000ce8:	469a      	mov	sl, r3
 8000cea:	9b05      	ldr	r3, [sp, #20]
 8000cec:	445e      	add	r6, fp
 8000cee:	4698      	mov	r8, r3
 8000cf0:	42ae      	cmp	r6, r5
 8000cf2:	41ad      	sbcs	r5, r5
 8000cf4:	1876      	adds	r6, r6, r1
 8000cf6:	428e      	cmp	r6, r1
 8000cf8:	4189      	sbcs	r1, r1
 8000cfa:	0400      	lsls	r0, r0, #16
 8000cfc:	0c00      	lsrs	r0, r0, #16
 8000cfe:	4450      	add	r0, sl
 8000d00:	4440      	add	r0, r8
 8000d02:	426d      	negs	r5, r5
 8000d04:	1947      	adds	r7, r0, r5
 8000d06:	46b8      	mov	r8, r7
 8000d08:	4693      	mov	fp, r2
 8000d0a:	4249      	negs	r1, r1
 8000d0c:	4689      	mov	r9, r1
 8000d0e:	44c3      	add	fp, r8
 8000d10:	44d9      	add	r9, fp
 8000d12:	4298      	cmp	r0, r3
 8000d14:	4180      	sbcs	r0, r0
 8000d16:	45a8      	cmp	r8, r5
 8000d18:	41ad      	sbcs	r5, r5
 8000d1a:	4593      	cmp	fp, r2
 8000d1c:	4192      	sbcs	r2, r2
 8000d1e:	4589      	cmp	r9, r1
 8000d20:	4189      	sbcs	r1, r1
 8000d22:	426d      	negs	r5, r5
 8000d24:	4240      	negs	r0, r0
 8000d26:	4328      	orrs	r0, r5
 8000d28:	0c24      	lsrs	r4, r4, #16
 8000d2a:	4252      	negs	r2, r2
 8000d2c:	4249      	negs	r1, r1
 8000d2e:	430a      	orrs	r2, r1
 8000d30:	9b03      	ldr	r3, [sp, #12]
 8000d32:	1900      	adds	r0, r0, r4
 8000d34:	1880      	adds	r0, r0, r2
 8000d36:	18c7      	adds	r7, r0, r3
 8000d38:	464b      	mov	r3, r9
 8000d3a:	0ddc      	lsrs	r4, r3, #23
 8000d3c:	9b04      	ldr	r3, [sp, #16]
 8000d3e:	0275      	lsls	r5, r6, #9
 8000d40:	431d      	orrs	r5, r3
 8000d42:	1e6a      	subs	r2, r5, #1
 8000d44:	4195      	sbcs	r5, r2
 8000d46:	464b      	mov	r3, r9
 8000d48:	0df6      	lsrs	r6, r6, #23
 8000d4a:	027f      	lsls	r7, r7, #9
 8000d4c:	4335      	orrs	r5, r6
 8000d4e:	025a      	lsls	r2, r3, #9
 8000d50:	433c      	orrs	r4, r7
 8000d52:	4315      	orrs	r5, r2
 8000d54:	01fb      	lsls	r3, r7, #7
 8000d56:	d400      	bmi.n	8000d5a <__aeabi_dmul+0x24a>
 8000d58:	e11c      	b.n	8000f94 <__aeabi_dmul+0x484>
 8000d5a:	2101      	movs	r1, #1
 8000d5c:	086a      	lsrs	r2, r5, #1
 8000d5e:	400d      	ands	r5, r1
 8000d60:	4315      	orrs	r5, r2
 8000d62:	07e2      	lsls	r2, r4, #31
 8000d64:	4315      	orrs	r5, r2
 8000d66:	0864      	lsrs	r4, r4, #1
 8000d68:	494f      	ldr	r1, [pc, #316]	; (8000ea8 <__aeabi_dmul+0x398>)
 8000d6a:	4461      	add	r1, ip
 8000d6c:	2900      	cmp	r1, #0
 8000d6e:	dc00      	bgt.n	8000d72 <__aeabi_dmul+0x262>
 8000d70:	e0b0      	b.n	8000ed4 <__aeabi_dmul+0x3c4>
 8000d72:	076b      	lsls	r3, r5, #29
 8000d74:	d009      	beq.n	8000d8a <__aeabi_dmul+0x27a>
 8000d76:	220f      	movs	r2, #15
 8000d78:	402a      	ands	r2, r5
 8000d7a:	2a04      	cmp	r2, #4
 8000d7c:	d005      	beq.n	8000d8a <__aeabi_dmul+0x27a>
 8000d7e:	1d2a      	adds	r2, r5, #4
 8000d80:	42aa      	cmp	r2, r5
 8000d82:	41ad      	sbcs	r5, r5
 8000d84:	426d      	negs	r5, r5
 8000d86:	1964      	adds	r4, r4, r5
 8000d88:	0015      	movs	r5, r2
 8000d8a:	01e3      	lsls	r3, r4, #7
 8000d8c:	d504      	bpl.n	8000d98 <__aeabi_dmul+0x288>
 8000d8e:	2180      	movs	r1, #128	; 0x80
 8000d90:	4a46      	ldr	r2, [pc, #280]	; (8000eac <__aeabi_dmul+0x39c>)
 8000d92:	00c9      	lsls	r1, r1, #3
 8000d94:	4014      	ands	r4, r2
 8000d96:	4461      	add	r1, ip
 8000d98:	4a45      	ldr	r2, [pc, #276]	; (8000eb0 <__aeabi_dmul+0x3a0>)
 8000d9a:	4291      	cmp	r1, r2
 8000d9c:	dd00      	ble.n	8000da0 <__aeabi_dmul+0x290>
 8000d9e:	e726      	b.n	8000bee <__aeabi_dmul+0xde>
 8000da0:	0762      	lsls	r2, r4, #29
 8000da2:	08ed      	lsrs	r5, r5, #3
 8000da4:	0264      	lsls	r4, r4, #9
 8000da6:	0549      	lsls	r1, r1, #21
 8000da8:	4315      	orrs	r5, r2
 8000daa:	0b24      	lsrs	r4, r4, #12
 8000dac:	0d4a      	lsrs	r2, r1, #21
 8000dae:	e710      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000db0:	4652      	mov	r2, sl
 8000db2:	4332      	orrs	r2, r6
 8000db4:	d100      	bne.n	8000db8 <__aeabi_dmul+0x2a8>
 8000db6:	e07f      	b.n	8000eb8 <__aeabi_dmul+0x3a8>
 8000db8:	2e00      	cmp	r6, #0
 8000dba:	d100      	bne.n	8000dbe <__aeabi_dmul+0x2ae>
 8000dbc:	e0dc      	b.n	8000f78 <__aeabi_dmul+0x468>
 8000dbe:	0030      	movs	r0, r6
 8000dc0:	f000 fd74 	bl	80018ac <__clzsi2>
 8000dc4:	0002      	movs	r2, r0
 8000dc6:	3a0b      	subs	r2, #11
 8000dc8:	231d      	movs	r3, #29
 8000dca:	0001      	movs	r1, r0
 8000dcc:	1a9b      	subs	r3, r3, r2
 8000dce:	4652      	mov	r2, sl
 8000dd0:	3908      	subs	r1, #8
 8000dd2:	40da      	lsrs	r2, r3
 8000dd4:	408e      	lsls	r6, r1
 8000dd6:	4316      	orrs	r6, r2
 8000dd8:	4652      	mov	r2, sl
 8000dda:	408a      	lsls	r2, r1
 8000ddc:	9b00      	ldr	r3, [sp, #0]
 8000dde:	4935      	ldr	r1, [pc, #212]	; (8000eb4 <__aeabi_dmul+0x3a4>)
 8000de0:	1a18      	subs	r0, r3, r0
 8000de2:	0003      	movs	r3, r0
 8000de4:	468c      	mov	ip, r1
 8000de6:	4463      	add	r3, ip
 8000de8:	2000      	movs	r0, #0
 8000dea:	9300      	str	r3, [sp, #0]
 8000dec:	e6d3      	b.n	8000b96 <__aeabi_dmul+0x86>
 8000dee:	0025      	movs	r5, r4
 8000df0:	4305      	orrs	r5, r0
 8000df2:	d04a      	beq.n	8000e8a <__aeabi_dmul+0x37a>
 8000df4:	2c00      	cmp	r4, #0
 8000df6:	d100      	bne.n	8000dfa <__aeabi_dmul+0x2ea>
 8000df8:	e0b0      	b.n	8000f5c <__aeabi_dmul+0x44c>
 8000dfa:	0020      	movs	r0, r4
 8000dfc:	f000 fd56 	bl	80018ac <__clzsi2>
 8000e00:	0001      	movs	r1, r0
 8000e02:	0002      	movs	r2, r0
 8000e04:	390b      	subs	r1, #11
 8000e06:	231d      	movs	r3, #29
 8000e08:	0010      	movs	r0, r2
 8000e0a:	1a5b      	subs	r3, r3, r1
 8000e0c:	0031      	movs	r1, r6
 8000e0e:	0035      	movs	r5, r6
 8000e10:	3808      	subs	r0, #8
 8000e12:	4084      	lsls	r4, r0
 8000e14:	40d9      	lsrs	r1, r3
 8000e16:	4085      	lsls	r5, r0
 8000e18:	430c      	orrs	r4, r1
 8000e1a:	4826      	ldr	r0, [pc, #152]	; (8000eb4 <__aeabi_dmul+0x3a4>)
 8000e1c:	1a83      	subs	r3, r0, r2
 8000e1e:	9300      	str	r3, [sp, #0]
 8000e20:	2300      	movs	r3, #0
 8000e22:	4699      	mov	r9, r3
 8000e24:	469b      	mov	fp, r3
 8000e26:	e697      	b.n	8000b58 <__aeabi_dmul+0x48>
 8000e28:	0005      	movs	r5, r0
 8000e2a:	4325      	orrs	r5, r4
 8000e2c:	d126      	bne.n	8000e7c <__aeabi_dmul+0x36c>
 8000e2e:	2208      	movs	r2, #8
 8000e30:	9300      	str	r3, [sp, #0]
 8000e32:	2302      	movs	r3, #2
 8000e34:	2400      	movs	r4, #0
 8000e36:	4691      	mov	r9, r2
 8000e38:	469b      	mov	fp, r3
 8000e3a:	e68d      	b.n	8000b58 <__aeabi_dmul+0x48>
 8000e3c:	4652      	mov	r2, sl
 8000e3e:	9b00      	ldr	r3, [sp, #0]
 8000e40:	4332      	orrs	r2, r6
 8000e42:	d110      	bne.n	8000e66 <__aeabi_dmul+0x356>
 8000e44:	4915      	ldr	r1, [pc, #84]	; (8000e9c <__aeabi_dmul+0x38c>)
 8000e46:	2600      	movs	r6, #0
 8000e48:	468c      	mov	ip, r1
 8000e4a:	4463      	add	r3, ip
 8000e4c:	4649      	mov	r1, r9
 8000e4e:	9300      	str	r3, [sp, #0]
 8000e50:	2302      	movs	r3, #2
 8000e52:	4319      	orrs	r1, r3
 8000e54:	4689      	mov	r9, r1
 8000e56:	2002      	movs	r0, #2
 8000e58:	e69d      	b.n	8000b96 <__aeabi_dmul+0x86>
 8000e5a:	465b      	mov	r3, fp
 8000e5c:	9701      	str	r7, [sp, #4]
 8000e5e:	2b02      	cmp	r3, #2
 8000e60:	d000      	beq.n	8000e64 <__aeabi_dmul+0x354>
 8000e62:	e6ad      	b.n	8000bc0 <__aeabi_dmul+0xb0>
 8000e64:	e6c3      	b.n	8000bee <__aeabi_dmul+0xde>
 8000e66:	4a0d      	ldr	r2, [pc, #52]	; (8000e9c <__aeabi_dmul+0x38c>)
 8000e68:	2003      	movs	r0, #3
 8000e6a:	4694      	mov	ip, r2
 8000e6c:	4463      	add	r3, ip
 8000e6e:	464a      	mov	r2, r9
 8000e70:	9300      	str	r3, [sp, #0]
 8000e72:	2303      	movs	r3, #3
 8000e74:	431a      	orrs	r2, r3
 8000e76:	4691      	mov	r9, r2
 8000e78:	4652      	mov	r2, sl
 8000e7a:	e68c      	b.n	8000b96 <__aeabi_dmul+0x86>
 8000e7c:	220c      	movs	r2, #12
 8000e7e:	9300      	str	r3, [sp, #0]
 8000e80:	2303      	movs	r3, #3
 8000e82:	0005      	movs	r5, r0
 8000e84:	4691      	mov	r9, r2
 8000e86:	469b      	mov	fp, r3
 8000e88:	e666      	b.n	8000b58 <__aeabi_dmul+0x48>
 8000e8a:	2304      	movs	r3, #4
 8000e8c:	4699      	mov	r9, r3
 8000e8e:	2300      	movs	r3, #0
 8000e90:	9300      	str	r3, [sp, #0]
 8000e92:	3301      	adds	r3, #1
 8000e94:	2400      	movs	r4, #0
 8000e96:	469b      	mov	fp, r3
 8000e98:	e65e      	b.n	8000b58 <__aeabi_dmul+0x48>
 8000e9a:	46c0      	nop			; (mov r8, r8)
 8000e9c:	000007ff 	.word	0x000007ff
 8000ea0:	fffffc01 	.word	0xfffffc01
 8000ea4:	080026d0 	.word	0x080026d0
 8000ea8:	000003ff 	.word	0x000003ff
 8000eac:	feffffff 	.word	0xfeffffff
 8000eb0:	000007fe 	.word	0x000007fe
 8000eb4:	fffffc0d 	.word	0xfffffc0d
 8000eb8:	4649      	mov	r1, r9
 8000eba:	2301      	movs	r3, #1
 8000ebc:	4319      	orrs	r1, r3
 8000ebe:	4689      	mov	r9, r1
 8000ec0:	2600      	movs	r6, #0
 8000ec2:	2001      	movs	r0, #1
 8000ec4:	e667      	b.n	8000b96 <__aeabi_dmul+0x86>
 8000ec6:	2300      	movs	r3, #0
 8000ec8:	2480      	movs	r4, #128	; 0x80
 8000eca:	2500      	movs	r5, #0
 8000ecc:	4a43      	ldr	r2, [pc, #268]	; (8000fdc <__aeabi_dmul+0x4cc>)
 8000ece:	9301      	str	r3, [sp, #4]
 8000ed0:	0324      	lsls	r4, r4, #12
 8000ed2:	e67e      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000ed4:	2001      	movs	r0, #1
 8000ed6:	1a40      	subs	r0, r0, r1
 8000ed8:	2838      	cmp	r0, #56	; 0x38
 8000eda:	dd00      	ble.n	8000ede <__aeabi_dmul+0x3ce>
 8000edc:	e676      	b.n	8000bcc <__aeabi_dmul+0xbc>
 8000ede:	281f      	cmp	r0, #31
 8000ee0:	dd5b      	ble.n	8000f9a <__aeabi_dmul+0x48a>
 8000ee2:	221f      	movs	r2, #31
 8000ee4:	0023      	movs	r3, r4
 8000ee6:	4252      	negs	r2, r2
 8000ee8:	1a51      	subs	r1, r2, r1
 8000eea:	40cb      	lsrs	r3, r1
 8000eec:	0019      	movs	r1, r3
 8000eee:	2820      	cmp	r0, #32
 8000ef0:	d003      	beq.n	8000efa <__aeabi_dmul+0x3ea>
 8000ef2:	4a3b      	ldr	r2, [pc, #236]	; (8000fe0 <__aeabi_dmul+0x4d0>)
 8000ef4:	4462      	add	r2, ip
 8000ef6:	4094      	lsls	r4, r2
 8000ef8:	4325      	orrs	r5, r4
 8000efa:	1e6a      	subs	r2, r5, #1
 8000efc:	4195      	sbcs	r5, r2
 8000efe:	002a      	movs	r2, r5
 8000f00:	430a      	orrs	r2, r1
 8000f02:	2107      	movs	r1, #7
 8000f04:	000d      	movs	r5, r1
 8000f06:	2400      	movs	r4, #0
 8000f08:	4015      	ands	r5, r2
 8000f0a:	4211      	tst	r1, r2
 8000f0c:	d05b      	beq.n	8000fc6 <__aeabi_dmul+0x4b6>
 8000f0e:	210f      	movs	r1, #15
 8000f10:	2400      	movs	r4, #0
 8000f12:	4011      	ands	r1, r2
 8000f14:	2904      	cmp	r1, #4
 8000f16:	d053      	beq.n	8000fc0 <__aeabi_dmul+0x4b0>
 8000f18:	1d11      	adds	r1, r2, #4
 8000f1a:	4291      	cmp	r1, r2
 8000f1c:	4192      	sbcs	r2, r2
 8000f1e:	4252      	negs	r2, r2
 8000f20:	18a4      	adds	r4, r4, r2
 8000f22:	000a      	movs	r2, r1
 8000f24:	0223      	lsls	r3, r4, #8
 8000f26:	d54b      	bpl.n	8000fc0 <__aeabi_dmul+0x4b0>
 8000f28:	2201      	movs	r2, #1
 8000f2a:	2400      	movs	r4, #0
 8000f2c:	2500      	movs	r5, #0
 8000f2e:	e650      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000f30:	2380      	movs	r3, #128	; 0x80
 8000f32:	031b      	lsls	r3, r3, #12
 8000f34:	421c      	tst	r4, r3
 8000f36:	d009      	beq.n	8000f4c <__aeabi_dmul+0x43c>
 8000f38:	421e      	tst	r6, r3
 8000f3a:	d107      	bne.n	8000f4c <__aeabi_dmul+0x43c>
 8000f3c:	4333      	orrs	r3, r6
 8000f3e:	031c      	lsls	r4, r3, #12
 8000f40:	4643      	mov	r3, r8
 8000f42:	0015      	movs	r5, r2
 8000f44:	0b24      	lsrs	r4, r4, #12
 8000f46:	4a25      	ldr	r2, [pc, #148]	; (8000fdc <__aeabi_dmul+0x4cc>)
 8000f48:	9301      	str	r3, [sp, #4]
 8000f4a:	e642      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000f4c:	2280      	movs	r2, #128	; 0x80
 8000f4e:	0312      	lsls	r2, r2, #12
 8000f50:	4314      	orrs	r4, r2
 8000f52:	0324      	lsls	r4, r4, #12
 8000f54:	4a21      	ldr	r2, [pc, #132]	; (8000fdc <__aeabi_dmul+0x4cc>)
 8000f56:	0b24      	lsrs	r4, r4, #12
 8000f58:	9701      	str	r7, [sp, #4]
 8000f5a:	e63a      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000f5c:	f000 fca6 	bl	80018ac <__clzsi2>
 8000f60:	0001      	movs	r1, r0
 8000f62:	0002      	movs	r2, r0
 8000f64:	3115      	adds	r1, #21
 8000f66:	3220      	adds	r2, #32
 8000f68:	291c      	cmp	r1, #28
 8000f6a:	dc00      	bgt.n	8000f6e <__aeabi_dmul+0x45e>
 8000f6c:	e74b      	b.n	8000e06 <__aeabi_dmul+0x2f6>
 8000f6e:	0034      	movs	r4, r6
 8000f70:	3808      	subs	r0, #8
 8000f72:	2500      	movs	r5, #0
 8000f74:	4084      	lsls	r4, r0
 8000f76:	e750      	b.n	8000e1a <__aeabi_dmul+0x30a>
 8000f78:	f000 fc98 	bl	80018ac <__clzsi2>
 8000f7c:	0003      	movs	r3, r0
 8000f7e:	001a      	movs	r2, r3
 8000f80:	3215      	adds	r2, #21
 8000f82:	3020      	adds	r0, #32
 8000f84:	2a1c      	cmp	r2, #28
 8000f86:	dc00      	bgt.n	8000f8a <__aeabi_dmul+0x47a>
 8000f88:	e71e      	b.n	8000dc8 <__aeabi_dmul+0x2b8>
 8000f8a:	4656      	mov	r6, sl
 8000f8c:	3b08      	subs	r3, #8
 8000f8e:	2200      	movs	r2, #0
 8000f90:	409e      	lsls	r6, r3
 8000f92:	e723      	b.n	8000ddc <__aeabi_dmul+0x2cc>
 8000f94:	9b00      	ldr	r3, [sp, #0]
 8000f96:	469c      	mov	ip, r3
 8000f98:	e6e6      	b.n	8000d68 <__aeabi_dmul+0x258>
 8000f9a:	4912      	ldr	r1, [pc, #72]	; (8000fe4 <__aeabi_dmul+0x4d4>)
 8000f9c:	0022      	movs	r2, r4
 8000f9e:	4461      	add	r1, ip
 8000fa0:	002e      	movs	r6, r5
 8000fa2:	408d      	lsls	r5, r1
 8000fa4:	408a      	lsls	r2, r1
 8000fa6:	40c6      	lsrs	r6, r0
 8000fa8:	1e69      	subs	r1, r5, #1
 8000faa:	418d      	sbcs	r5, r1
 8000fac:	4332      	orrs	r2, r6
 8000fae:	432a      	orrs	r2, r5
 8000fb0:	40c4      	lsrs	r4, r0
 8000fb2:	0753      	lsls	r3, r2, #29
 8000fb4:	d0b6      	beq.n	8000f24 <__aeabi_dmul+0x414>
 8000fb6:	210f      	movs	r1, #15
 8000fb8:	4011      	ands	r1, r2
 8000fba:	2904      	cmp	r1, #4
 8000fbc:	d1ac      	bne.n	8000f18 <__aeabi_dmul+0x408>
 8000fbe:	e7b1      	b.n	8000f24 <__aeabi_dmul+0x414>
 8000fc0:	0765      	lsls	r5, r4, #29
 8000fc2:	0264      	lsls	r4, r4, #9
 8000fc4:	0b24      	lsrs	r4, r4, #12
 8000fc6:	08d2      	lsrs	r2, r2, #3
 8000fc8:	4315      	orrs	r5, r2
 8000fca:	2200      	movs	r2, #0
 8000fcc:	e601      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000fce:	2280      	movs	r2, #128	; 0x80
 8000fd0:	0312      	lsls	r2, r2, #12
 8000fd2:	4314      	orrs	r4, r2
 8000fd4:	0324      	lsls	r4, r4, #12
 8000fd6:	4a01      	ldr	r2, [pc, #4]	; (8000fdc <__aeabi_dmul+0x4cc>)
 8000fd8:	0b24      	lsrs	r4, r4, #12
 8000fda:	e5fa      	b.n	8000bd2 <__aeabi_dmul+0xc2>
 8000fdc:	000007ff 	.word	0x000007ff
 8000fe0:	0000043e 	.word	0x0000043e
 8000fe4:	0000041e 	.word	0x0000041e

08000fe8 <__aeabi_dsub>:
 8000fe8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000fea:	4657      	mov	r7, sl
 8000fec:	464e      	mov	r6, r9
 8000fee:	4645      	mov	r5, r8
 8000ff0:	46de      	mov	lr, fp
 8000ff2:	b5e0      	push	{r5, r6, r7, lr}
 8000ff4:	001e      	movs	r6, r3
 8000ff6:	0017      	movs	r7, r2
 8000ff8:	004a      	lsls	r2, r1, #1
 8000ffa:	030b      	lsls	r3, r1, #12
 8000ffc:	0d52      	lsrs	r2, r2, #21
 8000ffe:	0a5b      	lsrs	r3, r3, #9
 8001000:	4690      	mov	r8, r2
 8001002:	0f42      	lsrs	r2, r0, #29
 8001004:	431a      	orrs	r2, r3
 8001006:	0fcd      	lsrs	r5, r1, #31
 8001008:	4ccd      	ldr	r4, [pc, #820]	; (8001340 <__aeabi_dsub+0x358>)
 800100a:	0331      	lsls	r1, r6, #12
 800100c:	00c3      	lsls	r3, r0, #3
 800100e:	4694      	mov	ip, r2
 8001010:	0070      	lsls	r0, r6, #1
 8001012:	0f7a      	lsrs	r2, r7, #29
 8001014:	0a49      	lsrs	r1, r1, #9
 8001016:	00ff      	lsls	r7, r7, #3
 8001018:	469a      	mov	sl, r3
 800101a:	46b9      	mov	r9, r7
 800101c:	0d40      	lsrs	r0, r0, #21
 800101e:	0ff6      	lsrs	r6, r6, #31
 8001020:	4311      	orrs	r1, r2
 8001022:	42a0      	cmp	r0, r4
 8001024:	d100      	bne.n	8001028 <__aeabi_dsub+0x40>
 8001026:	e0b1      	b.n	800118c <__aeabi_dsub+0x1a4>
 8001028:	2201      	movs	r2, #1
 800102a:	4056      	eors	r6, r2
 800102c:	46b3      	mov	fp, r6
 800102e:	42b5      	cmp	r5, r6
 8001030:	d100      	bne.n	8001034 <__aeabi_dsub+0x4c>
 8001032:	e088      	b.n	8001146 <__aeabi_dsub+0x15e>
 8001034:	4642      	mov	r2, r8
 8001036:	1a12      	subs	r2, r2, r0
 8001038:	2a00      	cmp	r2, #0
 800103a:	dc00      	bgt.n	800103e <__aeabi_dsub+0x56>
 800103c:	e0ae      	b.n	800119c <__aeabi_dsub+0x1b4>
 800103e:	2800      	cmp	r0, #0
 8001040:	d100      	bne.n	8001044 <__aeabi_dsub+0x5c>
 8001042:	e0c1      	b.n	80011c8 <__aeabi_dsub+0x1e0>
 8001044:	48be      	ldr	r0, [pc, #760]	; (8001340 <__aeabi_dsub+0x358>)
 8001046:	4580      	cmp	r8, r0
 8001048:	d100      	bne.n	800104c <__aeabi_dsub+0x64>
 800104a:	e151      	b.n	80012f0 <__aeabi_dsub+0x308>
 800104c:	2080      	movs	r0, #128	; 0x80
 800104e:	0400      	lsls	r0, r0, #16
 8001050:	4301      	orrs	r1, r0
 8001052:	2a38      	cmp	r2, #56	; 0x38
 8001054:	dd00      	ble.n	8001058 <__aeabi_dsub+0x70>
 8001056:	e17b      	b.n	8001350 <__aeabi_dsub+0x368>
 8001058:	2a1f      	cmp	r2, #31
 800105a:	dd00      	ble.n	800105e <__aeabi_dsub+0x76>
 800105c:	e1ee      	b.n	800143c <__aeabi_dsub+0x454>
 800105e:	2020      	movs	r0, #32
 8001060:	003e      	movs	r6, r7
 8001062:	1a80      	subs	r0, r0, r2
 8001064:	000c      	movs	r4, r1
 8001066:	40d6      	lsrs	r6, r2
 8001068:	40d1      	lsrs	r1, r2
 800106a:	4087      	lsls	r7, r0
 800106c:	4662      	mov	r2, ip
 800106e:	4084      	lsls	r4, r0
 8001070:	1a52      	subs	r2, r2, r1
 8001072:	1e78      	subs	r0, r7, #1
 8001074:	4187      	sbcs	r7, r0
 8001076:	4694      	mov	ip, r2
 8001078:	4334      	orrs	r4, r6
 800107a:	4327      	orrs	r7, r4
 800107c:	1bdc      	subs	r4, r3, r7
 800107e:	42a3      	cmp	r3, r4
 8001080:	419b      	sbcs	r3, r3
 8001082:	4662      	mov	r2, ip
 8001084:	425b      	negs	r3, r3
 8001086:	1ad3      	subs	r3, r2, r3
 8001088:	4699      	mov	r9, r3
 800108a:	464b      	mov	r3, r9
 800108c:	021b      	lsls	r3, r3, #8
 800108e:	d400      	bmi.n	8001092 <__aeabi_dsub+0xaa>
 8001090:	e118      	b.n	80012c4 <__aeabi_dsub+0x2dc>
 8001092:	464b      	mov	r3, r9
 8001094:	0258      	lsls	r0, r3, #9
 8001096:	0a43      	lsrs	r3, r0, #9
 8001098:	4699      	mov	r9, r3
 800109a:	464b      	mov	r3, r9
 800109c:	2b00      	cmp	r3, #0
 800109e:	d100      	bne.n	80010a2 <__aeabi_dsub+0xba>
 80010a0:	e137      	b.n	8001312 <__aeabi_dsub+0x32a>
 80010a2:	4648      	mov	r0, r9
 80010a4:	f000 fc02 	bl	80018ac <__clzsi2>
 80010a8:	0001      	movs	r1, r0
 80010aa:	3908      	subs	r1, #8
 80010ac:	2320      	movs	r3, #32
 80010ae:	0022      	movs	r2, r4
 80010b0:	4648      	mov	r0, r9
 80010b2:	1a5b      	subs	r3, r3, r1
 80010b4:	40da      	lsrs	r2, r3
 80010b6:	4088      	lsls	r0, r1
 80010b8:	408c      	lsls	r4, r1
 80010ba:	4643      	mov	r3, r8
 80010bc:	4310      	orrs	r0, r2
 80010be:	4588      	cmp	r8, r1
 80010c0:	dd00      	ble.n	80010c4 <__aeabi_dsub+0xdc>
 80010c2:	e136      	b.n	8001332 <__aeabi_dsub+0x34a>
 80010c4:	1ac9      	subs	r1, r1, r3
 80010c6:	1c4b      	adds	r3, r1, #1
 80010c8:	2b1f      	cmp	r3, #31
 80010ca:	dd00      	ble.n	80010ce <__aeabi_dsub+0xe6>
 80010cc:	e0ea      	b.n	80012a4 <__aeabi_dsub+0x2bc>
 80010ce:	2220      	movs	r2, #32
 80010d0:	0026      	movs	r6, r4
 80010d2:	1ad2      	subs	r2, r2, r3
 80010d4:	0001      	movs	r1, r0
 80010d6:	4094      	lsls	r4, r2
 80010d8:	40de      	lsrs	r6, r3
 80010da:	40d8      	lsrs	r0, r3
 80010dc:	2300      	movs	r3, #0
 80010de:	4091      	lsls	r1, r2
 80010e0:	1e62      	subs	r2, r4, #1
 80010e2:	4194      	sbcs	r4, r2
 80010e4:	4681      	mov	r9, r0
 80010e6:	4698      	mov	r8, r3
 80010e8:	4331      	orrs	r1, r6
 80010ea:	430c      	orrs	r4, r1
 80010ec:	0763      	lsls	r3, r4, #29
 80010ee:	d009      	beq.n	8001104 <__aeabi_dsub+0x11c>
 80010f0:	230f      	movs	r3, #15
 80010f2:	4023      	ands	r3, r4
 80010f4:	2b04      	cmp	r3, #4
 80010f6:	d005      	beq.n	8001104 <__aeabi_dsub+0x11c>
 80010f8:	1d23      	adds	r3, r4, #4
 80010fa:	42a3      	cmp	r3, r4
 80010fc:	41a4      	sbcs	r4, r4
 80010fe:	4264      	negs	r4, r4
 8001100:	44a1      	add	r9, r4
 8001102:	001c      	movs	r4, r3
 8001104:	464b      	mov	r3, r9
 8001106:	021b      	lsls	r3, r3, #8
 8001108:	d400      	bmi.n	800110c <__aeabi_dsub+0x124>
 800110a:	e0de      	b.n	80012ca <__aeabi_dsub+0x2e2>
 800110c:	4641      	mov	r1, r8
 800110e:	4b8c      	ldr	r3, [pc, #560]	; (8001340 <__aeabi_dsub+0x358>)
 8001110:	3101      	adds	r1, #1
 8001112:	4299      	cmp	r1, r3
 8001114:	d100      	bne.n	8001118 <__aeabi_dsub+0x130>
 8001116:	e0e7      	b.n	80012e8 <__aeabi_dsub+0x300>
 8001118:	464b      	mov	r3, r9
 800111a:	488a      	ldr	r0, [pc, #552]	; (8001344 <__aeabi_dsub+0x35c>)
 800111c:	08e4      	lsrs	r4, r4, #3
 800111e:	4003      	ands	r3, r0
 8001120:	0018      	movs	r0, r3
 8001122:	0549      	lsls	r1, r1, #21
 8001124:	075b      	lsls	r3, r3, #29
 8001126:	0240      	lsls	r0, r0, #9
 8001128:	4323      	orrs	r3, r4
 800112a:	0d4a      	lsrs	r2, r1, #21
 800112c:	0b04      	lsrs	r4, r0, #12
 800112e:	0512      	lsls	r2, r2, #20
 8001130:	07ed      	lsls	r5, r5, #31
 8001132:	4322      	orrs	r2, r4
 8001134:	432a      	orrs	r2, r5
 8001136:	0018      	movs	r0, r3
 8001138:	0011      	movs	r1, r2
 800113a:	bcf0      	pop	{r4, r5, r6, r7}
 800113c:	46bb      	mov	fp, r7
 800113e:	46b2      	mov	sl, r6
 8001140:	46a9      	mov	r9, r5
 8001142:	46a0      	mov	r8, r4
 8001144:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001146:	4642      	mov	r2, r8
 8001148:	1a12      	subs	r2, r2, r0
 800114a:	2a00      	cmp	r2, #0
 800114c:	dd52      	ble.n	80011f4 <__aeabi_dsub+0x20c>
 800114e:	2800      	cmp	r0, #0
 8001150:	d100      	bne.n	8001154 <__aeabi_dsub+0x16c>
 8001152:	e09c      	b.n	800128e <__aeabi_dsub+0x2a6>
 8001154:	45a0      	cmp	r8, r4
 8001156:	d100      	bne.n	800115a <__aeabi_dsub+0x172>
 8001158:	e0ca      	b.n	80012f0 <__aeabi_dsub+0x308>
 800115a:	2080      	movs	r0, #128	; 0x80
 800115c:	0400      	lsls	r0, r0, #16
 800115e:	4301      	orrs	r1, r0
 8001160:	2a38      	cmp	r2, #56	; 0x38
 8001162:	dd00      	ble.n	8001166 <__aeabi_dsub+0x17e>
 8001164:	e149      	b.n	80013fa <__aeabi_dsub+0x412>
 8001166:	2a1f      	cmp	r2, #31
 8001168:	dc00      	bgt.n	800116c <__aeabi_dsub+0x184>
 800116a:	e197      	b.n	800149c <__aeabi_dsub+0x4b4>
 800116c:	0010      	movs	r0, r2
 800116e:	000e      	movs	r6, r1
 8001170:	3820      	subs	r0, #32
 8001172:	40c6      	lsrs	r6, r0
 8001174:	2a20      	cmp	r2, #32
 8001176:	d004      	beq.n	8001182 <__aeabi_dsub+0x19a>
 8001178:	2040      	movs	r0, #64	; 0x40
 800117a:	1a82      	subs	r2, r0, r2
 800117c:	4091      	lsls	r1, r2
 800117e:	430f      	orrs	r7, r1
 8001180:	46b9      	mov	r9, r7
 8001182:	464c      	mov	r4, r9
 8001184:	1e62      	subs	r2, r4, #1
 8001186:	4194      	sbcs	r4, r2
 8001188:	4334      	orrs	r4, r6
 800118a:	e13a      	b.n	8001402 <__aeabi_dsub+0x41a>
 800118c:	000a      	movs	r2, r1
 800118e:	433a      	orrs	r2, r7
 8001190:	d028      	beq.n	80011e4 <__aeabi_dsub+0x1fc>
 8001192:	46b3      	mov	fp, r6
 8001194:	42b5      	cmp	r5, r6
 8001196:	d02b      	beq.n	80011f0 <__aeabi_dsub+0x208>
 8001198:	4a6b      	ldr	r2, [pc, #428]	; (8001348 <__aeabi_dsub+0x360>)
 800119a:	4442      	add	r2, r8
 800119c:	2a00      	cmp	r2, #0
 800119e:	d05d      	beq.n	800125c <__aeabi_dsub+0x274>
 80011a0:	4642      	mov	r2, r8
 80011a2:	4644      	mov	r4, r8
 80011a4:	1a82      	subs	r2, r0, r2
 80011a6:	2c00      	cmp	r4, #0
 80011a8:	d000      	beq.n	80011ac <__aeabi_dsub+0x1c4>
 80011aa:	e0f5      	b.n	8001398 <__aeabi_dsub+0x3b0>
 80011ac:	4665      	mov	r5, ip
 80011ae:	431d      	orrs	r5, r3
 80011b0:	d100      	bne.n	80011b4 <__aeabi_dsub+0x1cc>
 80011b2:	e19c      	b.n	80014ee <__aeabi_dsub+0x506>
 80011b4:	1e55      	subs	r5, r2, #1
 80011b6:	2a01      	cmp	r2, #1
 80011b8:	d100      	bne.n	80011bc <__aeabi_dsub+0x1d4>
 80011ba:	e1fb      	b.n	80015b4 <__aeabi_dsub+0x5cc>
 80011bc:	4c60      	ldr	r4, [pc, #384]	; (8001340 <__aeabi_dsub+0x358>)
 80011be:	42a2      	cmp	r2, r4
 80011c0:	d100      	bne.n	80011c4 <__aeabi_dsub+0x1dc>
 80011c2:	e1bd      	b.n	8001540 <__aeabi_dsub+0x558>
 80011c4:	002a      	movs	r2, r5
 80011c6:	e0f0      	b.n	80013aa <__aeabi_dsub+0x3c2>
 80011c8:	0008      	movs	r0, r1
 80011ca:	4338      	orrs	r0, r7
 80011cc:	d100      	bne.n	80011d0 <__aeabi_dsub+0x1e8>
 80011ce:	e0c3      	b.n	8001358 <__aeabi_dsub+0x370>
 80011d0:	1e50      	subs	r0, r2, #1
 80011d2:	2a01      	cmp	r2, #1
 80011d4:	d100      	bne.n	80011d8 <__aeabi_dsub+0x1f0>
 80011d6:	e1a8      	b.n	800152a <__aeabi_dsub+0x542>
 80011d8:	4c59      	ldr	r4, [pc, #356]	; (8001340 <__aeabi_dsub+0x358>)
 80011da:	42a2      	cmp	r2, r4
 80011dc:	d100      	bne.n	80011e0 <__aeabi_dsub+0x1f8>
 80011de:	e087      	b.n	80012f0 <__aeabi_dsub+0x308>
 80011e0:	0002      	movs	r2, r0
 80011e2:	e736      	b.n	8001052 <__aeabi_dsub+0x6a>
 80011e4:	2201      	movs	r2, #1
 80011e6:	4056      	eors	r6, r2
 80011e8:	46b3      	mov	fp, r6
 80011ea:	42b5      	cmp	r5, r6
 80011ec:	d000      	beq.n	80011f0 <__aeabi_dsub+0x208>
 80011ee:	e721      	b.n	8001034 <__aeabi_dsub+0x4c>
 80011f0:	4a55      	ldr	r2, [pc, #340]	; (8001348 <__aeabi_dsub+0x360>)
 80011f2:	4442      	add	r2, r8
 80011f4:	2a00      	cmp	r2, #0
 80011f6:	d100      	bne.n	80011fa <__aeabi_dsub+0x212>
 80011f8:	e0b5      	b.n	8001366 <__aeabi_dsub+0x37e>
 80011fa:	4642      	mov	r2, r8
 80011fc:	4644      	mov	r4, r8
 80011fe:	1a82      	subs	r2, r0, r2
 8001200:	2c00      	cmp	r4, #0
 8001202:	d100      	bne.n	8001206 <__aeabi_dsub+0x21e>
 8001204:	e138      	b.n	8001478 <__aeabi_dsub+0x490>
 8001206:	4e4e      	ldr	r6, [pc, #312]	; (8001340 <__aeabi_dsub+0x358>)
 8001208:	42b0      	cmp	r0, r6
 800120a:	d100      	bne.n	800120e <__aeabi_dsub+0x226>
 800120c:	e1de      	b.n	80015cc <__aeabi_dsub+0x5e4>
 800120e:	2680      	movs	r6, #128	; 0x80
 8001210:	4664      	mov	r4, ip
 8001212:	0436      	lsls	r6, r6, #16
 8001214:	4334      	orrs	r4, r6
 8001216:	46a4      	mov	ip, r4
 8001218:	2a38      	cmp	r2, #56	; 0x38
 800121a:	dd00      	ble.n	800121e <__aeabi_dsub+0x236>
 800121c:	e196      	b.n	800154c <__aeabi_dsub+0x564>
 800121e:	2a1f      	cmp	r2, #31
 8001220:	dd00      	ble.n	8001224 <__aeabi_dsub+0x23c>
 8001222:	e224      	b.n	800166e <__aeabi_dsub+0x686>
 8001224:	2620      	movs	r6, #32
 8001226:	1ab4      	subs	r4, r6, r2
 8001228:	46a2      	mov	sl, r4
 800122a:	4664      	mov	r4, ip
 800122c:	4656      	mov	r6, sl
 800122e:	40b4      	lsls	r4, r6
 8001230:	46a1      	mov	r9, r4
 8001232:	001c      	movs	r4, r3
 8001234:	464e      	mov	r6, r9
 8001236:	40d4      	lsrs	r4, r2
 8001238:	4326      	orrs	r6, r4
 800123a:	0034      	movs	r4, r6
 800123c:	4656      	mov	r6, sl
 800123e:	40b3      	lsls	r3, r6
 8001240:	1e5e      	subs	r6, r3, #1
 8001242:	41b3      	sbcs	r3, r6
 8001244:	431c      	orrs	r4, r3
 8001246:	4663      	mov	r3, ip
 8001248:	40d3      	lsrs	r3, r2
 800124a:	18c9      	adds	r1, r1, r3
 800124c:	19e4      	adds	r4, r4, r7
 800124e:	42bc      	cmp	r4, r7
 8001250:	41bf      	sbcs	r7, r7
 8001252:	427f      	negs	r7, r7
 8001254:	46b9      	mov	r9, r7
 8001256:	4680      	mov	r8, r0
 8001258:	4489      	add	r9, r1
 800125a:	e0d8      	b.n	800140e <__aeabi_dsub+0x426>
 800125c:	4640      	mov	r0, r8
 800125e:	4c3b      	ldr	r4, [pc, #236]	; (800134c <__aeabi_dsub+0x364>)
 8001260:	3001      	adds	r0, #1
 8001262:	4220      	tst	r0, r4
 8001264:	d000      	beq.n	8001268 <__aeabi_dsub+0x280>
 8001266:	e0b4      	b.n	80013d2 <__aeabi_dsub+0x3ea>
 8001268:	4640      	mov	r0, r8
 800126a:	2800      	cmp	r0, #0
 800126c:	d000      	beq.n	8001270 <__aeabi_dsub+0x288>
 800126e:	e144      	b.n	80014fa <__aeabi_dsub+0x512>
 8001270:	4660      	mov	r0, ip
 8001272:	4318      	orrs	r0, r3
 8001274:	d100      	bne.n	8001278 <__aeabi_dsub+0x290>
 8001276:	e190      	b.n	800159a <__aeabi_dsub+0x5b2>
 8001278:	0008      	movs	r0, r1
 800127a:	4338      	orrs	r0, r7
 800127c:	d000      	beq.n	8001280 <__aeabi_dsub+0x298>
 800127e:	e1aa      	b.n	80015d6 <__aeabi_dsub+0x5ee>
 8001280:	4661      	mov	r1, ip
 8001282:	08db      	lsrs	r3, r3, #3
 8001284:	0749      	lsls	r1, r1, #29
 8001286:	430b      	orrs	r3, r1
 8001288:	4661      	mov	r1, ip
 800128a:	08cc      	lsrs	r4, r1, #3
 800128c:	e027      	b.n	80012de <__aeabi_dsub+0x2f6>
 800128e:	0008      	movs	r0, r1
 8001290:	4338      	orrs	r0, r7
 8001292:	d061      	beq.n	8001358 <__aeabi_dsub+0x370>
 8001294:	1e50      	subs	r0, r2, #1
 8001296:	2a01      	cmp	r2, #1
 8001298:	d100      	bne.n	800129c <__aeabi_dsub+0x2b4>
 800129a:	e139      	b.n	8001510 <__aeabi_dsub+0x528>
 800129c:	42a2      	cmp	r2, r4
 800129e:	d027      	beq.n	80012f0 <__aeabi_dsub+0x308>
 80012a0:	0002      	movs	r2, r0
 80012a2:	e75d      	b.n	8001160 <__aeabi_dsub+0x178>
 80012a4:	0002      	movs	r2, r0
 80012a6:	391f      	subs	r1, #31
 80012a8:	40ca      	lsrs	r2, r1
 80012aa:	0011      	movs	r1, r2
 80012ac:	2b20      	cmp	r3, #32
 80012ae:	d003      	beq.n	80012b8 <__aeabi_dsub+0x2d0>
 80012b0:	2240      	movs	r2, #64	; 0x40
 80012b2:	1ad3      	subs	r3, r2, r3
 80012b4:	4098      	lsls	r0, r3
 80012b6:	4304      	orrs	r4, r0
 80012b8:	1e63      	subs	r3, r4, #1
 80012ba:	419c      	sbcs	r4, r3
 80012bc:	2300      	movs	r3, #0
 80012be:	4699      	mov	r9, r3
 80012c0:	4698      	mov	r8, r3
 80012c2:	430c      	orrs	r4, r1
 80012c4:	0763      	lsls	r3, r4, #29
 80012c6:	d000      	beq.n	80012ca <__aeabi_dsub+0x2e2>
 80012c8:	e712      	b.n	80010f0 <__aeabi_dsub+0x108>
 80012ca:	464b      	mov	r3, r9
 80012cc:	464a      	mov	r2, r9
 80012ce:	08e4      	lsrs	r4, r4, #3
 80012d0:	075b      	lsls	r3, r3, #29
 80012d2:	4323      	orrs	r3, r4
 80012d4:	08d4      	lsrs	r4, r2, #3
 80012d6:	4642      	mov	r2, r8
 80012d8:	4919      	ldr	r1, [pc, #100]	; (8001340 <__aeabi_dsub+0x358>)
 80012da:	428a      	cmp	r2, r1
 80012dc:	d00e      	beq.n	80012fc <__aeabi_dsub+0x314>
 80012de:	0324      	lsls	r4, r4, #12
 80012e0:	0552      	lsls	r2, r2, #21
 80012e2:	0b24      	lsrs	r4, r4, #12
 80012e4:	0d52      	lsrs	r2, r2, #21
 80012e6:	e722      	b.n	800112e <__aeabi_dsub+0x146>
 80012e8:	000a      	movs	r2, r1
 80012ea:	2400      	movs	r4, #0
 80012ec:	2300      	movs	r3, #0
 80012ee:	e71e      	b.n	800112e <__aeabi_dsub+0x146>
 80012f0:	08db      	lsrs	r3, r3, #3
 80012f2:	4662      	mov	r2, ip
 80012f4:	0752      	lsls	r2, r2, #29
 80012f6:	4313      	orrs	r3, r2
 80012f8:	4662      	mov	r2, ip
 80012fa:	08d4      	lsrs	r4, r2, #3
 80012fc:	001a      	movs	r2, r3
 80012fe:	4322      	orrs	r2, r4
 8001300:	d100      	bne.n	8001304 <__aeabi_dsub+0x31c>
 8001302:	e1fc      	b.n	80016fe <__aeabi_dsub+0x716>
 8001304:	2280      	movs	r2, #128	; 0x80
 8001306:	0312      	lsls	r2, r2, #12
 8001308:	4314      	orrs	r4, r2
 800130a:	0324      	lsls	r4, r4, #12
 800130c:	4a0c      	ldr	r2, [pc, #48]	; (8001340 <__aeabi_dsub+0x358>)
 800130e:	0b24      	lsrs	r4, r4, #12
 8001310:	e70d      	b.n	800112e <__aeabi_dsub+0x146>
 8001312:	0020      	movs	r0, r4
 8001314:	f000 faca 	bl	80018ac <__clzsi2>
 8001318:	0001      	movs	r1, r0
 800131a:	3118      	adds	r1, #24
 800131c:	291f      	cmp	r1, #31
 800131e:	dc00      	bgt.n	8001322 <__aeabi_dsub+0x33a>
 8001320:	e6c4      	b.n	80010ac <__aeabi_dsub+0xc4>
 8001322:	3808      	subs	r0, #8
 8001324:	4084      	lsls	r4, r0
 8001326:	4643      	mov	r3, r8
 8001328:	0020      	movs	r0, r4
 800132a:	2400      	movs	r4, #0
 800132c:	4588      	cmp	r8, r1
 800132e:	dc00      	bgt.n	8001332 <__aeabi_dsub+0x34a>
 8001330:	e6c8      	b.n	80010c4 <__aeabi_dsub+0xdc>
 8001332:	4a04      	ldr	r2, [pc, #16]	; (8001344 <__aeabi_dsub+0x35c>)
 8001334:	1a5b      	subs	r3, r3, r1
 8001336:	4010      	ands	r0, r2
 8001338:	4698      	mov	r8, r3
 800133a:	4681      	mov	r9, r0
 800133c:	e6d6      	b.n	80010ec <__aeabi_dsub+0x104>
 800133e:	46c0      	nop			; (mov r8, r8)
 8001340:	000007ff 	.word	0x000007ff
 8001344:	ff7fffff 	.word	0xff7fffff
 8001348:	fffff801 	.word	0xfffff801
 800134c:	000007fe 	.word	0x000007fe
 8001350:	430f      	orrs	r7, r1
 8001352:	1e7a      	subs	r2, r7, #1
 8001354:	4197      	sbcs	r7, r2
 8001356:	e691      	b.n	800107c <__aeabi_dsub+0x94>
 8001358:	4661      	mov	r1, ip
 800135a:	08db      	lsrs	r3, r3, #3
 800135c:	0749      	lsls	r1, r1, #29
 800135e:	430b      	orrs	r3, r1
 8001360:	4661      	mov	r1, ip
 8001362:	08cc      	lsrs	r4, r1, #3
 8001364:	e7b8      	b.n	80012d8 <__aeabi_dsub+0x2f0>
 8001366:	4640      	mov	r0, r8
 8001368:	4cd3      	ldr	r4, [pc, #844]	; (80016b8 <__aeabi_dsub+0x6d0>)
 800136a:	3001      	adds	r0, #1
 800136c:	4220      	tst	r0, r4
 800136e:	d000      	beq.n	8001372 <__aeabi_dsub+0x38a>
 8001370:	e0a2      	b.n	80014b8 <__aeabi_dsub+0x4d0>
 8001372:	4640      	mov	r0, r8
 8001374:	2800      	cmp	r0, #0
 8001376:	d000      	beq.n	800137a <__aeabi_dsub+0x392>
 8001378:	e101      	b.n	800157e <__aeabi_dsub+0x596>
 800137a:	4660      	mov	r0, ip
 800137c:	4318      	orrs	r0, r3
 800137e:	d100      	bne.n	8001382 <__aeabi_dsub+0x39a>
 8001380:	e15e      	b.n	8001640 <__aeabi_dsub+0x658>
 8001382:	0008      	movs	r0, r1
 8001384:	4338      	orrs	r0, r7
 8001386:	d000      	beq.n	800138a <__aeabi_dsub+0x3a2>
 8001388:	e15f      	b.n	800164a <__aeabi_dsub+0x662>
 800138a:	4661      	mov	r1, ip
 800138c:	08db      	lsrs	r3, r3, #3
 800138e:	0749      	lsls	r1, r1, #29
 8001390:	430b      	orrs	r3, r1
 8001392:	4661      	mov	r1, ip
 8001394:	08cc      	lsrs	r4, r1, #3
 8001396:	e7a2      	b.n	80012de <__aeabi_dsub+0x2f6>
 8001398:	4dc8      	ldr	r5, [pc, #800]	; (80016bc <__aeabi_dsub+0x6d4>)
 800139a:	42a8      	cmp	r0, r5
 800139c:	d100      	bne.n	80013a0 <__aeabi_dsub+0x3b8>
 800139e:	e0cf      	b.n	8001540 <__aeabi_dsub+0x558>
 80013a0:	2580      	movs	r5, #128	; 0x80
 80013a2:	4664      	mov	r4, ip
 80013a4:	042d      	lsls	r5, r5, #16
 80013a6:	432c      	orrs	r4, r5
 80013a8:	46a4      	mov	ip, r4
 80013aa:	2a38      	cmp	r2, #56	; 0x38
 80013ac:	dc56      	bgt.n	800145c <__aeabi_dsub+0x474>
 80013ae:	2a1f      	cmp	r2, #31
 80013b0:	dd00      	ble.n	80013b4 <__aeabi_dsub+0x3cc>
 80013b2:	e0d1      	b.n	8001558 <__aeabi_dsub+0x570>
 80013b4:	2520      	movs	r5, #32
 80013b6:	001e      	movs	r6, r3
 80013b8:	1aad      	subs	r5, r5, r2
 80013ba:	4664      	mov	r4, ip
 80013bc:	40ab      	lsls	r3, r5
 80013be:	40ac      	lsls	r4, r5
 80013c0:	40d6      	lsrs	r6, r2
 80013c2:	1e5d      	subs	r5, r3, #1
 80013c4:	41ab      	sbcs	r3, r5
 80013c6:	4334      	orrs	r4, r6
 80013c8:	4323      	orrs	r3, r4
 80013ca:	4664      	mov	r4, ip
 80013cc:	40d4      	lsrs	r4, r2
 80013ce:	1b09      	subs	r1, r1, r4
 80013d0:	e049      	b.n	8001466 <__aeabi_dsub+0x47e>
 80013d2:	4660      	mov	r0, ip
 80013d4:	1bdc      	subs	r4, r3, r7
 80013d6:	1a46      	subs	r6, r0, r1
 80013d8:	42a3      	cmp	r3, r4
 80013da:	4180      	sbcs	r0, r0
 80013dc:	4240      	negs	r0, r0
 80013de:	4681      	mov	r9, r0
 80013e0:	0030      	movs	r0, r6
 80013e2:	464e      	mov	r6, r9
 80013e4:	1b80      	subs	r0, r0, r6
 80013e6:	4681      	mov	r9, r0
 80013e8:	0200      	lsls	r0, r0, #8
 80013ea:	d476      	bmi.n	80014da <__aeabi_dsub+0x4f2>
 80013ec:	464b      	mov	r3, r9
 80013ee:	4323      	orrs	r3, r4
 80013f0:	d000      	beq.n	80013f4 <__aeabi_dsub+0x40c>
 80013f2:	e652      	b.n	800109a <__aeabi_dsub+0xb2>
 80013f4:	2400      	movs	r4, #0
 80013f6:	2500      	movs	r5, #0
 80013f8:	e771      	b.n	80012de <__aeabi_dsub+0x2f6>
 80013fa:	4339      	orrs	r1, r7
 80013fc:	000c      	movs	r4, r1
 80013fe:	1e62      	subs	r2, r4, #1
 8001400:	4194      	sbcs	r4, r2
 8001402:	18e4      	adds	r4, r4, r3
 8001404:	429c      	cmp	r4, r3
 8001406:	419b      	sbcs	r3, r3
 8001408:	425b      	negs	r3, r3
 800140a:	4463      	add	r3, ip
 800140c:	4699      	mov	r9, r3
 800140e:	464b      	mov	r3, r9
 8001410:	021b      	lsls	r3, r3, #8
 8001412:	d400      	bmi.n	8001416 <__aeabi_dsub+0x42e>
 8001414:	e756      	b.n	80012c4 <__aeabi_dsub+0x2dc>
 8001416:	2301      	movs	r3, #1
 8001418:	469c      	mov	ip, r3
 800141a:	4ba8      	ldr	r3, [pc, #672]	; (80016bc <__aeabi_dsub+0x6d4>)
 800141c:	44e0      	add	r8, ip
 800141e:	4598      	cmp	r8, r3
 8001420:	d038      	beq.n	8001494 <__aeabi_dsub+0x4ac>
 8001422:	464b      	mov	r3, r9
 8001424:	48a6      	ldr	r0, [pc, #664]	; (80016c0 <__aeabi_dsub+0x6d8>)
 8001426:	2201      	movs	r2, #1
 8001428:	4003      	ands	r3, r0
 800142a:	0018      	movs	r0, r3
 800142c:	0863      	lsrs	r3, r4, #1
 800142e:	4014      	ands	r4, r2
 8001430:	431c      	orrs	r4, r3
 8001432:	07c3      	lsls	r3, r0, #31
 8001434:	431c      	orrs	r4, r3
 8001436:	0843      	lsrs	r3, r0, #1
 8001438:	4699      	mov	r9, r3
 800143a:	e657      	b.n	80010ec <__aeabi_dsub+0x104>
 800143c:	0010      	movs	r0, r2
 800143e:	000e      	movs	r6, r1
 8001440:	3820      	subs	r0, #32
 8001442:	40c6      	lsrs	r6, r0
 8001444:	2a20      	cmp	r2, #32
 8001446:	d004      	beq.n	8001452 <__aeabi_dsub+0x46a>
 8001448:	2040      	movs	r0, #64	; 0x40
 800144a:	1a82      	subs	r2, r0, r2
 800144c:	4091      	lsls	r1, r2
 800144e:	430f      	orrs	r7, r1
 8001450:	46b9      	mov	r9, r7
 8001452:	464f      	mov	r7, r9
 8001454:	1e7a      	subs	r2, r7, #1
 8001456:	4197      	sbcs	r7, r2
 8001458:	4337      	orrs	r7, r6
 800145a:	e60f      	b.n	800107c <__aeabi_dsub+0x94>
 800145c:	4662      	mov	r2, ip
 800145e:	431a      	orrs	r2, r3
 8001460:	0013      	movs	r3, r2
 8001462:	1e5a      	subs	r2, r3, #1
 8001464:	4193      	sbcs	r3, r2
 8001466:	1afc      	subs	r4, r7, r3
 8001468:	42a7      	cmp	r7, r4
 800146a:	41bf      	sbcs	r7, r7
 800146c:	427f      	negs	r7, r7
 800146e:	1bcb      	subs	r3, r1, r7
 8001470:	4699      	mov	r9, r3
 8001472:	465d      	mov	r5, fp
 8001474:	4680      	mov	r8, r0
 8001476:	e608      	b.n	800108a <__aeabi_dsub+0xa2>
 8001478:	4666      	mov	r6, ip
 800147a:	431e      	orrs	r6, r3
 800147c:	d100      	bne.n	8001480 <__aeabi_dsub+0x498>
 800147e:	e0be      	b.n	80015fe <__aeabi_dsub+0x616>
 8001480:	1e56      	subs	r6, r2, #1
 8001482:	2a01      	cmp	r2, #1
 8001484:	d100      	bne.n	8001488 <__aeabi_dsub+0x4a0>
 8001486:	e109      	b.n	800169c <__aeabi_dsub+0x6b4>
 8001488:	4c8c      	ldr	r4, [pc, #560]	; (80016bc <__aeabi_dsub+0x6d4>)
 800148a:	42a2      	cmp	r2, r4
 800148c:	d100      	bne.n	8001490 <__aeabi_dsub+0x4a8>
 800148e:	e119      	b.n	80016c4 <__aeabi_dsub+0x6dc>
 8001490:	0032      	movs	r2, r6
 8001492:	e6c1      	b.n	8001218 <__aeabi_dsub+0x230>
 8001494:	4642      	mov	r2, r8
 8001496:	2400      	movs	r4, #0
 8001498:	2300      	movs	r3, #0
 800149a:	e648      	b.n	800112e <__aeabi_dsub+0x146>
 800149c:	2020      	movs	r0, #32
 800149e:	000c      	movs	r4, r1
 80014a0:	1a80      	subs	r0, r0, r2
 80014a2:	003e      	movs	r6, r7
 80014a4:	4087      	lsls	r7, r0
 80014a6:	4084      	lsls	r4, r0
 80014a8:	40d6      	lsrs	r6, r2
 80014aa:	1e78      	subs	r0, r7, #1
 80014ac:	4187      	sbcs	r7, r0
 80014ae:	40d1      	lsrs	r1, r2
 80014b0:	4334      	orrs	r4, r6
 80014b2:	433c      	orrs	r4, r7
 80014b4:	448c      	add	ip, r1
 80014b6:	e7a4      	b.n	8001402 <__aeabi_dsub+0x41a>
 80014b8:	4a80      	ldr	r2, [pc, #512]	; (80016bc <__aeabi_dsub+0x6d4>)
 80014ba:	4290      	cmp	r0, r2
 80014bc:	d100      	bne.n	80014c0 <__aeabi_dsub+0x4d8>
 80014be:	e0e9      	b.n	8001694 <__aeabi_dsub+0x6ac>
 80014c0:	19df      	adds	r7, r3, r7
 80014c2:	429f      	cmp	r7, r3
 80014c4:	419b      	sbcs	r3, r3
 80014c6:	4461      	add	r1, ip
 80014c8:	425b      	negs	r3, r3
 80014ca:	18c9      	adds	r1, r1, r3
 80014cc:	07cc      	lsls	r4, r1, #31
 80014ce:	087f      	lsrs	r7, r7, #1
 80014d0:	084b      	lsrs	r3, r1, #1
 80014d2:	4699      	mov	r9, r3
 80014d4:	4680      	mov	r8, r0
 80014d6:	433c      	orrs	r4, r7
 80014d8:	e6f4      	b.n	80012c4 <__aeabi_dsub+0x2dc>
 80014da:	1afc      	subs	r4, r7, r3
 80014dc:	42a7      	cmp	r7, r4
 80014de:	41bf      	sbcs	r7, r7
 80014e0:	4663      	mov	r3, ip
 80014e2:	427f      	negs	r7, r7
 80014e4:	1ac9      	subs	r1, r1, r3
 80014e6:	1bcb      	subs	r3, r1, r7
 80014e8:	4699      	mov	r9, r3
 80014ea:	465d      	mov	r5, fp
 80014ec:	e5d5      	b.n	800109a <__aeabi_dsub+0xb2>
 80014ee:	08ff      	lsrs	r7, r7, #3
 80014f0:	074b      	lsls	r3, r1, #29
 80014f2:	465d      	mov	r5, fp
 80014f4:	433b      	orrs	r3, r7
 80014f6:	08cc      	lsrs	r4, r1, #3
 80014f8:	e6ee      	b.n	80012d8 <__aeabi_dsub+0x2f0>
 80014fa:	4662      	mov	r2, ip
 80014fc:	431a      	orrs	r2, r3
 80014fe:	d000      	beq.n	8001502 <__aeabi_dsub+0x51a>
 8001500:	e082      	b.n	8001608 <__aeabi_dsub+0x620>
 8001502:	000b      	movs	r3, r1
 8001504:	433b      	orrs	r3, r7
 8001506:	d11b      	bne.n	8001540 <__aeabi_dsub+0x558>
 8001508:	2480      	movs	r4, #128	; 0x80
 800150a:	2500      	movs	r5, #0
 800150c:	0324      	lsls	r4, r4, #12
 800150e:	e6f9      	b.n	8001304 <__aeabi_dsub+0x31c>
 8001510:	19dc      	adds	r4, r3, r7
 8001512:	429c      	cmp	r4, r3
 8001514:	419b      	sbcs	r3, r3
 8001516:	4461      	add	r1, ip
 8001518:	4689      	mov	r9, r1
 800151a:	425b      	negs	r3, r3
 800151c:	4499      	add	r9, r3
 800151e:	464b      	mov	r3, r9
 8001520:	021b      	lsls	r3, r3, #8
 8001522:	d444      	bmi.n	80015ae <__aeabi_dsub+0x5c6>
 8001524:	2301      	movs	r3, #1
 8001526:	4698      	mov	r8, r3
 8001528:	e6cc      	b.n	80012c4 <__aeabi_dsub+0x2dc>
 800152a:	1bdc      	subs	r4, r3, r7
 800152c:	4662      	mov	r2, ip
 800152e:	42a3      	cmp	r3, r4
 8001530:	419b      	sbcs	r3, r3
 8001532:	1a51      	subs	r1, r2, r1
 8001534:	425b      	negs	r3, r3
 8001536:	1acb      	subs	r3, r1, r3
 8001538:	4699      	mov	r9, r3
 800153a:	2301      	movs	r3, #1
 800153c:	4698      	mov	r8, r3
 800153e:	e5a4      	b.n	800108a <__aeabi_dsub+0xa2>
 8001540:	08ff      	lsrs	r7, r7, #3
 8001542:	074b      	lsls	r3, r1, #29
 8001544:	465d      	mov	r5, fp
 8001546:	433b      	orrs	r3, r7
 8001548:	08cc      	lsrs	r4, r1, #3
 800154a:	e6d7      	b.n	80012fc <__aeabi_dsub+0x314>
 800154c:	4662      	mov	r2, ip
 800154e:	431a      	orrs	r2, r3
 8001550:	0014      	movs	r4, r2
 8001552:	1e63      	subs	r3, r4, #1
 8001554:	419c      	sbcs	r4, r3
 8001556:	e679      	b.n	800124c <__aeabi_dsub+0x264>
 8001558:	0015      	movs	r5, r2
 800155a:	4664      	mov	r4, ip
 800155c:	3d20      	subs	r5, #32
 800155e:	40ec      	lsrs	r4, r5
 8001560:	46a0      	mov	r8, r4
 8001562:	2a20      	cmp	r2, #32
 8001564:	d005      	beq.n	8001572 <__aeabi_dsub+0x58a>
 8001566:	2540      	movs	r5, #64	; 0x40
 8001568:	4664      	mov	r4, ip
 800156a:	1aaa      	subs	r2, r5, r2
 800156c:	4094      	lsls	r4, r2
 800156e:	4323      	orrs	r3, r4
 8001570:	469a      	mov	sl, r3
 8001572:	4654      	mov	r4, sl
 8001574:	1e63      	subs	r3, r4, #1
 8001576:	419c      	sbcs	r4, r3
 8001578:	4643      	mov	r3, r8
 800157a:	4323      	orrs	r3, r4
 800157c:	e773      	b.n	8001466 <__aeabi_dsub+0x47e>
 800157e:	4662      	mov	r2, ip
 8001580:	431a      	orrs	r2, r3
 8001582:	d023      	beq.n	80015cc <__aeabi_dsub+0x5e4>
 8001584:	000a      	movs	r2, r1
 8001586:	433a      	orrs	r2, r7
 8001588:	d000      	beq.n	800158c <__aeabi_dsub+0x5a4>
 800158a:	e0a0      	b.n	80016ce <__aeabi_dsub+0x6e6>
 800158c:	4662      	mov	r2, ip
 800158e:	08db      	lsrs	r3, r3, #3
 8001590:	0752      	lsls	r2, r2, #29
 8001592:	4313      	orrs	r3, r2
 8001594:	4662      	mov	r2, ip
 8001596:	08d4      	lsrs	r4, r2, #3
 8001598:	e6b0      	b.n	80012fc <__aeabi_dsub+0x314>
 800159a:	000b      	movs	r3, r1
 800159c:	433b      	orrs	r3, r7
 800159e:	d100      	bne.n	80015a2 <__aeabi_dsub+0x5ba>
 80015a0:	e728      	b.n	80013f4 <__aeabi_dsub+0x40c>
 80015a2:	08ff      	lsrs	r7, r7, #3
 80015a4:	074b      	lsls	r3, r1, #29
 80015a6:	465d      	mov	r5, fp
 80015a8:	433b      	orrs	r3, r7
 80015aa:	08cc      	lsrs	r4, r1, #3
 80015ac:	e697      	b.n	80012de <__aeabi_dsub+0x2f6>
 80015ae:	2302      	movs	r3, #2
 80015b0:	4698      	mov	r8, r3
 80015b2:	e736      	b.n	8001422 <__aeabi_dsub+0x43a>
 80015b4:	1afc      	subs	r4, r7, r3
 80015b6:	42a7      	cmp	r7, r4
 80015b8:	41bf      	sbcs	r7, r7
 80015ba:	4663      	mov	r3, ip
 80015bc:	427f      	negs	r7, r7
 80015be:	1ac9      	subs	r1, r1, r3
 80015c0:	1bcb      	subs	r3, r1, r7
 80015c2:	4699      	mov	r9, r3
 80015c4:	2301      	movs	r3, #1
 80015c6:	465d      	mov	r5, fp
 80015c8:	4698      	mov	r8, r3
 80015ca:	e55e      	b.n	800108a <__aeabi_dsub+0xa2>
 80015cc:	074b      	lsls	r3, r1, #29
 80015ce:	08ff      	lsrs	r7, r7, #3
 80015d0:	433b      	orrs	r3, r7
 80015d2:	08cc      	lsrs	r4, r1, #3
 80015d4:	e692      	b.n	80012fc <__aeabi_dsub+0x314>
 80015d6:	1bdc      	subs	r4, r3, r7
 80015d8:	4660      	mov	r0, ip
 80015da:	42a3      	cmp	r3, r4
 80015dc:	41b6      	sbcs	r6, r6
 80015de:	1a40      	subs	r0, r0, r1
 80015e0:	4276      	negs	r6, r6
 80015e2:	1b80      	subs	r0, r0, r6
 80015e4:	4681      	mov	r9, r0
 80015e6:	0200      	lsls	r0, r0, #8
 80015e8:	d560      	bpl.n	80016ac <__aeabi_dsub+0x6c4>
 80015ea:	1afc      	subs	r4, r7, r3
 80015ec:	42a7      	cmp	r7, r4
 80015ee:	41bf      	sbcs	r7, r7
 80015f0:	4663      	mov	r3, ip
 80015f2:	427f      	negs	r7, r7
 80015f4:	1ac9      	subs	r1, r1, r3
 80015f6:	1bcb      	subs	r3, r1, r7
 80015f8:	4699      	mov	r9, r3
 80015fa:	465d      	mov	r5, fp
 80015fc:	e576      	b.n	80010ec <__aeabi_dsub+0x104>
 80015fe:	08ff      	lsrs	r7, r7, #3
 8001600:	074b      	lsls	r3, r1, #29
 8001602:	433b      	orrs	r3, r7
 8001604:	08cc      	lsrs	r4, r1, #3
 8001606:	e667      	b.n	80012d8 <__aeabi_dsub+0x2f0>
 8001608:	000a      	movs	r2, r1
 800160a:	08db      	lsrs	r3, r3, #3
 800160c:	433a      	orrs	r2, r7
 800160e:	d100      	bne.n	8001612 <__aeabi_dsub+0x62a>
 8001610:	e66f      	b.n	80012f2 <__aeabi_dsub+0x30a>
 8001612:	4662      	mov	r2, ip
 8001614:	0752      	lsls	r2, r2, #29
 8001616:	4313      	orrs	r3, r2
 8001618:	4662      	mov	r2, ip
 800161a:	08d4      	lsrs	r4, r2, #3
 800161c:	2280      	movs	r2, #128	; 0x80
 800161e:	0312      	lsls	r2, r2, #12
 8001620:	4214      	tst	r4, r2
 8001622:	d007      	beq.n	8001634 <__aeabi_dsub+0x64c>
 8001624:	08c8      	lsrs	r0, r1, #3
 8001626:	4210      	tst	r0, r2
 8001628:	d104      	bne.n	8001634 <__aeabi_dsub+0x64c>
 800162a:	465d      	mov	r5, fp
 800162c:	0004      	movs	r4, r0
 800162e:	08fb      	lsrs	r3, r7, #3
 8001630:	0749      	lsls	r1, r1, #29
 8001632:	430b      	orrs	r3, r1
 8001634:	0f5a      	lsrs	r2, r3, #29
 8001636:	00db      	lsls	r3, r3, #3
 8001638:	08db      	lsrs	r3, r3, #3
 800163a:	0752      	lsls	r2, r2, #29
 800163c:	4313      	orrs	r3, r2
 800163e:	e65d      	b.n	80012fc <__aeabi_dsub+0x314>
 8001640:	074b      	lsls	r3, r1, #29
 8001642:	08ff      	lsrs	r7, r7, #3
 8001644:	433b      	orrs	r3, r7
 8001646:	08cc      	lsrs	r4, r1, #3
 8001648:	e649      	b.n	80012de <__aeabi_dsub+0x2f6>
 800164a:	19dc      	adds	r4, r3, r7
 800164c:	429c      	cmp	r4, r3
 800164e:	419b      	sbcs	r3, r3
 8001650:	4461      	add	r1, ip
 8001652:	4689      	mov	r9, r1
 8001654:	425b      	negs	r3, r3
 8001656:	4499      	add	r9, r3
 8001658:	464b      	mov	r3, r9
 800165a:	021b      	lsls	r3, r3, #8
 800165c:	d400      	bmi.n	8001660 <__aeabi_dsub+0x678>
 800165e:	e631      	b.n	80012c4 <__aeabi_dsub+0x2dc>
 8001660:	464a      	mov	r2, r9
 8001662:	4b17      	ldr	r3, [pc, #92]	; (80016c0 <__aeabi_dsub+0x6d8>)
 8001664:	401a      	ands	r2, r3
 8001666:	2301      	movs	r3, #1
 8001668:	4691      	mov	r9, r2
 800166a:	4698      	mov	r8, r3
 800166c:	e62a      	b.n	80012c4 <__aeabi_dsub+0x2dc>
 800166e:	0016      	movs	r6, r2
 8001670:	4664      	mov	r4, ip
 8001672:	3e20      	subs	r6, #32
 8001674:	40f4      	lsrs	r4, r6
 8001676:	46a0      	mov	r8, r4
 8001678:	2a20      	cmp	r2, #32
 800167a:	d005      	beq.n	8001688 <__aeabi_dsub+0x6a0>
 800167c:	2640      	movs	r6, #64	; 0x40
 800167e:	4664      	mov	r4, ip
 8001680:	1ab2      	subs	r2, r6, r2
 8001682:	4094      	lsls	r4, r2
 8001684:	4323      	orrs	r3, r4
 8001686:	469a      	mov	sl, r3
 8001688:	4654      	mov	r4, sl
 800168a:	1e63      	subs	r3, r4, #1
 800168c:	419c      	sbcs	r4, r3
 800168e:	4643      	mov	r3, r8
 8001690:	431c      	orrs	r4, r3
 8001692:	e5db      	b.n	800124c <__aeabi_dsub+0x264>
 8001694:	0002      	movs	r2, r0
 8001696:	2400      	movs	r4, #0
 8001698:	2300      	movs	r3, #0
 800169a:	e548      	b.n	800112e <__aeabi_dsub+0x146>
 800169c:	19dc      	adds	r4, r3, r7
 800169e:	42bc      	cmp	r4, r7
 80016a0:	41bf      	sbcs	r7, r7
 80016a2:	4461      	add	r1, ip
 80016a4:	4689      	mov	r9, r1
 80016a6:	427f      	negs	r7, r7
 80016a8:	44b9      	add	r9, r7
 80016aa:	e738      	b.n	800151e <__aeabi_dsub+0x536>
 80016ac:	464b      	mov	r3, r9
 80016ae:	4323      	orrs	r3, r4
 80016b0:	d100      	bne.n	80016b4 <__aeabi_dsub+0x6cc>
 80016b2:	e69f      	b.n	80013f4 <__aeabi_dsub+0x40c>
 80016b4:	e606      	b.n	80012c4 <__aeabi_dsub+0x2dc>
 80016b6:	46c0      	nop			; (mov r8, r8)
 80016b8:	000007fe 	.word	0x000007fe
 80016bc:	000007ff 	.word	0x000007ff
 80016c0:	ff7fffff 	.word	0xff7fffff
 80016c4:	08ff      	lsrs	r7, r7, #3
 80016c6:	074b      	lsls	r3, r1, #29
 80016c8:	433b      	orrs	r3, r7
 80016ca:	08cc      	lsrs	r4, r1, #3
 80016cc:	e616      	b.n	80012fc <__aeabi_dsub+0x314>
 80016ce:	4662      	mov	r2, ip
 80016d0:	08db      	lsrs	r3, r3, #3
 80016d2:	0752      	lsls	r2, r2, #29
 80016d4:	4313      	orrs	r3, r2
 80016d6:	4662      	mov	r2, ip
 80016d8:	08d4      	lsrs	r4, r2, #3
 80016da:	2280      	movs	r2, #128	; 0x80
 80016dc:	0312      	lsls	r2, r2, #12
 80016de:	4214      	tst	r4, r2
 80016e0:	d007      	beq.n	80016f2 <__aeabi_dsub+0x70a>
 80016e2:	08c8      	lsrs	r0, r1, #3
 80016e4:	4210      	tst	r0, r2
 80016e6:	d104      	bne.n	80016f2 <__aeabi_dsub+0x70a>
 80016e8:	465d      	mov	r5, fp
 80016ea:	0004      	movs	r4, r0
 80016ec:	08fb      	lsrs	r3, r7, #3
 80016ee:	0749      	lsls	r1, r1, #29
 80016f0:	430b      	orrs	r3, r1
 80016f2:	0f5a      	lsrs	r2, r3, #29
 80016f4:	00db      	lsls	r3, r3, #3
 80016f6:	0752      	lsls	r2, r2, #29
 80016f8:	08db      	lsrs	r3, r3, #3
 80016fa:	4313      	orrs	r3, r2
 80016fc:	e5fe      	b.n	80012fc <__aeabi_dsub+0x314>
 80016fe:	2300      	movs	r3, #0
 8001700:	4a01      	ldr	r2, [pc, #4]	; (8001708 <__aeabi_dsub+0x720>)
 8001702:	001c      	movs	r4, r3
 8001704:	e513      	b.n	800112e <__aeabi_dsub+0x146>
 8001706:	46c0      	nop			; (mov r8, r8)
 8001708:	000007ff 	.word	0x000007ff

0800170c <__aeabi_f2d>:
 800170c:	b570      	push	{r4, r5, r6, lr}
 800170e:	0043      	lsls	r3, r0, #1
 8001710:	0246      	lsls	r6, r0, #9
 8001712:	0fc4      	lsrs	r4, r0, #31
 8001714:	20fe      	movs	r0, #254	; 0xfe
 8001716:	0e1b      	lsrs	r3, r3, #24
 8001718:	1c59      	adds	r1, r3, #1
 800171a:	0a75      	lsrs	r5, r6, #9
 800171c:	4208      	tst	r0, r1
 800171e:	d00c      	beq.n	800173a <__aeabi_f2d+0x2e>
 8001720:	22e0      	movs	r2, #224	; 0xe0
 8001722:	0092      	lsls	r2, r2, #2
 8001724:	4694      	mov	ip, r2
 8001726:	076d      	lsls	r5, r5, #29
 8001728:	0b36      	lsrs	r6, r6, #12
 800172a:	4463      	add	r3, ip
 800172c:	051b      	lsls	r3, r3, #20
 800172e:	4333      	orrs	r3, r6
 8001730:	07e4      	lsls	r4, r4, #31
 8001732:	4323      	orrs	r3, r4
 8001734:	0028      	movs	r0, r5
 8001736:	0019      	movs	r1, r3
 8001738:	bd70      	pop	{r4, r5, r6, pc}
 800173a:	2b00      	cmp	r3, #0
 800173c:	d114      	bne.n	8001768 <__aeabi_f2d+0x5c>
 800173e:	2d00      	cmp	r5, #0
 8001740:	d01b      	beq.n	800177a <__aeabi_f2d+0x6e>
 8001742:	0028      	movs	r0, r5
 8001744:	f000 f8b2 	bl	80018ac <__clzsi2>
 8001748:	280a      	cmp	r0, #10
 800174a:	dc1c      	bgt.n	8001786 <__aeabi_f2d+0x7a>
 800174c:	230b      	movs	r3, #11
 800174e:	002e      	movs	r6, r5
 8001750:	1a1b      	subs	r3, r3, r0
 8001752:	40de      	lsrs	r6, r3
 8001754:	0003      	movs	r3, r0
 8001756:	3315      	adds	r3, #21
 8001758:	409d      	lsls	r5, r3
 800175a:	4a0e      	ldr	r2, [pc, #56]	; (8001794 <__aeabi_f2d+0x88>)
 800175c:	0336      	lsls	r6, r6, #12
 800175e:	1a12      	subs	r2, r2, r0
 8001760:	0552      	lsls	r2, r2, #21
 8001762:	0b36      	lsrs	r6, r6, #12
 8001764:	0d53      	lsrs	r3, r2, #21
 8001766:	e7e1      	b.n	800172c <__aeabi_f2d+0x20>
 8001768:	2d00      	cmp	r5, #0
 800176a:	d009      	beq.n	8001780 <__aeabi_f2d+0x74>
 800176c:	2280      	movs	r2, #128	; 0x80
 800176e:	0b36      	lsrs	r6, r6, #12
 8001770:	0312      	lsls	r2, r2, #12
 8001772:	4b09      	ldr	r3, [pc, #36]	; (8001798 <__aeabi_f2d+0x8c>)
 8001774:	076d      	lsls	r5, r5, #29
 8001776:	4316      	orrs	r6, r2
 8001778:	e7d8      	b.n	800172c <__aeabi_f2d+0x20>
 800177a:	2300      	movs	r3, #0
 800177c:	2600      	movs	r6, #0
 800177e:	e7d5      	b.n	800172c <__aeabi_f2d+0x20>
 8001780:	2600      	movs	r6, #0
 8001782:	4b05      	ldr	r3, [pc, #20]	; (8001798 <__aeabi_f2d+0x8c>)
 8001784:	e7d2      	b.n	800172c <__aeabi_f2d+0x20>
 8001786:	0003      	movs	r3, r0
 8001788:	3b0b      	subs	r3, #11
 800178a:	409d      	lsls	r5, r3
 800178c:	002e      	movs	r6, r5
 800178e:	2500      	movs	r5, #0
 8001790:	e7e3      	b.n	800175a <__aeabi_f2d+0x4e>
 8001792:	46c0      	nop			; (mov r8, r8)
 8001794:	00000389 	.word	0x00000389
 8001798:	000007ff 	.word	0x000007ff

0800179c <__aeabi_d2f>:
 800179c:	0002      	movs	r2, r0
 800179e:	004b      	lsls	r3, r1, #1
 80017a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80017a2:	0d5b      	lsrs	r3, r3, #21
 80017a4:	030c      	lsls	r4, r1, #12
 80017a6:	4e3d      	ldr	r6, [pc, #244]	; (800189c <__aeabi_d2f+0x100>)
 80017a8:	0a64      	lsrs	r4, r4, #9
 80017aa:	0f40      	lsrs	r0, r0, #29
 80017ac:	1c5f      	adds	r7, r3, #1
 80017ae:	0fc9      	lsrs	r1, r1, #31
 80017b0:	4304      	orrs	r4, r0
 80017b2:	00d5      	lsls	r5, r2, #3
 80017b4:	4237      	tst	r7, r6
 80017b6:	d00a      	beq.n	80017ce <__aeabi_d2f+0x32>
 80017b8:	4839      	ldr	r0, [pc, #228]	; (80018a0 <__aeabi_d2f+0x104>)
 80017ba:	181e      	adds	r6, r3, r0
 80017bc:	2efe      	cmp	r6, #254	; 0xfe
 80017be:	dd16      	ble.n	80017ee <__aeabi_d2f+0x52>
 80017c0:	20ff      	movs	r0, #255	; 0xff
 80017c2:	2400      	movs	r4, #0
 80017c4:	05c0      	lsls	r0, r0, #23
 80017c6:	4320      	orrs	r0, r4
 80017c8:	07c9      	lsls	r1, r1, #31
 80017ca:	4308      	orrs	r0, r1
 80017cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80017ce:	2b00      	cmp	r3, #0
 80017d0:	d106      	bne.n	80017e0 <__aeabi_d2f+0x44>
 80017d2:	432c      	orrs	r4, r5
 80017d4:	d026      	beq.n	8001824 <__aeabi_d2f+0x88>
 80017d6:	2205      	movs	r2, #5
 80017d8:	0192      	lsls	r2, r2, #6
 80017da:	0a54      	lsrs	r4, r2, #9
 80017dc:	b2d8      	uxtb	r0, r3
 80017de:	e7f1      	b.n	80017c4 <__aeabi_d2f+0x28>
 80017e0:	4325      	orrs	r5, r4
 80017e2:	d0ed      	beq.n	80017c0 <__aeabi_d2f+0x24>
 80017e4:	2080      	movs	r0, #128	; 0x80
 80017e6:	03c0      	lsls	r0, r0, #15
 80017e8:	4304      	orrs	r4, r0
 80017ea:	20ff      	movs	r0, #255	; 0xff
 80017ec:	e7ea      	b.n	80017c4 <__aeabi_d2f+0x28>
 80017ee:	2e00      	cmp	r6, #0
 80017f0:	dd1b      	ble.n	800182a <__aeabi_d2f+0x8e>
 80017f2:	0192      	lsls	r2, r2, #6
 80017f4:	1e53      	subs	r3, r2, #1
 80017f6:	419a      	sbcs	r2, r3
 80017f8:	00e4      	lsls	r4, r4, #3
 80017fa:	0f6d      	lsrs	r5, r5, #29
 80017fc:	4322      	orrs	r2, r4
 80017fe:	432a      	orrs	r2, r5
 8001800:	0753      	lsls	r3, r2, #29
 8001802:	d048      	beq.n	8001896 <__aeabi_d2f+0xfa>
 8001804:	230f      	movs	r3, #15
 8001806:	4013      	ands	r3, r2
 8001808:	2b04      	cmp	r3, #4
 800180a:	d000      	beq.n	800180e <__aeabi_d2f+0x72>
 800180c:	3204      	adds	r2, #4
 800180e:	2380      	movs	r3, #128	; 0x80
 8001810:	04db      	lsls	r3, r3, #19
 8001812:	4013      	ands	r3, r2
 8001814:	d03f      	beq.n	8001896 <__aeabi_d2f+0xfa>
 8001816:	1c70      	adds	r0, r6, #1
 8001818:	2efe      	cmp	r6, #254	; 0xfe
 800181a:	d0d1      	beq.n	80017c0 <__aeabi_d2f+0x24>
 800181c:	0192      	lsls	r2, r2, #6
 800181e:	0a54      	lsrs	r4, r2, #9
 8001820:	b2c0      	uxtb	r0, r0
 8001822:	e7cf      	b.n	80017c4 <__aeabi_d2f+0x28>
 8001824:	2000      	movs	r0, #0
 8001826:	2400      	movs	r4, #0
 8001828:	e7cc      	b.n	80017c4 <__aeabi_d2f+0x28>
 800182a:	0032      	movs	r2, r6
 800182c:	3217      	adds	r2, #23
 800182e:	db22      	blt.n	8001876 <__aeabi_d2f+0xda>
 8001830:	2080      	movs	r0, #128	; 0x80
 8001832:	0400      	lsls	r0, r0, #16
 8001834:	4320      	orrs	r0, r4
 8001836:	241e      	movs	r4, #30
 8001838:	1ba4      	subs	r4, r4, r6
 800183a:	2c1f      	cmp	r4, #31
 800183c:	dd1d      	ble.n	800187a <__aeabi_d2f+0xde>
 800183e:	2202      	movs	r2, #2
 8001840:	4252      	negs	r2, r2
 8001842:	1b96      	subs	r6, r2, r6
 8001844:	0002      	movs	r2, r0
 8001846:	40f2      	lsrs	r2, r6
 8001848:	0016      	movs	r6, r2
 800184a:	2c20      	cmp	r4, #32
 800184c:	d004      	beq.n	8001858 <__aeabi_d2f+0xbc>
 800184e:	4a15      	ldr	r2, [pc, #84]	; (80018a4 <__aeabi_d2f+0x108>)
 8001850:	4694      	mov	ip, r2
 8001852:	4463      	add	r3, ip
 8001854:	4098      	lsls	r0, r3
 8001856:	4305      	orrs	r5, r0
 8001858:	002a      	movs	r2, r5
 800185a:	1e53      	subs	r3, r2, #1
 800185c:	419a      	sbcs	r2, r3
 800185e:	4332      	orrs	r2, r6
 8001860:	2600      	movs	r6, #0
 8001862:	0753      	lsls	r3, r2, #29
 8001864:	d1ce      	bne.n	8001804 <__aeabi_d2f+0x68>
 8001866:	2480      	movs	r4, #128	; 0x80
 8001868:	0013      	movs	r3, r2
 800186a:	04e4      	lsls	r4, r4, #19
 800186c:	2001      	movs	r0, #1
 800186e:	4023      	ands	r3, r4
 8001870:	4222      	tst	r2, r4
 8001872:	d1d3      	bne.n	800181c <__aeabi_d2f+0x80>
 8001874:	e7b0      	b.n	80017d8 <__aeabi_d2f+0x3c>
 8001876:	2300      	movs	r3, #0
 8001878:	e7ad      	b.n	80017d6 <__aeabi_d2f+0x3a>
 800187a:	4a0b      	ldr	r2, [pc, #44]	; (80018a8 <__aeabi_d2f+0x10c>)
 800187c:	4694      	mov	ip, r2
 800187e:	002a      	movs	r2, r5
 8001880:	40e2      	lsrs	r2, r4
 8001882:	0014      	movs	r4, r2
 8001884:	002a      	movs	r2, r5
 8001886:	4463      	add	r3, ip
 8001888:	409a      	lsls	r2, r3
 800188a:	4098      	lsls	r0, r3
 800188c:	1e55      	subs	r5, r2, #1
 800188e:	41aa      	sbcs	r2, r5
 8001890:	4302      	orrs	r2, r0
 8001892:	4322      	orrs	r2, r4
 8001894:	e7e4      	b.n	8001860 <__aeabi_d2f+0xc4>
 8001896:	0033      	movs	r3, r6
 8001898:	e79e      	b.n	80017d8 <__aeabi_d2f+0x3c>
 800189a:	46c0      	nop			; (mov r8, r8)
 800189c:	000007fe 	.word	0x000007fe
 80018a0:	fffffc80 	.word	0xfffffc80
 80018a4:	fffffca2 	.word	0xfffffca2
 80018a8:	fffffc82 	.word	0xfffffc82

080018ac <__clzsi2>:
 80018ac:	211c      	movs	r1, #28
 80018ae:	2301      	movs	r3, #1
 80018b0:	041b      	lsls	r3, r3, #16
 80018b2:	4298      	cmp	r0, r3
 80018b4:	d301      	bcc.n	80018ba <__clzsi2+0xe>
 80018b6:	0c00      	lsrs	r0, r0, #16
 80018b8:	3910      	subs	r1, #16
 80018ba:	0a1b      	lsrs	r3, r3, #8
 80018bc:	4298      	cmp	r0, r3
 80018be:	d301      	bcc.n	80018c4 <__clzsi2+0x18>
 80018c0:	0a00      	lsrs	r0, r0, #8
 80018c2:	3908      	subs	r1, #8
 80018c4:	091b      	lsrs	r3, r3, #4
 80018c6:	4298      	cmp	r0, r3
 80018c8:	d301      	bcc.n	80018ce <__clzsi2+0x22>
 80018ca:	0900      	lsrs	r0, r0, #4
 80018cc:	3904      	subs	r1, #4
 80018ce:	a202      	add	r2, pc, #8	; (adr r2, 80018d8 <__clzsi2+0x2c>)
 80018d0:	5c10      	ldrb	r0, [r2, r0]
 80018d2:	1840      	adds	r0, r0, r1
 80018d4:	4770      	bx	lr
 80018d6:	46c0      	nop			; (mov r8, r8)
 80018d8:	02020304 	.word	0x02020304
 80018dc:	01010101 	.word	0x01010101
	...

080018e8 <UART_SendString>:
 80018e8:	2180      	movs	r1, #128	; 0x80
 80018ea:	b510      	push	{r4, lr}
 80018ec:	4a05      	ldr	r2, [pc, #20]	; (8001904 <UART_SendString+0x1c>)
 80018ee:	7803      	ldrb	r3, [r0, #0]
 80018f0:	2b00      	cmp	r3, #0
 80018f2:	d100      	bne.n	80018f6 <UART_SendString+0xe>
 80018f4:	bd10      	pop	{r4, pc}
 80018f6:	3001      	adds	r0, #1
 80018f8:	6814      	ldr	r4, [r2, #0]
 80018fa:	420c      	tst	r4, r1
 80018fc:	d0fc      	beq.n	80018f8 <UART_SendString+0x10>
 80018fe:	6053      	str	r3, [r2, #4]
 8001900:	e7f5      	b.n	80018ee <UART_SendString+0x6>
 8001902:	46c0      	nop			; (mov r8, r8)
 8001904:	40013800 	.word	0x40013800

08001908 <delay_ms>:
 8001908:	2200      	movs	r2, #0
 800190a:	23fa      	movs	r3, #250	; 0xfa
 800190c:	009b      	lsls	r3, r3, #2
 800190e:	46c0      	nop			; (mov r8, r8)
 8001910:	3b01      	subs	r3, #1
 8001912:	2b00      	cmp	r3, #0
 8001914:	d1fb      	bne.n	800190e <delay_ms+0x6>
 8001916:	3201      	adds	r2, #1
 8001918:	4290      	cmp	r0, r2
 800191a:	d1f6      	bne.n	800190a <delay_ms+0x2>
 800191c:	4770      	bx	lr
	...

08001920 <I2C_start>:
 8001920:	2202      	movs	r2, #2
 8001922:	4b0c      	ldr	r3, [pc, #48]	; (8001954 <I2C_start+0x34>)
 8001924:	6999      	ldr	r1, [r3, #24]
 8001926:	4211      	tst	r1, r2
 8001928:	d1fc      	bne.n	8001924 <I2C_start+0x4>
 800192a:	22a0      	movs	r2, #160	; 0xa0
 800192c:	6819      	ldr	r1, [r3, #0]
 800192e:	00d2      	lsls	r2, r2, #3
 8001930:	430a      	orrs	r2, r1
 8001932:	601a      	str	r2, [r3, #0]
 8001934:	2201      	movs	r2, #1
 8001936:	6959      	ldr	r1, [r3, #20]
 8001938:	4211      	tst	r1, r2
 800193a:	d0fc      	beq.n	8001936 <I2C_start+0x16>
 800193c:	2202      	movs	r2, #2
 800193e:	6118      	str	r0, [r3, #16]
 8001940:	6959      	ldr	r1, [r3, #20]
 8001942:	4211      	tst	r1, r2
 8001944:	d0fc      	beq.n	8001940 <I2C_start+0x20>
 8001946:	699b      	ldr	r3, [r3, #24]
 8001948:	2301      	movs	r3, #1
 800194a:	4018      	ands	r0, r3
 800194c:	4b02      	ldr	r3, [pc, #8]	; (8001958 <I2C_start+0x38>)
 800194e:	7018      	strb	r0, [r3, #0]
 8001950:	4770      	bx	lr
 8001952:	46c0      	nop			; (mov r8, r8)
 8001954:	40005400 	.word	0x40005400
 8001958:	20000080 	.word	0x20000080

0800195c <I2C_read>:
 800195c:	4b09      	ldr	r3, [pc, #36]	; (8001984 <I2C_read+0x28>)
 800195e:	2800      	cmp	r0, #0
 8001960:	d108      	bne.n	8001974 <I2C_read+0x18>
 8001962:	681a      	ldr	r2, [r3, #0]
 8001964:	4908      	ldr	r1, [pc, #32]	; (8001988 <I2C_read+0x2c>)
 8001966:	400a      	ands	r2, r1
 8001968:	601a      	str	r2, [r3, #0]
 800196a:	2280      	movs	r2, #128	; 0x80
 800196c:	6819      	ldr	r1, [r3, #0]
 800196e:	0092      	lsls	r2, r2, #2
 8001970:	430a      	orrs	r2, r1
 8001972:	601a      	str	r2, [r3, #0]
 8001974:	2240      	movs	r2, #64	; 0x40
 8001976:	6959      	ldr	r1, [r3, #20]
 8001978:	4211      	tst	r1, r2
 800197a:	d0fc      	beq.n	8001976 <I2C_read+0x1a>
 800197c:	6918      	ldr	r0, [r3, #16]
 800197e:	b2c0      	uxtb	r0, r0
 8001980:	4770      	bx	lr
 8001982:	46c0      	nop			; (mov r8, r8)
 8001984:	40005400 	.word	0x40005400
 8001988:	fffffbff 	.word	0xfffffbff

0800198c <I2C_stop>:
 800198c:	4b07      	ldr	r3, [pc, #28]	; (80019ac <I2C_stop+0x20>)
 800198e:	781b      	ldrb	r3, [r3, #0]
 8001990:	2b00      	cmp	r3, #0
 8001992:	d109      	bne.n	80019a8 <I2C_stop+0x1c>
 8001994:	2204      	movs	r2, #4
 8001996:	4b06      	ldr	r3, [pc, #24]	; (80019b0 <I2C_stop+0x24>)
 8001998:	6959      	ldr	r1, [r3, #20]
 800199a:	4211      	tst	r1, r2
 800199c:	d0fc      	beq.n	8001998 <I2C_stop+0xc>
 800199e:	2280      	movs	r2, #128	; 0x80
 80019a0:	6819      	ldr	r1, [r3, #0]
 80019a2:	0092      	lsls	r2, r2, #2
 80019a4:	430a      	orrs	r2, r1
 80019a6:	601a      	str	r2, [r3, #0]
 80019a8:	4770      	bx	lr
 80019aa:	46c0      	nop			; (mov r8, r8)
 80019ac:	20000080 	.word	0x20000080
 80019b0:	40005400 	.word	0x40005400

080019b4 <ADC_COMP_IRQHandler>:
 80019b4:	e7fe      	b.n	80019b4 <ADC_COMP_IRQHandler>

080019b6 <Reset_Handler>:
 80019b6:	481d      	ldr	r0, [pc, #116]	; (8001a2c <Reset_Handler+0x76>)
 80019b8:	4685      	mov	sp, r0
 80019ba:	4a12      	ldr	r2, [pc, #72]	; (8001a04 <Reset_Handler+0x4e>)
 80019bc:	4b12      	ldr	r3, [pc, #72]	; (8001a08 <Reset_Handler+0x52>)
 80019be:	4913      	ldr	r1, [pc, #76]	; (8001a0c <Reset_Handler+0x56>)
 80019c0:	609a      	str	r2, [r3, #8]
 80019c2:	4a13      	ldr	r2, [pc, #76]	; (8001a10 <Reset_Handler+0x5a>)
 80019c4:	4b13      	ldr	r3, [pc, #76]	; (8001a14 <Reset_Handler+0x5e>)
 80019c6:	428b      	cmp	r3, r1
 80019c8:	d316      	bcc.n	80019f8 <Reset_Handler+0x42>
 80019ca:	2100      	movs	r1, #0
 80019cc:	4b12      	ldr	r3, [pc, #72]	; (8001a18 <Reset_Handler+0x62>)
 80019ce:	4a13      	ldr	r2, [pc, #76]	; (8001a1c <Reset_Handler+0x66>)
 80019d0:	4293      	cmp	r3, r2
 80019d2:	d314      	bcc.n	80019fe <Reset_Handler+0x48>
 80019d4:	4a12      	ldr	r2, [pc, #72]	; (8001a20 <Reset_Handler+0x6a>)
 80019d6:	4913      	ldr	r1, [pc, #76]	; (8001a24 <Reset_Handler+0x6e>)
 80019d8:	6853      	ldr	r3, [r2, #4]
 80019da:	6809      	ldr	r1, [r1, #0]
 80019dc:	0c1b      	lsrs	r3, r3, #16
 80019de:	041b      	lsls	r3, r3, #16
 80019e0:	430b      	orrs	r3, r1
 80019e2:	2180      	movs	r1, #128	; 0x80
 80019e4:	0209      	lsls	r1, r1, #8
 80019e6:	430b      	orrs	r3, r1
 80019e8:	2105      	movs	r1, #5
 80019ea:	6053      	str	r3, [r2, #4]
 80019ec:	4b0e      	ldr	r3, [pc, #56]	; (8001a28 <Reset_Handler+0x72>)
 80019ee:	6019      	str	r1, [r3, #0]
 80019f0:	2323      	movs	r3, #35	; 0x23
 80019f2:	6353      	str	r3, [r2, #52]	; 0x34
 80019f4:	f000 f81c 	bl	8001a30 <main>
 80019f8:	ca01      	ldmia	r2!, {r0}
 80019fa:	c301      	stmia	r3!, {r0}
 80019fc:	e7e3      	b.n	80019c6 <Reset_Handler+0x10>
 80019fe:	c302      	stmia	r3!, {r1}
 8001a00:	e7e6      	b.n	80019d0 <Reset_Handler+0x1a>
 8001a02:	46c0      	nop			; (mov r8, r8)
 8001a04:	08000000 	.word	0x08000000
 8001a08:	e000ed00 	.word	0xe000ed00
 8001a0c:	20000064 	.word	0x20000064
 8001a10:	080028e0 	.word	0x080028e0
 8001a14:	20000000 	.word	0x20000000
 8001a18:	20000064 	.word	0x20000064
 8001a1c:	20000098 	.word	0x20000098
 8001a20:	40021000 	.word	0x40021000
 8001a24:	1fff0f10 	.word	0x1fff0f10
 8001a28:	e000e010 	.word	0xe000e010
 8001a2c:	20000c00 	.word	0x20000c00

08001a30 <main>:
 8001a30:	2101      	movs	r1, #1
 8001a32:	4baf      	ldr	r3, [pc, #700]	; (8001cf0 <main+0x2c0>)
 8001a34:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001a36:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8001a38:	24f0      	movs	r4, #240	; 0xf0
 8001a3a:	430a      	orrs	r2, r1
 8001a3c:	635a      	str	r2, [r3, #52]	; 0x34
 8001a3e:	22a0      	movs	r2, #160	; 0xa0
 8001a40:	05d2      	lsls	r2, r2, #23
 8001a42:	6810      	ldr	r0, [r2, #0]
 8001a44:	25c0      	movs	r5, #192	; 0xc0
 8001a46:	43a0      	bics	r0, r4
 8001a48:	0004      	movs	r4, r0
 8001a4a:	20a0      	movs	r0, #160	; 0xa0
 8001a4c:	4320      	orrs	r0, r4
 8001a4e:	6010      	str	r0, [r2, #0]
 8001a50:	2004      	movs	r0, #4
 8001a52:	6854      	ldr	r4, [r2, #4]
 8001a54:	260f      	movs	r6, #15
 8001a56:	4384      	bics	r4, r0
 8001a58:	6054      	str	r4, [r2, #4]
 8001a5a:	68d4      	ldr	r4, [r2, #12]
 8001a5c:	4fa5      	ldr	r7, [pc, #660]	; (8001cf4 <main+0x2c4>)
 8001a5e:	43ac      	bics	r4, r5
 8001a60:	0025      	movs	r5, r4
 8001a62:	2440      	movs	r4, #64	; 0x40
 8001a64:	432c      	orrs	r4, r5
 8001a66:	60d4      	str	r4, [r2, #12]
 8001a68:	6a14      	ldr	r4, [r2, #32]
 8001a6a:	4da3      	ldr	r5, [pc, #652]	; (8001cf8 <main+0x2c8>)
 8001a6c:	b097      	sub	sp, #92	; 0x5c
 8001a6e:	4025      	ands	r5, r4
 8001a70:	2488      	movs	r4, #136	; 0x88
 8001a72:	0164      	lsls	r4, r4, #5
 8001a74:	432c      	orrs	r4, r5
 8001a76:	6214      	str	r4, [r2, #32]
 8001a78:	2280      	movs	r2, #128	; 0x80
 8001a7a:	6c1c      	ldr	r4, [r3, #64]	; 0x40
 8001a7c:	01d2      	lsls	r2, r2, #7
 8001a7e:	4322      	orrs	r2, r4
 8001a80:	24d0      	movs	r4, #208	; 0xd0
 8001a82:	641a      	str	r2, [r3, #64]	; 0x40
 8001a84:	4a9d      	ldr	r2, [pc, #628]	; (8001cfc <main+0x2cc>)
 8001a86:	6094      	str	r4, [r2, #8]
 8001a88:	4c9d      	ldr	r4, [pc, #628]	; (8001d00 <main+0x2d0>)
 8001a8a:	60d4      	str	r4, [r2, #12]
 8001a8c:	2220      	movs	r2, #32
 8001a8e:	6b5c      	ldr	r4, [r3, #52]	; 0x34
 8001a90:	4322      	orrs	r2, r4
 8001a92:	240a      	movs	r4, #10
 8001a94:	635a      	str	r2, [r3, #52]	; 0x34
 8001a96:	4a9b      	ldr	r2, [pc, #620]	; (8001d04 <main+0x2d4>)
 8001a98:	6815      	ldr	r5, [r2, #0]
 8001a9a:	43b5      	bics	r5, r6
 8001a9c:	432c      	orrs	r4, r5
 8001a9e:	2503      	movs	r5, #3
 8001aa0:	6014      	str	r4, [r2, #0]
 8001aa2:	6854      	ldr	r4, [r2, #4]
 8001aa4:	432c      	orrs	r4, r5
 8001aa6:	6054      	str	r4, [r2, #4]
 8001aa8:	68d4      	ldr	r4, [r2, #12]
 8001aaa:	43b4      	bics	r4, r6
 8001aac:	0026      	movs	r6, r4
 8001aae:	2405      	movs	r4, #5
 8001ab0:	4334      	orrs	r4, r6
 8001ab2:	26ff      	movs	r6, #255	; 0xff
 8001ab4:	60d4      	str	r4, [r2, #12]
 8001ab6:	6a14      	ldr	r4, [r2, #32]
 8001ab8:	43b4      	bics	r4, r6
 8001aba:	0026      	movs	r6, r4
 8001abc:	24cc      	movs	r4, #204	; 0xcc
 8001abe:	4334      	orrs	r4, r6
 8001ac0:	6214      	str	r4, [r2, #32]
 8001ac2:	2280      	movs	r2, #128	; 0x80
 8001ac4:	6bdc      	ldr	r4, [r3, #60]	; 0x3c
 8001ac6:	0392      	lsls	r2, r2, #14
 8001ac8:	4322      	orrs	r2, r4
 8001aca:	63da      	str	r2, [r3, #60]	; 0x3c
 8001acc:	4b8e      	ldr	r3, [pc, #568]	; (8001d08 <main+0x2d8>)
 8001ace:	6078      	str	r0, [r7, #4]
 8001ad0:	61fb      	str	r3, [r7, #28]
 8001ad2:	2310      	movs	r3, #16
 8001ad4:	488d      	ldr	r0, [pc, #564]	; (8001d0c <main+0x2dc>)
 8001ad6:	623b      	str	r3, [r7, #32]
 8001ad8:	6039      	str	r1, [r7, #0]
 8001ada:	f7ff ff05 	bl	80018e8 <UART_SendString>
 8001ade:	20fa      	movs	r0, #250	; 0xfa
 8001ae0:	ac06      	add	r4, sp, #24
 8001ae2:	0040      	lsls	r0, r0, #1
 8001ae4:	f7ff ff10 	bl	8001908 <delay_ms>
 8001ae8:	4989      	ldr	r1, [pc, #548]	; (8001d10 <main+0x2e0>)
 8001aea:	002a      	movs	r2, r5
 8001aec:	0020      	movs	r0, r4
 8001aee:	f000 fc5a 	bl	80023a6 <memcpy>
 8001af2:	2070      	movs	r0, #112	; 0x70
 8001af4:	f7ff ff14 	bl	8001920 <I2C_start>
 8001af8:	2300      	movs	r3, #0
 8001afa:	2180      	movs	r1, #128	; 0x80
 8001afc:	5ce2      	ldrb	r2, [r4, r3]
 8001afe:	6978      	ldr	r0, [r7, #20]
 8001b00:	4208      	tst	r0, r1
 8001b02:	d0fc      	beq.n	8001afe <main+0xce>
 8001b04:	3301      	adds	r3, #1
 8001b06:	613a      	str	r2, [r7, #16]
 8001b08:	2b03      	cmp	r3, #3
 8001b0a:	d1f7      	bne.n	8001afc <main+0xcc>
 8001b0c:	f7ff ff3e 	bl	800198c <I2C_stop>
 8001b10:	20fa      	movs	r0, #250	; 0xfa
 8001b12:	0040      	lsls	r0, r0, #1
 8001b14:	f7ff fef8 	bl	8001908 <delay_ms>
 8001b18:	2071      	movs	r0, #113	; 0x71
 8001b1a:	f7ff ff01 	bl	8001920 <I2C_start>
 8001b1e:	2000      	movs	r0, #0
 8001b20:	f7ff ff1c 	bl	800195c <I2C_read>
 8001b24:	0005      	movs	r5, r0
 8001b26:	f7ff ff31 	bl	800198c <I2C_stop>
 8001b2a:	487a      	ldr	r0, [pc, #488]	; (8001d14 <main+0x2e4>)
 8001b2c:	072b      	lsls	r3, r5, #28
 8001b2e:	d500      	bpl.n	8001b32 <main+0x102>
 8001b30:	4879      	ldr	r0, [pc, #484]	; (8001d18 <main+0x2e8>)
 8001b32:	f7ff fed9 	bl	80018e8 <UART_SendString>
 8001b36:	20fa      	movs	r0, #250	; 0xfa
 8001b38:	0040      	lsls	r0, r0, #1
 8001b3a:	f7ff fee5 	bl	8001908 <delay_ms>
 8001b3e:	4977      	ldr	r1, [pc, #476]	; (8001d1c <main+0x2ec>)
 8001b40:	2203      	movs	r2, #3
 8001b42:	0020      	movs	r0, r4
 8001b44:	f000 fc2f 	bl	80023a6 <memcpy>
 8001b48:	4875      	ldr	r0, [pc, #468]	; (8001d20 <main+0x2f0>)
 8001b4a:	f7ff fecd 	bl	80018e8 <UART_SendString>
 8001b4e:	2070      	movs	r0, #112	; 0x70
 8001b50:	f7ff fee6 	bl	8001920 <I2C_start>
 8001b54:	2300      	movs	r3, #0
 8001b56:	2180      	movs	r1, #128	; 0x80
 8001b58:	5ce2      	ldrb	r2, [r4, r3]
 8001b5a:	6978      	ldr	r0, [r7, #20]
 8001b5c:	4208      	tst	r0, r1
 8001b5e:	d0fc      	beq.n	8001b5a <main+0x12a>
 8001b60:	3301      	adds	r3, #1
 8001b62:	613a      	str	r2, [r7, #16]
 8001b64:	2b03      	cmp	r3, #3
 8001b66:	d1f7      	bne.n	8001b58 <main+0x128>
 8001b68:	f7ff ff10 	bl	800198c <I2C_stop>
 8001b6c:	486d      	ldr	r0, [pc, #436]	; (8001d24 <main+0x2f4>)
 8001b6e:	f7ff febb 	bl	80018e8 <UART_SendString>
 8001b72:	2514      	movs	r5, #20
 8001b74:	2071      	movs	r0, #113	; 0x71
 8001b76:	f7ff fed3 	bl	8001920 <I2C_start>
 8001b7a:	2000      	movs	r0, #0
 8001b7c:	f7ff feee 	bl	800195c <I2C_read>
 8001b80:	0006      	movs	r6, r0
 8001b82:	f7ff ff03 	bl	800198c <I2C_stop>
 8001b86:	0633      	lsls	r3, r6, #24
 8001b88:	d43e      	bmi.n	8001c08 <main+0x1d8>
 8001b8a:	4867      	ldr	r0, [pc, #412]	; (8001d28 <main+0x2f8>)
 8001b8c:	f7ff feac 	bl	80018e8 <UART_SendString>
 8001b90:	2606      	movs	r6, #6
 8001b92:	3e01      	subs	r6, #1
 8001b94:	2e00      	cmp	r6, #0
 8001b96:	d13f      	bne.n	8001c18 <main+0x1e8>
 8001b98:	7823      	ldrb	r3, [r4, #0]
 8001b9a:	2b7f      	cmp	r3, #127	; 0x7f
 8001b9c:	d955      	bls.n	8001c4a <main+0x21a>
 8001b9e:	2500      	movs	r5, #0
 8001ba0:	4862      	ldr	r0, [pc, #392]	; (8001d2c <main+0x2fc>)
 8001ba2:	f7ff fea1 	bl	80018e8 <UART_SendString>
 8001ba6:	1c2e      	adds	r6, r5, #0
 8001ba8:	1c28      	adds	r0, r5, #0
 8001baa:	f7fe ff01 	bl	80009b0 <__aeabi_f2iz>
 8001bae:	9004      	str	r0, [sp, #16]
 8001bb0:	1c30      	adds	r0, r6, #0
 8001bb2:	f7fe fefd 	bl	80009b0 <__aeabi_f2iz>
 8001bb6:	9005      	str	r0, [sp, #20]
 8001bb8:	f7fe ff1a 	bl	80009f0 <__aeabi_i2f>
 8001bbc:	1c01      	adds	r1, r0, #0
 8001bbe:	1c30      	adds	r0, r6, #0
 8001bc0:	f7fe fd48 	bl	8000654 <__aeabi_fsub>
 8001bc4:	495a      	ldr	r1, [pc, #360]	; (8001d30 <main+0x300>)
 8001bc6:	f7fe fc1f 	bl	8000408 <__aeabi_fmul>
 8001bca:	f7fe fef1 	bl	80009b0 <__aeabi_f2iz>
 8001bce:	9b05      	ldr	r3, [sp, #20]
 8001bd0:	9002      	str	r0, [sp, #8]
 8001bd2:	9804      	ldr	r0, [sp, #16]
 8001bd4:	9301      	str	r3, [sp, #4]
 8001bd6:	f7fe ff0b 	bl	80009f0 <__aeabi_i2f>
 8001bda:	1c01      	adds	r1, r0, #0
 8001bdc:	1c28      	adds	r0, r5, #0
 8001bde:	f7fe fd39 	bl	8000654 <__aeabi_fsub>
 8001be2:	4953      	ldr	r1, [pc, #332]	; (8001d30 <main+0x300>)
 8001be4:	f7fe fc10 	bl	8000408 <__aeabi_fmul>
 8001be8:	f7fe fee2 	bl	80009b0 <__aeabi_f2iz>
 8001bec:	2140      	movs	r1, #64	; 0x40
 8001bee:	9b04      	ldr	r3, [sp, #16]
 8001bf0:	4a50      	ldr	r2, [pc, #320]	; (8001d34 <main+0x304>)
 8001bf2:	9000      	str	r0, [sp, #0]
 8001bf4:	0020      	movs	r0, r4
 8001bf6:	f000 f8b3 	bl	8001d60 <sniprintf>
 8001bfa:	0020      	movs	r0, r4
 8001bfc:	f7ff fe74 	bl	80018e8 <UART_SendString>
 8001c00:	484d      	ldr	r0, [pc, #308]	; (8001d38 <main+0x308>)
 8001c02:	f7ff fe81 	bl	8001908 <delay_ms>
 8001c06:	e796      	b.n	8001b36 <main+0x106>
 8001c08:	2032      	movs	r0, #50	; 0x32
 8001c0a:	3d01      	subs	r5, #1
 8001c0c:	f7ff fe7c 	bl	8001908 <delay_ms>
 8001c10:	2d00      	cmp	r5, #0
 8001c12:	d1af      	bne.n	8001b74 <main+0x144>
 8001c14:	4849      	ldr	r0, [pc, #292]	; (8001d3c <main+0x30c>)
 8001c16:	e7b9      	b.n	8001b8c <main+0x15c>
 8001c18:	2071      	movs	r0, #113	; 0x71
 8001c1a:	f7ff fe81 	bl	8001920 <I2C_start>
 8001c1e:	2500      	movs	r5, #0
 8001c20:	2300      	movs	r3, #0
 8001c22:	2204      	movs	r2, #4
 8001c24:	0fe8      	lsrs	r0, r5, #31
 8001c26:	42aa      	cmp	r2, r5
 8001c28:	4158      	adcs	r0, r3
 8001c2a:	b2c0      	uxtb	r0, r0
 8001c2c:	f7ff fe96 	bl	800195c <I2C_read>
 8001c30:	5560      	strb	r0, [r4, r5]
 8001c32:	3501      	adds	r5, #1
 8001c34:	2d06      	cmp	r5, #6
 8001c36:	d1f3      	bne.n	8001c20 <main+0x1f0>
 8001c38:	f7ff fea8 	bl	800198c <I2C_stop>
 8001c3c:	7823      	ldrb	r3, [r4, #0]
 8001c3e:	2b7f      	cmp	r3, #127	; 0x7f
 8001c40:	d903      	bls.n	8001c4a <main+0x21a>
 8001c42:	2032      	movs	r0, #50	; 0x32
 8001c44:	f7ff fe60 	bl	8001908 <delay_ms>
 8001c48:	e7a3      	b.n	8001b92 <main+0x162>
 8001c4a:	7860      	ldrb	r0, [r4, #1]
 8001c4c:	78a3      	ldrb	r3, [r4, #2]
 8001c4e:	78e5      	ldrb	r5, [r4, #3]
 8001c50:	011b      	lsls	r3, r3, #4
 8001c52:	0300      	lsls	r0, r0, #12
 8001c54:	4318      	orrs	r0, r3
 8001c56:	092b      	lsrs	r3, r5, #4
 8001c58:	4318      	orrs	r0, r3
 8001c5a:	f7fe ff17 	bl	8000a8c <__aeabi_ui2f>
 8001c5e:	f7ff fd55 	bl	800170c <__aeabi_f2d>
 8001c62:	2200      	movs	r2, #0
 8001c64:	4b36      	ldr	r3, [pc, #216]	; (8001d40 <main+0x310>)
 8001c66:	f7fe ff53 	bl	8000b10 <__aeabi_dmul>
 8001c6a:	2200      	movs	r2, #0
 8001c6c:	4b35      	ldr	r3, [pc, #212]	; (8001d44 <main+0x314>)
 8001c6e:	f7fe ff4f 	bl	8000b10 <__aeabi_dmul>
 8001c72:	f7ff fd93 	bl	800179c <__aeabi_d2f>
 8001c76:	1c06      	adds	r6, r0, #0
 8001c78:	0428      	lsls	r0, r5, #16
 8001c7a:	25f0      	movs	r5, #240	; 0xf0
 8001c7c:	032d      	lsls	r5, r5, #12
 8001c7e:	4028      	ands	r0, r5
 8001c80:	88a5      	ldrh	r5, [r4, #4]
 8001c82:	ba6d      	rev16	r5, r5
 8001c84:	b2ad      	uxth	r5, r5
 8001c86:	4328      	orrs	r0, r5
 8001c88:	f7fe ff00 	bl	8000a8c <__aeabi_ui2f>
 8001c8c:	f7ff fd3e 	bl	800170c <__aeabi_f2d>
 8001c90:	2200      	movs	r2, #0
 8001c92:	4b2b      	ldr	r3, [pc, #172]	; (8001d40 <main+0x310>)
 8001c94:	f7fe ff3c 	bl	8000b10 <__aeabi_dmul>
 8001c98:	2200      	movs	r2, #0
 8001c9a:	4b2b      	ldr	r3, [pc, #172]	; (8001d48 <main+0x318>)
 8001c9c:	f7fe ff38 	bl	8000b10 <__aeabi_dmul>
 8001ca0:	2200      	movs	r2, #0
 8001ca2:	4b2a      	ldr	r3, [pc, #168]	; (8001d4c <main+0x31c>)
 8001ca4:	f7ff f9a0 	bl	8000fe8 <__aeabi_dsub>
 8001ca8:	f7ff fd78 	bl	800179c <__aeabi_d2f>
 8001cac:	4928      	ldr	r1, [pc, #160]	; (8001d50 <main+0x320>)
 8001cae:	1c05      	adds	r5, r0, #0
 8001cb0:	f7fe fad2 	bl	8000258 <__aeabi_fcmplt>
 8001cb4:	2800      	cmp	r0, #0
 8001cb6:	d105      	bne.n	8001cc4 <main+0x294>
 8001cb8:	4926      	ldr	r1, [pc, #152]	; (8001d54 <main+0x324>)
 8001cba:	1c28      	adds	r0, r5, #0
 8001cbc:	f7fe fae0 	bl	8000280 <__aeabi_fcmpgt>
 8001cc0:	2800      	cmp	r0, #0
 8001cc2:	d003      	beq.n	8001ccc <main+0x29c>
 8001cc4:	4824      	ldr	r0, [pc, #144]	; (8001d58 <main+0x328>)
 8001cc6:	f7ff fe0f 	bl	80018e8 <UART_SendString>
 8001cca:	2500      	movs	r5, #0
 8001ccc:	2100      	movs	r1, #0
 8001cce:	1c30      	adds	r0, r6, #0
 8001cd0:	f7fe fac2 	bl	8000258 <__aeabi_fcmplt>
 8001cd4:	2800      	cmp	r0, #0
 8001cd6:	d106      	bne.n	8001ce6 <main+0x2b6>
 8001cd8:	4915      	ldr	r1, [pc, #84]	; (8001d30 <main+0x300>)
 8001cda:	1c30      	adds	r0, r6, #0
 8001cdc:	f7fe fad0 	bl	8000280 <__aeabi_fcmpgt>
 8001ce0:	2800      	cmp	r0, #0
 8001ce2:	d100      	bne.n	8001ce6 <main+0x2b6>
 8001ce4:	e760      	b.n	8001ba8 <main+0x178>
 8001ce6:	481d      	ldr	r0, [pc, #116]	; (8001d5c <main+0x32c>)
 8001ce8:	f7ff fdfe 	bl	80018e8 <UART_SendString>
 8001cec:	2600      	movs	r6, #0
 8001cee:	e75b      	b.n	8001ba8 <main+0x178>
 8001cf0:	40021000 	.word	0x40021000
 8001cf4:	40005400 	.word	0x40005400
 8001cf8:	ffff00ff 	.word	0xffff00ff
 8001cfc:	40013800 	.word	0x40013800
 8001d00:	0000200c 	.word	0x0000200c
 8001d04:	50001400 	.word	0x50001400
 8001d08:	00008014 	.word	0x00008014
 8001d0c:	08002710 	.word	0x08002710
 8001d10:	0800289d 	.word	0x0800289d
 8001d14:	08002729 	.word	0x08002729
 8001d18:	08002749 	.word	0x08002749
 8001d1c:	080028a0 	.word	0x080028a0
 8001d20:	0800276c 	.word	0x0800276c
 8001d24:	08002788 	.word	0x08002788
 8001d28:	080027c4 	.word	0x080027c4
 8001d2c:	080027f7 	.word	0x080027f7
 8001d30:	42c80000 	.word	0x42c80000
 8001d34:	0800286e 	.word	0x0800286e
 8001d38:	00002710 	.word	0x00002710
 8001d3c:	080027d4 	.word	0x080027d4
 8001d40:	3eb00000 	.word	0x3eb00000
 8001d44:	40590000 	.word	0x40590000
 8001d48:	40690000 	.word	0x40690000
 8001d4c:	40490000 	.word	0x40490000
 8001d50:	c2200000 	.word	0xc2200000
 8001d54:	42aa0000 	.word	0x42aa0000
 8001d58:	08002821 	.word	0x08002821
 8001d5c:	08002849 	.word	0x08002849

08001d60 <sniprintf>:
 8001d60:	b40c      	push	{r2, r3}
 8001d62:	b530      	push	{r4, r5, lr}
 8001d64:	4b17      	ldr	r3, [pc, #92]	; (8001dc4 <sniprintf+0x64>)
 8001d66:	000c      	movs	r4, r1
 8001d68:	681d      	ldr	r5, [r3, #0]
 8001d6a:	b09d      	sub	sp, #116	; 0x74
 8001d6c:	2900      	cmp	r1, #0
 8001d6e:	da08      	bge.n	8001d82 <sniprintf+0x22>
 8001d70:	238b      	movs	r3, #139	; 0x8b
 8001d72:	2001      	movs	r0, #1
 8001d74:	602b      	str	r3, [r5, #0]
 8001d76:	4240      	negs	r0, r0
 8001d78:	b01d      	add	sp, #116	; 0x74
 8001d7a:	bc30      	pop	{r4, r5}
 8001d7c:	bc08      	pop	{r3}
 8001d7e:	b002      	add	sp, #8
 8001d80:	4718      	bx	r3
 8001d82:	2382      	movs	r3, #130	; 0x82
 8001d84:	466a      	mov	r2, sp
 8001d86:	009b      	lsls	r3, r3, #2
 8001d88:	8293      	strh	r3, [r2, #20]
 8001d8a:	2300      	movs	r3, #0
 8001d8c:	9002      	str	r0, [sp, #8]
 8001d8e:	9006      	str	r0, [sp, #24]
 8001d90:	4299      	cmp	r1, r3
 8001d92:	d000      	beq.n	8001d96 <sniprintf+0x36>
 8001d94:	1e4b      	subs	r3, r1, #1
 8001d96:	9304      	str	r3, [sp, #16]
 8001d98:	9307      	str	r3, [sp, #28]
 8001d9a:	2301      	movs	r3, #1
 8001d9c:	466a      	mov	r2, sp
 8001d9e:	425b      	negs	r3, r3
 8001da0:	82d3      	strh	r3, [r2, #22]
 8001da2:	0028      	movs	r0, r5
 8001da4:	ab21      	add	r3, sp, #132	; 0x84
 8001da6:	9a20      	ldr	r2, [sp, #128]	; 0x80
 8001da8:	a902      	add	r1, sp, #8
 8001daa:	9301      	str	r3, [sp, #4]
 8001dac:	f000 f86e 	bl	8001e8c <_svfiprintf_r>
 8001db0:	1c43      	adds	r3, r0, #1
 8001db2:	da01      	bge.n	8001db8 <sniprintf+0x58>
 8001db4:	238b      	movs	r3, #139	; 0x8b
 8001db6:	602b      	str	r3, [r5, #0]
 8001db8:	2c00      	cmp	r4, #0
 8001dba:	d0dd      	beq.n	8001d78 <sniprintf+0x18>
 8001dbc:	2300      	movs	r3, #0
 8001dbe:	9a02      	ldr	r2, [sp, #8]
 8001dc0:	7013      	strb	r3, [r2, #0]
 8001dc2:	e7d9      	b.n	8001d78 <sniprintf+0x18>
 8001dc4:	20000000 	.word	0x20000000

08001dc8 <__ssputs_r>:
 8001dc8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001dca:	688e      	ldr	r6, [r1, #8]
 8001dcc:	b085      	sub	sp, #20
 8001dce:	0007      	movs	r7, r0
 8001dd0:	000c      	movs	r4, r1
 8001dd2:	9203      	str	r2, [sp, #12]
 8001dd4:	9301      	str	r3, [sp, #4]
 8001dd6:	429e      	cmp	r6, r3
 8001dd8:	d83c      	bhi.n	8001e54 <__ssputs_r+0x8c>
 8001dda:	2390      	movs	r3, #144	; 0x90
 8001ddc:	898a      	ldrh	r2, [r1, #12]
 8001dde:	00db      	lsls	r3, r3, #3
 8001de0:	421a      	tst	r2, r3
 8001de2:	d034      	beq.n	8001e4e <__ssputs_r+0x86>
 8001de4:	6909      	ldr	r1, [r1, #16]
 8001de6:	6823      	ldr	r3, [r4, #0]
 8001de8:	6960      	ldr	r0, [r4, #20]
 8001dea:	1a5b      	subs	r3, r3, r1
 8001dec:	9302      	str	r3, [sp, #8]
 8001dee:	2303      	movs	r3, #3
 8001df0:	4343      	muls	r3, r0
 8001df2:	0fdd      	lsrs	r5, r3, #31
 8001df4:	18ed      	adds	r5, r5, r3
 8001df6:	9b01      	ldr	r3, [sp, #4]
 8001df8:	9802      	ldr	r0, [sp, #8]
 8001dfa:	3301      	adds	r3, #1
 8001dfc:	181b      	adds	r3, r3, r0
 8001dfe:	106d      	asrs	r5, r5, #1
 8001e00:	42ab      	cmp	r3, r5
 8001e02:	d900      	bls.n	8001e06 <__ssputs_r+0x3e>
 8001e04:	001d      	movs	r5, r3
 8001e06:	0553      	lsls	r3, r2, #21
 8001e08:	d532      	bpl.n	8001e70 <__ssputs_r+0xa8>
 8001e0a:	0029      	movs	r1, r5
 8001e0c:	0038      	movs	r0, r7
 8001e0e:	f000 fb53 	bl	80024b8 <_malloc_r>
 8001e12:	1e06      	subs	r6, r0, #0
 8001e14:	d109      	bne.n	8001e2a <__ssputs_r+0x62>
 8001e16:	230c      	movs	r3, #12
 8001e18:	603b      	str	r3, [r7, #0]
 8001e1a:	2340      	movs	r3, #64	; 0x40
 8001e1c:	2001      	movs	r0, #1
 8001e1e:	89a2      	ldrh	r2, [r4, #12]
 8001e20:	4240      	negs	r0, r0
 8001e22:	4313      	orrs	r3, r2
 8001e24:	81a3      	strh	r3, [r4, #12]
 8001e26:	b005      	add	sp, #20
 8001e28:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e2a:	9a02      	ldr	r2, [sp, #8]
 8001e2c:	6921      	ldr	r1, [r4, #16]
 8001e2e:	f000 faba 	bl	80023a6 <memcpy>
 8001e32:	89a3      	ldrh	r3, [r4, #12]
 8001e34:	4a14      	ldr	r2, [pc, #80]	; (8001e88 <__ssputs_r+0xc0>)
 8001e36:	401a      	ands	r2, r3
 8001e38:	2380      	movs	r3, #128	; 0x80
 8001e3a:	4313      	orrs	r3, r2
 8001e3c:	81a3      	strh	r3, [r4, #12]
 8001e3e:	9b02      	ldr	r3, [sp, #8]
 8001e40:	6126      	str	r6, [r4, #16]
 8001e42:	18f6      	adds	r6, r6, r3
 8001e44:	6026      	str	r6, [r4, #0]
 8001e46:	6165      	str	r5, [r4, #20]
 8001e48:	9e01      	ldr	r6, [sp, #4]
 8001e4a:	1aed      	subs	r5, r5, r3
 8001e4c:	60a5      	str	r5, [r4, #8]
 8001e4e:	9b01      	ldr	r3, [sp, #4]
 8001e50:	429e      	cmp	r6, r3
 8001e52:	d900      	bls.n	8001e56 <__ssputs_r+0x8e>
 8001e54:	9e01      	ldr	r6, [sp, #4]
 8001e56:	0032      	movs	r2, r6
 8001e58:	9903      	ldr	r1, [sp, #12]
 8001e5a:	6820      	ldr	r0, [r4, #0]
 8001e5c:	f000 faac 	bl	80023b8 <memmove>
 8001e60:	68a3      	ldr	r3, [r4, #8]
 8001e62:	2000      	movs	r0, #0
 8001e64:	1b9b      	subs	r3, r3, r6
 8001e66:	60a3      	str	r3, [r4, #8]
 8001e68:	6823      	ldr	r3, [r4, #0]
 8001e6a:	199e      	adds	r6, r3, r6
 8001e6c:	6026      	str	r6, [r4, #0]
 8001e6e:	e7da      	b.n	8001e26 <__ssputs_r+0x5e>
 8001e70:	002a      	movs	r2, r5
 8001e72:	0038      	movs	r0, r7
 8001e74:	f000 fb96 	bl	80025a4 <_realloc_r>
 8001e78:	1e06      	subs	r6, r0, #0
 8001e7a:	d1e0      	bne.n	8001e3e <__ssputs_r+0x76>
 8001e7c:	0038      	movs	r0, r7
 8001e7e:	6921      	ldr	r1, [r4, #16]
 8001e80:	f000 faae 	bl	80023e0 <_free_r>
 8001e84:	e7c7      	b.n	8001e16 <__ssputs_r+0x4e>
 8001e86:	46c0      	nop			; (mov r8, r8)
 8001e88:	fffffb7f 	.word	0xfffffb7f

08001e8c <_svfiprintf_r>:
 8001e8c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e8e:	b0a1      	sub	sp, #132	; 0x84
 8001e90:	9003      	str	r0, [sp, #12]
 8001e92:	001d      	movs	r5, r3
 8001e94:	898b      	ldrh	r3, [r1, #12]
 8001e96:	000f      	movs	r7, r1
 8001e98:	0016      	movs	r6, r2
 8001e9a:	061b      	lsls	r3, r3, #24
 8001e9c:	d511      	bpl.n	8001ec2 <_svfiprintf_r+0x36>
 8001e9e:	690b      	ldr	r3, [r1, #16]
 8001ea0:	2b00      	cmp	r3, #0
 8001ea2:	d10e      	bne.n	8001ec2 <_svfiprintf_r+0x36>
 8001ea4:	2140      	movs	r1, #64	; 0x40
 8001ea6:	f000 fb07 	bl	80024b8 <_malloc_r>
 8001eaa:	6038      	str	r0, [r7, #0]
 8001eac:	6138      	str	r0, [r7, #16]
 8001eae:	2800      	cmp	r0, #0
 8001eb0:	d105      	bne.n	8001ebe <_svfiprintf_r+0x32>
 8001eb2:	230c      	movs	r3, #12
 8001eb4:	9a03      	ldr	r2, [sp, #12]
 8001eb6:	3801      	subs	r0, #1
 8001eb8:	6013      	str	r3, [r2, #0]
 8001eba:	b021      	add	sp, #132	; 0x84
 8001ebc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001ebe:	2340      	movs	r3, #64	; 0x40
 8001ec0:	617b      	str	r3, [r7, #20]
 8001ec2:	2300      	movs	r3, #0
 8001ec4:	ac08      	add	r4, sp, #32
 8001ec6:	6163      	str	r3, [r4, #20]
 8001ec8:	3320      	adds	r3, #32
 8001eca:	7663      	strb	r3, [r4, #25]
 8001ecc:	3310      	adds	r3, #16
 8001ece:	76a3      	strb	r3, [r4, #26]
 8001ed0:	9507      	str	r5, [sp, #28]
 8001ed2:	0035      	movs	r5, r6
 8001ed4:	782b      	ldrb	r3, [r5, #0]
 8001ed6:	2b00      	cmp	r3, #0
 8001ed8:	d001      	beq.n	8001ede <_svfiprintf_r+0x52>
 8001eda:	2b25      	cmp	r3, #37	; 0x25
 8001edc:	d147      	bne.n	8001f6e <_svfiprintf_r+0xe2>
 8001ede:	1bab      	subs	r3, r5, r6
 8001ee0:	9305      	str	r3, [sp, #20]
 8001ee2:	42b5      	cmp	r5, r6
 8001ee4:	d00c      	beq.n	8001f00 <_svfiprintf_r+0x74>
 8001ee6:	0032      	movs	r2, r6
 8001ee8:	0039      	movs	r1, r7
 8001eea:	9803      	ldr	r0, [sp, #12]
 8001eec:	f7ff ff6c 	bl	8001dc8 <__ssputs_r>
 8001ef0:	1c43      	adds	r3, r0, #1
 8001ef2:	d100      	bne.n	8001ef6 <_svfiprintf_r+0x6a>
 8001ef4:	e0ae      	b.n	8002054 <_svfiprintf_r+0x1c8>
 8001ef6:	6962      	ldr	r2, [r4, #20]
 8001ef8:	9b05      	ldr	r3, [sp, #20]
 8001efa:	4694      	mov	ip, r2
 8001efc:	4463      	add	r3, ip
 8001efe:	6163      	str	r3, [r4, #20]
 8001f00:	782b      	ldrb	r3, [r5, #0]
 8001f02:	2b00      	cmp	r3, #0
 8001f04:	d100      	bne.n	8001f08 <_svfiprintf_r+0x7c>
 8001f06:	e0a5      	b.n	8002054 <_svfiprintf_r+0x1c8>
 8001f08:	2201      	movs	r2, #1
 8001f0a:	2300      	movs	r3, #0
 8001f0c:	4252      	negs	r2, r2
 8001f0e:	6062      	str	r2, [r4, #4]
 8001f10:	a904      	add	r1, sp, #16
 8001f12:	3254      	adds	r2, #84	; 0x54
 8001f14:	1852      	adds	r2, r2, r1
 8001f16:	1c6e      	adds	r6, r5, #1
 8001f18:	6023      	str	r3, [r4, #0]
 8001f1a:	60e3      	str	r3, [r4, #12]
 8001f1c:	60a3      	str	r3, [r4, #8]
 8001f1e:	7013      	strb	r3, [r2, #0]
 8001f20:	65a3      	str	r3, [r4, #88]	; 0x58
 8001f22:	2205      	movs	r2, #5
 8001f24:	7831      	ldrb	r1, [r6, #0]
 8001f26:	4854      	ldr	r0, [pc, #336]	; (8002078 <_svfiprintf_r+0x1ec>)
 8001f28:	f000 fa32 	bl	8002390 <memchr>
 8001f2c:	1c75      	adds	r5, r6, #1
 8001f2e:	2800      	cmp	r0, #0
 8001f30:	d11f      	bne.n	8001f72 <_svfiprintf_r+0xe6>
 8001f32:	6822      	ldr	r2, [r4, #0]
 8001f34:	06d3      	lsls	r3, r2, #27
 8001f36:	d504      	bpl.n	8001f42 <_svfiprintf_r+0xb6>
 8001f38:	2353      	movs	r3, #83	; 0x53
 8001f3a:	a904      	add	r1, sp, #16
 8001f3c:	185b      	adds	r3, r3, r1
 8001f3e:	2120      	movs	r1, #32
 8001f40:	7019      	strb	r1, [r3, #0]
 8001f42:	0713      	lsls	r3, r2, #28
 8001f44:	d504      	bpl.n	8001f50 <_svfiprintf_r+0xc4>
 8001f46:	2353      	movs	r3, #83	; 0x53
 8001f48:	a904      	add	r1, sp, #16
 8001f4a:	185b      	adds	r3, r3, r1
 8001f4c:	212b      	movs	r1, #43	; 0x2b
 8001f4e:	7019      	strb	r1, [r3, #0]
 8001f50:	7833      	ldrb	r3, [r6, #0]
 8001f52:	2b2a      	cmp	r3, #42	; 0x2a
 8001f54:	d016      	beq.n	8001f84 <_svfiprintf_r+0xf8>
 8001f56:	0035      	movs	r5, r6
 8001f58:	2100      	movs	r1, #0
 8001f5a:	200a      	movs	r0, #10
 8001f5c:	68e3      	ldr	r3, [r4, #12]
 8001f5e:	782a      	ldrb	r2, [r5, #0]
 8001f60:	1c6e      	adds	r6, r5, #1
 8001f62:	3a30      	subs	r2, #48	; 0x30
 8001f64:	2a09      	cmp	r2, #9
 8001f66:	d94e      	bls.n	8002006 <_svfiprintf_r+0x17a>
 8001f68:	2900      	cmp	r1, #0
 8001f6a:	d111      	bne.n	8001f90 <_svfiprintf_r+0x104>
 8001f6c:	e017      	b.n	8001f9e <_svfiprintf_r+0x112>
 8001f6e:	3501      	adds	r5, #1
 8001f70:	e7b0      	b.n	8001ed4 <_svfiprintf_r+0x48>
 8001f72:	4b41      	ldr	r3, [pc, #260]	; (8002078 <_svfiprintf_r+0x1ec>)
 8001f74:	6822      	ldr	r2, [r4, #0]
 8001f76:	1ac0      	subs	r0, r0, r3
 8001f78:	2301      	movs	r3, #1
 8001f7a:	4083      	lsls	r3, r0
 8001f7c:	4313      	orrs	r3, r2
 8001f7e:	002e      	movs	r6, r5
 8001f80:	6023      	str	r3, [r4, #0]
 8001f82:	e7ce      	b.n	8001f22 <_svfiprintf_r+0x96>
 8001f84:	9b07      	ldr	r3, [sp, #28]
 8001f86:	1d19      	adds	r1, r3, #4
 8001f88:	681b      	ldr	r3, [r3, #0]
 8001f8a:	9107      	str	r1, [sp, #28]
 8001f8c:	2b00      	cmp	r3, #0
 8001f8e:	db01      	blt.n	8001f94 <_svfiprintf_r+0x108>
 8001f90:	930b      	str	r3, [sp, #44]	; 0x2c
 8001f92:	e004      	b.n	8001f9e <_svfiprintf_r+0x112>
 8001f94:	425b      	negs	r3, r3
 8001f96:	60e3      	str	r3, [r4, #12]
 8001f98:	2302      	movs	r3, #2
 8001f9a:	4313      	orrs	r3, r2
 8001f9c:	6023      	str	r3, [r4, #0]
 8001f9e:	782b      	ldrb	r3, [r5, #0]
 8001fa0:	2b2e      	cmp	r3, #46	; 0x2e
 8001fa2:	d10a      	bne.n	8001fba <_svfiprintf_r+0x12e>
 8001fa4:	786b      	ldrb	r3, [r5, #1]
 8001fa6:	2b2a      	cmp	r3, #42	; 0x2a
 8001fa8:	d135      	bne.n	8002016 <_svfiprintf_r+0x18a>
 8001faa:	9b07      	ldr	r3, [sp, #28]
 8001fac:	3502      	adds	r5, #2
 8001fae:	1d1a      	adds	r2, r3, #4
 8001fb0:	681b      	ldr	r3, [r3, #0]
 8001fb2:	9207      	str	r2, [sp, #28]
 8001fb4:	2b00      	cmp	r3, #0
 8001fb6:	db2b      	blt.n	8002010 <_svfiprintf_r+0x184>
 8001fb8:	9309      	str	r3, [sp, #36]	; 0x24
 8001fba:	4e30      	ldr	r6, [pc, #192]	; (800207c <_svfiprintf_r+0x1f0>)
 8001fbc:	2203      	movs	r2, #3
 8001fbe:	0030      	movs	r0, r6
 8001fc0:	7829      	ldrb	r1, [r5, #0]
 8001fc2:	f000 f9e5 	bl	8002390 <memchr>
 8001fc6:	2800      	cmp	r0, #0
 8001fc8:	d006      	beq.n	8001fd8 <_svfiprintf_r+0x14c>
 8001fca:	2340      	movs	r3, #64	; 0x40
 8001fcc:	1b80      	subs	r0, r0, r6
 8001fce:	4083      	lsls	r3, r0
 8001fd0:	6822      	ldr	r2, [r4, #0]
 8001fd2:	3501      	adds	r5, #1
 8001fd4:	4313      	orrs	r3, r2
 8001fd6:	6023      	str	r3, [r4, #0]
 8001fd8:	7829      	ldrb	r1, [r5, #0]
 8001fda:	2206      	movs	r2, #6
 8001fdc:	4828      	ldr	r0, [pc, #160]	; (8002080 <_svfiprintf_r+0x1f4>)
 8001fde:	1c6e      	adds	r6, r5, #1
 8001fe0:	7621      	strb	r1, [r4, #24]
 8001fe2:	f000 f9d5 	bl	8002390 <memchr>
 8001fe6:	2800      	cmp	r0, #0
 8001fe8:	d03c      	beq.n	8002064 <_svfiprintf_r+0x1d8>
 8001fea:	4b26      	ldr	r3, [pc, #152]	; (8002084 <_svfiprintf_r+0x1f8>)
 8001fec:	2b00      	cmp	r3, #0
 8001fee:	d125      	bne.n	800203c <_svfiprintf_r+0x1b0>
 8001ff0:	2207      	movs	r2, #7
 8001ff2:	9b07      	ldr	r3, [sp, #28]
 8001ff4:	3307      	adds	r3, #7
 8001ff6:	4393      	bics	r3, r2
 8001ff8:	3308      	adds	r3, #8
 8001ffa:	9307      	str	r3, [sp, #28]
 8001ffc:	6963      	ldr	r3, [r4, #20]
 8001ffe:	9a04      	ldr	r2, [sp, #16]
 8002000:	189b      	adds	r3, r3, r2
 8002002:	6163      	str	r3, [r4, #20]
 8002004:	e765      	b.n	8001ed2 <_svfiprintf_r+0x46>
 8002006:	4343      	muls	r3, r0
 8002008:	0035      	movs	r5, r6
 800200a:	2101      	movs	r1, #1
 800200c:	189b      	adds	r3, r3, r2
 800200e:	e7a6      	b.n	8001f5e <_svfiprintf_r+0xd2>
 8002010:	2301      	movs	r3, #1
 8002012:	425b      	negs	r3, r3
 8002014:	e7d0      	b.n	8001fb8 <_svfiprintf_r+0x12c>
 8002016:	2300      	movs	r3, #0
 8002018:	200a      	movs	r0, #10
 800201a:	001a      	movs	r2, r3
 800201c:	3501      	adds	r5, #1
 800201e:	6063      	str	r3, [r4, #4]
 8002020:	7829      	ldrb	r1, [r5, #0]
 8002022:	1c6e      	adds	r6, r5, #1
 8002024:	3930      	subs	r1, #48	; 0x30
 8002026:	2909      	cmp	r1, #9
 8002028:	d903      	bls.n	8002032 <_svfiprintf_r+0x1a6>
 800202a:	2b00      	cmp	r3, #0
 800202c:	d0c5      	beq.n	8001fba <_svfiprintf_r+0x12e>
 800202e:	9209      	str	r2, [sp, #36]	; 0x24
 8002030:	e7c3      	b.n	8001fba <_svfiprintf_r+0x12e>
 8002032:	4342      	muls	r2, r0
 8002034:	0035      	movs	r5, r6
 8002036:	2301      	movs	r3, #1
 8002038:	1852      	adds	r2, r2, r1
 800203a:	e7f1      	b.n	8002020 <_svfiprintf_r+0x194>
 800203c:	ab07      	add	r3, sp, #28
 800203e:	9300      	str	r3, [sp, #0]
 8002040:	003a      	movs	r2, r7
 8002042:	0021      	movs	r1, r4
 8002044:	4b10      	ldr	r3, [pc, #64]	; (8002088 <_svfiprintf_r+0x1fc>)
 8002046:	9803      	ldr	r0, [sp, #12]
 8002048:	e000      	b.n	800204c <_svfiprintf_r+0x1c0>
 800204a:	bf00      	nop
 800204c:	9004      	str	r0, [sp, #16]
 800204e:	9b04      	ldr	r3, [sp, #16]
 8002050:	3301      	adds	r3, #1
 8002052:	d1d3      	bne.n	8001ffc <_svfiprintf_r+0x170>
 8002054:	89bb      	ldrh	r3, [r7, #12]
 8002056:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002058:	065b      	lsls	r3, r3, #25
 800205a:	d400      	bmi.n	800205e <_svfiprintf_r+0x1d2>
 800205c:	e72d      	b.n	8001eba <_svfiprintf_r+0x2e>
 800205e:	2001      	movs	r0, #1
 8002060:	4240      	negs	r0, r0
 8002062:	e72a      	b.n	8001eba <_svfiprintf_r+0x2e>
 8002064:	ab07      	add	r3, sp, #28
 8002066:	9300      	str	r3, [sp, #0]
 8002068:	003a      	movs	r2, r7
 800206a:	0021      	movs	r1, r4
 800206c:	4b06      	ldr	r3, [pc, #24]	; (8002088 <_svfiprintf_r+0x1fc>)
 800206e:	9803      	ldr	r0, [sp, #12]
 8002070:	f000 f87c 	bl	800216c <_printf_i>
 8002074:	e7ea      	b.n	800204c <_svfiprintf_r+0x1c0>
 8002076:	46c0      	nop			; (mov r8, r8)
 8002078:	080028a3 	.word	0x080028a3
 800207c:	080028a9 	.word	0x080028a9
 8002080:	080028ad 	.word	0x080028ad
 8002084:	00000000 	.word	0x00000000
 8002088:	08001dc9 	.word	0x08001dc9

0800208c <_printf_common>:
 800208c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800208e:	0015      	movs	r5, r2
 8002090:	9301      	str	r3, [sp, #4]
 8002092:	688a      	ldr	r2, [r1, #8]
 8002094:	690b      	ldr	r3, [r1, #16]
 8002096:	000c      	movs	r4, r1
 8002098:	9000      	str	r0, [sp, #0]
 800209a:	4293      	cmp	r3, r2
 800209c:	da00      	bge.n	80020a0 <_printf_common+0x14>
 800209e:	0013      	movs	r3, r2
 80020a0:	0022      	movs	r2, r4
 80020a2:	602b      	str	r3, [r5, #0]
 80020a4:	3243      	adds	r2, #67	; 0x43
 80020a6:	7812      	ldrb	r2, [r2, #0]
 80020a8:	2a00      	cmp	r2, #0
 80020aa:	d001      	beq.n	80020b0 <_printf_common+0x24>
 80020ac:	3301      	adds	r3, #1
 80020ae:	602b      	str	r3, [r5, #0]
 80020b0:	6823      	ldr	r3, [r4, #0]
 80020b2:	069b      	lsls	r3, r3, #26
 80020b4:	d502      	bpl.n	80020bc <_printf_common+0x30>
 80020b6:	682b      	ldr	r3, [r5, #0]
 80020b8:	3302      	adds	r3, #2
 80020ba:	602b      	str	r3, [r5, #0]
 80020bc:	6822      	ldr	r2, [r4, #0]
 80020be:	2306      	movs	r3, #6
 80020c0:	0017      	movs	r7, r2
 80020c2:	401f      	ands	r7, r3
 80020c4:	421a      	tst	r2, r3
 80020c6:	d027      	beq.n	8002118 <_printf_common+0x8c>
 80020c8:	0023      	movs	r3, r4
 80020ca:	3343      	adds	r3, #67	; 0x43
 80020cc:	781b      	ldrb	r3, [r3, #0]
 80020ce:	1e5a      	subs	r2, r3, #1
 80020d0:	4193      	sbcs	r3, r2
 80020d2:	6822      	ldr	r2, [r4, #0]
 80020d4:	0692      	lsls	r2, r2, #26
 80020d6:	d430      	bmi.n	800213a <_printf_common+0xae>
 80020d8:	0022      	movs	r2, r4
 80020da:	9901      	ldr	r1, [sp, #4]
 80020dc:	9800      	ldr	r0, [sp, #0]
 80020de:	9e08      	ldr	r6, [sp, #32]
 80020e0:	3243      	adds	r2, #67	; 0x43
 80020e2:	47b0      	blx	r6
 80020e4:	1c43      	adds	r3, r0, #1
 80020e6:	d025      	beq.n	8002134 <_printf_common+0xa8>
 80020e8:	2306      	movs	r3, #6
 80020ea:	6820      	ldr	r0, [r4, #0]
 80020ec:	682a      	ldr	r2, [r5, #0]
 80020ee:	68e1      	ldr	r1, [r4, #12]
 80020f0:	2500      	movs	r5, #0
 80020f2:	4003      	ands	r3, r0
 80020f4:	2b04      	cmp	r3, #4
 80020f6:	d103      	bne.n	8002100 <_printf_common+0x74>
 80020f8:	1a8d      	subs	r5, r1, r2
 80020fa:	43eb      	mvns	r3, r5
 80020fc:	17db      	asrs	r3, r3, #31
 80020fe:	401d      	ands	r5, r3
 8002100:	68a3      	ldr	r3, [r4, #8]
 8002102:	6922      	ldr	r2, [r4, #16]
 8002104:	4293      	cmp	r3, r2
 8002106:	dd01      	ble.n	800210c <_printf_common+0x80>
 8002108:	1a9b      	subs	r3, r3, r2
 800210a:	18ed      	adds	r5, r5, r3
 800210c:	2700      	movs	r7, #0
 800210e:	42bd      	cmp	r5, r7
 8002110:	d120      	bne.n	8002154 <_printf_common+0xc8>
 8002112:	2000      	movs	r0, #0
 8002114:	e010      	b.n	8002138 <_printf_common+0xac>
 8002116:	3701      	adds	r7, #1
 8002118:	68e3      	ldr	r3, [r4, #12]
 800211a:	682a      	ldr	r2, [r5, #0]
 800211c:	1a9b      	subs	r3, r3, r2
 800211e:	42bb      	cmp	r3, r7
 8002120:	ddd2      	ble.n	80020c8 <_printf_common+0x3c>
 8002122:	0022      	movs	r2, r4
 8002124:	2301      	movs	r3, #1
 8002126:	9901      	ldr	r1, [sp, #4]
 8002128:	9800      	ldr	r0, [sp, #0]
 800212a:	9e08      	ldr	r6, [sp, #32]
 800212c:	3219      	adds	r2, #25
 800212e:	47b0      	blx	r6
 8002130:	1c43      	adds	r3, r0, #1
 8002132:	d1f0      	bne.n	8002116 <_printf_common+0x8a>
 8002134:	2001      	movs	r0, #1
 8002136:	4240      	negs	r0, r0
 8002138:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
 800213a:	2030      	movs	r0, #48	; 0x30
 800213c:	18e1      	adds	r1, r4, r3
 800213e:	3143      	adds	r1, #67	; 0x43
 8002140:	7008      	strb	r0, [r1, #0]
 8002142:	0021      	movs	r1, r4
 8002144:	1c5a      	adds	r2, r3, #1
 8002146:	3145      	adds	r1, #69	; 0x45
 8002148:	7809      	ldrb	r1, [r1, #0]
 800214a:	18a2      	adds	r2, r4, r2
 800214c:	3243      	adds	r2, #67	; 0x43
 800214e:	3302      	adds	r3, #2
 8002150:	7011      	strb	r1, [r2, #0]
 8002152:	e7c1      	b.n	80020d8 <_printf_common+0x4c>
 8002154:	0022      	movs	r2, r4
 8002156:	2301      	movs	r3, #1
 8002158:	9901      	ldr	r1, [sp, #4]
 800215a:	9800      	ldr	r0, [sp, #0]
 800215c:	9e08      	ldr	r6, [sp, #32]
 800215e:	321a      	adds	r2, #26
 8002160:	47b0      	blx	r6
 8002162:	1c43      	adds	r3, r0, #1
 8002164:	d0e6      	beq.n	8002134 <_printf_common+0xa8>
 8002166:	3701      	adds	r7, #1
 8002168:	e7d1      	b.n	800210e <_printf_common+0x82>
	...

0800216c <_printf_i>:
 800216c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800216e:	b08b      	sub	sp, #44	; 0x2c
 8002170:	9206      	str	r2, [sp, #24]
 8002172:	000a      	movs	r2, r1
 8002174:	3243      	adds	r2, #67	; 0x43
 8002176:	9307      	str	r3, [sp, #28]
 8002178:	9005      	str	r0, [sp, #20]
 800217a:	9204      	str	r2, [sp, #16]
 800217c:	7e0a      	ldrb	r2, [r1, #24]
 800217e:	000c      	movs	r4, r1
 8002180:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002182:	2a78      	cmp	r2, #120	; 0x78
 8002184:	d807      	bhi.n	8002196 <_printf_i+0x2a>
 8002186:	2a62      	cmp	r2, #98	; 0x62
 8002188:	d809      	bhi.n	800219e <_printf_i+0x32>
 800218a:	2a00      	cmp	r2, #0
 800218c:	d100      	bne.n	8002190 <_printf_i+0x24>
 800218e:	e0c1      	b.n	8002314 <_printf_i+0x1a8>
 8002190:	2a58      	cmp	r2, #88	; 0x58
 8002192:	d100      	bne.n	8002196 <_printf_i+0x2a>
 8002194:	e08c      	b.n	80022b0 <_printf_i+0x144>
 8002196:	0026      	movs	r6, r4
 8002198:	3642      	adds	r6, #66	; 0x42
 800219a:	7032      	strb	r2, [r6, #0]
 800219c:	e022      	b.n	80021e4 <_printf_i+0x78>
 800219e:	0010      	movs	r0, r2
 80021a0:	3863      	subs	r0, #99	; 0x63
 80021a2:	2815      	cmp	r0, #21
 80021a4:	d8f7      	bhi.n	8002196 <_printf_i+0x2a>
 80021a6:	f7fd ffaf 	bl	8000108 <__gnu_thumb1_case_shi>
 80021aa:	0016      	.short	0x0016
 80021ac:	fff6001f 	.word	0xfff6001f
 80021b0:	fff6fff6 	.word	0xfff6fff6
 80021b4:	001ffff6 	.word	0x001ffff6
 80021b8:	fff6fff6 	.word	0xfff6fff6
 80021bc:	fff6fff6 	.word	0xfff6fff6
 80021c0:	003600a8 	.word	0x003600a8
 80021c4:	fff6009a 	.word	0xfff6009a
 80021c8:	00b9fff6 	.word	0x00b9fff6
 80021cc:	0036fff6 	.word	0x0036fff6
 80021d0:	fff6fff6 	.word	0xfff6fff6
 80021d4:	009e      	.short	0x009e
 80021d6:	0026      	movs	r6, r4
 80021d8:	681a      	ldr	r2, [r3, #0]
 80021da:	3642      	adds	r6, #66	; 0x42
 80021dc:	1d11      	adds	r1, r2, #4
 80021de:	6019      	str	r1, [r3, #0]
 80021e0:	6813      	ldr	r3, [r2, #0]
 80021e2:	7033      	strb	r3, [r6, #0]
 80021e4:	2301      	movs	r3, #1
 80021e6:	e0a7      	b.n	8002338 <_printf_i+0x1cc>
 80021e8:	6808      	ldr	r0, [r1, #0]
 80021ea:	6819      	ldr	r1, [r3, #0]
 80021ec:	1d0a      	adds	r2, r1, #4
 80021ee:	0605      	lsls	r5, r0, #24
 80021f0:	d50b      	bpl.n	800220a <_printf_i+0x9e>
 80021f2:	680d      	ldr	r5, [r1, #0]
 80021f4:	601a      	str	r2, [r3, #0]
 80021f6:	2d00      	cmp	r5, #0
 80021f8:	da03      	bge.n	8002202 <_printf_i+0x96>
 80021fa:	232d      	movs	r3, #45	; 0x2d
 80021fc:	9a04      	ldr	r2, [sp, #16]
 80021fe:	426d      	negs	r5, r5
 8002200:	7013      	strb	r3, [r2, #0]
 8002202:	4b61      	ldr	r3, [pc, #388]	; (8002388 <_printf_i+0x21c>)
 8002204:	270a      	movs	r7, #10
 8002206:	9303      	str	r3, [sp, #12]
 8002208:	e01b      	b.n	8002242 <_printf_i+0xd6>
 800220a:	680d      	ldr	r5, [r1, #0]
 800220c:	601a      	str	r2, [r3, #0]
 800220e:	0641      	lsls	r1, r0, #25
 8002210:	d5f1      	bpl.n	80021f6 <_printf_i+0x8a>
 8002212:	b22d      	sxth	r5, r5
 8002214:	e7ef      	b.n	80021f6 <_printf_i+0x8a>
 8002216:	680d      	ldr	r5, [r1, #0]
 8002218:	6819      	ldr	r1, [r3, #0]
 800221a:	1d08      	adds	r0, r1, #4
 800221c:	6018      	str	r0, [r3, #0]
 800221e:	062e      	lsls	r6, r5, #24
 8002220:	d501      	bpl.n	8002226 <_printf_i+0xba>
 8002222:	680d      	ldr	r5, [r1, #0]
 8002224:	e003      	b.n	800222e <_printf_i+0xc2>
 8002226:	066d      	lsls	r5, r5, #25
 8002228:	d5fb      	bpl.n	8002222 <_printf_i+0xb6>
 800222a:	680d      	ldr	r5, [r1, #0]
 800222c:	b2ad      	uxth	r5, r5
 800222e:	4b56      	ldr	r3, [pc, #344]	; (8002388 <_printf_i+0x21c>)
 8002230:	2708      	movs	r7, #8
 8002232:	9303      	str	r3, [sp, #12]
 8002234:	2a6f      	cmp	r2, #111	; 0x6f
 8002236:	d000      	beq.n	800223a <_printf_i+0xce>
 8002238:	3702      	adds	r7, #2
 800223a:	0023      	movs	r3, r4
 800223c:	2200      	movs	r2, #0
 800223e:	3343      	adds	r3, #67	; 0x43
 8002240:	701a      	strb	r2, [r3, #0]
 8002242:	6863      	ldr	r3, [r4, #4]
 8002244:	60a3      	str	r3, [r4, #8]
 8002246:	2b00      	cmp	r3, #0
 8002248:	db03      	blt.n	8002252 <_printf_i+0xe6>
 800224a:	2204      	movs	r2, #4
 800224c:	6821      	ldr	r1, [r4, #0]
 800224e:	4391      	bics	r1, r2
 8002250:	6021      	str	r1, [r4, #0]
 8002252:	2d00      	cmp	r5, #0
 8002254:	d102      	bne.n	800225c <_printf_i+0xf0>
 8002256:	9e04      	ldr	r6, [sp, #16]
 8002258:	2b00      	cmp	r3, #0
 800225a:	d00c      	beq.n	8002276 <_printf_i+0x10a>
 800225c:	9e04      	ldr	r6, [sp, #16]
 800225e:	0028      	movs	r0, r5
 8002260:	0039      	movs	r1, r7
 8002262:	f7fd ffe1 	bl	8000228 <__aeabi_uidivmod>
 8002266:	9b03      	ldr	r3, [sp, #12]
 8002268:	3e01      	subs	r6, #1
 800226a:	5c5b      	ldrb	r3, [r3, r1]
 800226c:	7033      	strb	r3, [r6, #0]
 800226e:	002b      	movs	r3, r5
 8002270:	0005      	movs	r5, r0
 8002272:	429f      	cmp	r7, r3
 8002274:	d9f3      	bls.n	800225e <_printf_i+0xf2>
 8002276:	2f08      	cmp	r7, #8
 8002278:	d109      	bne.n	800228e <_printf_i+0x122>
 800227a:	6823      	ldr	r3, [r4, #0]
 800227c:	07db      	lsls	r3, r3, #31
 800227e:	d506      	bpl.n	800228e <_printf_i+0x122>
 8002280:	6863      	ldr	r3, [r4, #4]
 8002282:	6922      	ldr	r2, [r4, #16]
 8002284:	4293      	cmp	r3, r2
 8002286:	dc02      	bgt.n	800228e <_printf_i+0x122>
 8002288:	2330      	movs	r3, #48	; 0x30
 800228a:	3e01      	subs	r6, #1
 800228c:	7033      	strb	r3, [r6, #0]
 800228e:	9b04      	ldr	r3, [sp, #16]
 8002290:	1b9b      	subs	r3, r3, r6
 8002292:	6123      	str	r3, [r4, #16]
 8002294:	9b07      	ldr	r3, [sp, #28]
 8002296:	0021      	movs	r1, r4
 8002298:	9300      	str	r3, [sp, #0]
 800229a:	9805      	ldr	r0, [sp, #20]
 800229c:	9b06      	ldr	r3, [sp, #24]
 800229e:	aa09      	add	r2, sp, #36	; 0x24
 80022a0:	f7ff fef4 	bl	800208c <_printf_common>
 80022a4:	1c43      	adds	r3, r0, #1
 80022a6:	d14c      	bne.n	8002342 <_printf_i+0x1d6>
 80022a8:	2001      	movs	r0, #1
 80022aa:	4240      	negs	r0, r0
 80022ac:	b00b      	add	sp, #44	; 0x2c
 80022ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80022b0:	3145      	adds	r1, #69	; 0x45
 80022b2:	700a      	strb	r2, [r1, #0]
 80022b4:	4a34      	ldr	r2, [pc, #208]	; (8002388 <_printf_i+0x21c>)
 80022b6:	9203      	str	r2, [sp, #12]
 80022b8:	681a      	ldr	r2, [r3, #0]
 80022ba:	6821      	ldr	r1, [r4, #0]
 80022bc:	ca20      	ldmia	r2!, {r5}
 80022be:	601a      	str	r2, [r3, #0]
 80022c0:	0608      	lsls	r0, r1, #24
 80022c2:	d516      	bpl.n	80022f2 <_printf_i+0x186>
 80022c4:	07cb      	lsls	r3, r1, #31
 80022c6:	d502      	bpl.n	80022ce <_printf_i+0x162>
 80022c8:	2320      	movs	r3, #32
 80022ca:	4319      	orrs	r1, r3
 80022cc:	6021      	str	r1, [r4, #0]
 80022ce:	2710      	movs	r7, #16
 80022d0:	2d00      	cmp	r5, #0
 80022d2:	d1b2      	bne.n	800223a <_printf_i+0xce>
 80022d4:	2320      	movs	r3, #32
 80022d6:	6822      	ldr	r2, [r4, #0]
 80022d8:	439a      	bics	r2, r3
 80022da:	6022      	str	r2, [r4, #0]
 80022dc:	e7ad      	b.n	800223a <_printf_i+0xce>
 80022de:	2220      	movs	r2, #32
 80022e0:	6809      	ldr	r1, [r1, #0]
 80022e2:	430a      	orrs	r2, r1
 80022e4:	6022      	str	r2, [r4, #0]
 80022e6:	0022      	movs	r2, r4
 80022e8:	2178      	movs	r1, #120	; 0x78
 80022ea:	3245      	adds	r2, #69	; 0x45
 80022ec:	7011      	strb	r1, [r2, #0]
 80022ee:	4a27      	ldr	r2, [pc, #156]	; (800238c <_printf_i+0x220>)
 80022f0:	e7e1      	b.n	80022b6 <_printf_i+0x14a>
 80022f2:	0648      	lsls	r0, r1, #25
 80022f4:	d5e6      	bpl.n	80022c4 <_printf_i+0x158>
 80022f6:	b2ad      	uxth	r5, r5
 80022f8:	e7e4      	b.n	80022c4 <_printf_i+0x158>
 80022fa:	681a      	ldr	r2, [r3, #0]
 80022fc:	680d      	ldr	r5, [r1, #0]
 80022fe:	1d10      	adds	r0, r2, #4
 8002300:	6949      	ldr	r1, [r1, #20]
 8002302:	6018      	str	r0, [r3, #0]
 8002304:	6813      	ldr	r3, [r2, #0]
 8002306:	062e      	lsls	r6, r5, #24
 8002308:	d501      	bpl.n	800230e <_printf_i+0x1a2>
 800230a:	6019      	str	r1, [r3, #0]
 800230c:	e002      	b.n	8002314 <_printf_i+0x1a8>
 800230e:	066d      	lsls	r5, r5, #25
 8002310:	d5fb      	bpl.n	800230a <_printf_i+0x19e>
 8002312:	8019      	strh	r1, [r3, #0]
 8002314:	2300      	movs	r3, #0
 8002316:	9e04      	ldr	r6, [sp, #16]
 8002318:	6123      	str	r3, [r4, #16]
 800231a:	e7bb      	b.n	8002294 <_printf_i+0x128>
 800231c:	681a      	ldr	r2, [r3, #0]
 800231e:	1d11      	adds	r1, r2, #4
 8002320:	6019      	str	r1, [r3, #0]
 8002322:	6816      	ldr	r6, [r2, #0]
 8002324:	2100      	movs	r1, #0
 8002326:	0030      	movs	r0, r6
 8002328:	6862      	ldr	r2, [r4, #4]
 800232a:	f000 f831 	bl	8002390 <memchr>
 800232e:	2800      	cmp	r0, #0
 8002330:	d001      	beq.n	8002336 <_printf_i+0x1ca>
 8002332:	1b80      	subs	r0, r0, r6
 8002334:	6060      	str	r0, [r4, #4]
 8002336:	6863      	ldr	r3, [r4, #4]
 8002338:	6123      	str	r3, [r4, #16]
 800233a:	2300      	movs	r3, #0
 800233c:	9a04      	ldr	r2, [sp, #16]
 800233e:	7013      	strb	r3, [r2, #0]
 8002340:	e7a8      	b.n	8002294 <_printf_i+0x128>
 8002342:	6923      	ldr	r3, [r4, #16]
 8002344:	0032      	movs	r2, r6
 8002346:	9906      	ldr	r1, [sp, #24]
 8002348:	9805      	ldr	r0, [sp, #20]
 800234a:	9d07      	ldr	r5, [sp, #28]
 800234c:	47a8      	blx	r5
 800234e:	1c43      	adds	r3, r0, #1
 8002350:	d0aa      	beq.n	80022a8 <_printf_i+0x13c>
 8002352:	6823      	ldr	r3, [r4, #0]
 8002354:	079b      	lsls	r3, r3, #30
 8002356:	d415      	bmi.n	8002384 <_printf_i+0x218>
 8002358:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800235a:	68e0      	ldr	r0, [r4, #12]
 800235c:	4298      	cmp	r0, r3
 800235e:	daa5      	bge.n	80022ac <_printf_i+0x140>
 8002360:	0018      	movs	r0, r3
 8002362:	e7a3      	b.n	80022ac <_printf_i+0x140>
 8002364:	0022      	movs	r2, r4
 8002366:	2301      	movs	r3, #1
 8002368:	9906      	ldr	r1, [sp, #24]
 800236a:	9805      	ldr	r0, [sp, #20]
 800236c:	9e07      	ldr	r6, [sp, #28]
 800236e:	3219      	adds	r2, #25
 8002370:	47b0      	blx	r6
 8002372:	1c43      	adds	r3, r0, #1
 8002374:	d098      	beq.n	80022a8 <_printf_i+0x13c>
 8002376:	3501      	adds	r5, #1
 8002378:	68e3      	ldr	r3, [r4, #12]
 800237a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800237c:	1a9b      	subs	r3, r3, r2
 800237e:	42ab      	cmp	r3, r5
 8002380:	dcf0      	bgt.n	8002364 <_printf_i+0x1f8>
 8002382:	e7e9      	b.n	8002358 <_printf_i+0x1ec>
 8002384:	2500      	movs	r5, #0
 8002386:	e7f7      	b.n	8002378 <_printf_i+0x20c>
 8002388:	080028b4 	.word	0x080028b4
 800238c:	080028c5 	.word	0x080028c5

08002390 <memchr>:
 8002390:	b2c9      	uxtb	r1, r1
 8002392:	1882      	adds	r2, r0, r2
 8002394:	4290      	cmp	r0, r2
 8002396:	d101      	bne.n	800239c <memchr+0xc>
 8002398:	2000      	movs	r0, #0
 800239a:	4770      	bx	lr
 800239c:	7803      	ldrb	r3, [r0, #0]
 800239e:	428b      	cmp	r3, r1
 80023a0:	d0fb      	beq.n	800239a <memchr+0xa>
 80023a2:	3001      	adds	r0, #1
 80023a4:	e7f6      	b.n	8002394 <memchr+0x4>

080023a6 <memcpy>:
 80023a6:	2300      	movs	r3, #0
 80023a8:	b510      	push	{r4, lr}
 80023aa:	429a      	cmp	r2, r3
 80023ac:	d100      	bne.n	80023b0 <memcpy+0xa>
 80023ae:	bd10      	pop	{r4, pc}
 80023b0:	5ccc      	ldrb	r4, [r1, r3]
 80023b2:	54c4      	strb	r4, [r0, r3]
 80023b4:	3301      	adds	r3, #1
 80023b6:	e7f8      	b.n	80023aa <memcpy+0x4>

080023b8 <memmove>:
 80023b8:	b510      	push	{r4, lr}
 80023ba:	4288      	cmp	r0, r1
 80023bc:	d902      	bls.n	80023c4 <memmove+0xc>
 80023be:	188b      	adds	r3, r1, r2
 80023c0:	4298      	cmp	r0, r3
 80023c2:	d303      	bcc.n	80023cc <memmove+0x14>
 80023c4:	2300      	movs	r3, #0
 80023c6:	e007      	b.n	80023d8 <memmove+0x20>
 80023c8:	5c8b      	ldrb	r3, [r1, r2]
 80023ca:	5483      	strb	r3, [r0, r2]
 80023cc:	3a01      	subs	r2, #1
 80023ce:	d2fb      	bcs.n	80023c8 <memmove+0x10>
 80023d0:	bd10      	pop	{r4, pc}
 80023d2:	5ccc      	ldrb	r4, [r1, r3]
 80023d4:	54c4      	strb	r4, [r0, r3]
 80023d6:	3301      	adds	r3, #1
 80023d8:	429a      	cmp	r2, r3
 80023da:	d1fa      	bne.n	80023d2 <memmove+0x1a>
 80023dc:	e7f8      	b.n	80023d0 <memmove+0x18>
	...

080023e0 <_free_r>:
 80023e0:	b570      	push	{r4, r5, r6, lr}
 80023e2:	0005      	movs	r5, r0
 80023e4:	2900      	cmp	r1, #0
 80023e6:	d010      	beq.n	800240a <_free_r+0x2a>
 80023e8:	1f0c      	subs	r4, r1, #4
 80023ea:	6823      	ldr	r3, [r4, #0]
 80023ec:	2b00      	cmp	r3, #0
 80023ee:	da00      	bge.n	80023f2 <_free_r+0x12>
 80023f0:	18e4      	adds	r4, r4, r3
 80023f2:	0028      	movs	r0, r5
 80023f4:	f000 f918 	bl	8002628 <__malloc_lock>
 80023f8:	4a1d      	ldr	r2, [pc, #116]	; (8002470 <_free_r+0x90>)
 80023fa:	6813      	ldr	r3, [r2, #0]
 80023fc:	2b00      	cmp	r3, #0
 80023fe:	d105      	bne.n	800240c <_free_r+0x2c>
 8002400:	6063      	str	r3, [r4, #4]
 8002402:	6014      	str	r4, [r2, #0]
 8002404:	0028      	movs	r0, r5
 8002406:	f000 f917 	bl	8002638 <__malloc_unlock>
 800240a:	bd70      	pop	{r4, r5, r6, pc}
 800240c:	42a3      	cmp	r3, r4
 800240e:	d908      	bls.n	8002422 <_free_r+0x42>
 8002410:	6821      	ldr	r1, [r4, #0]
 8002412:	1860      	adds	r0, r4, r1
 8002414:	4283      	cmp	r3, r0
 8002416:	d1f3      	bne.n	8002400 <_free_r+0x20>
 8002418:	6818      	ldr	r0, [r3, #0]
 800241a:	685b      	ldr	r3, [r3, #4]
 800241c:	1841      	adds	r1, r0, r1
 800241e:	6021      	str	r1, [r4, #0]
 8002420:	e7ee      	b.n	8002400 <_free_r+0x20>
 8002422:	001a      	movs	r2, r3
 8002424:	685b      	ldr	r3, [r3, #4]
 8002426:	2b00      	cmp	r3, #0
 8002428:	d001      	beq.n	800242e <_free_r+0x4e>
 800242a:	42a3      	cmp	r3, r4
 800242c:	d9f9      	bls.n	8002422 <_free_r+0x42>
 800242e:	6811      	ldr	r1, [r2, #0]
 8002430:	1850      	adds	r0, r2, r1
 8002432:	42a0      	cmp	r0, r4
 8002434:	d10b      	bne.n	800244e <_free_r+0x6e>
 8002436:	6820      	ldr	r0, [r4, #0]
 8002438:	1809      	adds	r1, r1, r0
 800243a:	1850      	adds	r0, r2, r1
 800243c:	6011      	str	r1, [r2, #0]
 800243e:	4283      	cmp	r3, r0
 8002440:	d1e0      	bne.n	8002404 <_free_r+0x24>
 8002442:	6818      	ldr	r0, [r3, #0]
 8002444:	685b      	ldr	r3, [r3, #4]
 8002446:	1841      	adds	r1, r0, r1
 8002448:	6011      	str	r1, [r2, #0]
 800244a:	6053      	str	r3, [r2, #4]
 800244c:	e7da      	b.n	8002404 <_free_r+0x24>
 800244e:	42a0      	cmp	r0, r4
 8002450:	d902      	bls.n	8002458 <_free_r+0x78>
 8002452:	230c      	movs	r3, #12
 8002454:	602b      	str	r3, [r5, #0]
 8002456:	e7d5      	b.n	8002404 <_free_r+0x24>
 8002458:	6821      	ldr	r1, [r4, #0]
 800245a:	1860      	adds	r0, r4, r1
 800245c:	4283      	cmp	r3, r0
 800245e:	d103      	bne.n	8002468 <_free_r+0x88>
 8002460:	6818      	ldr	r0, [r3, #0]
 8002462:	685b      	ldr	r3, [r3, #4]
 8002464:	1841      	adds	r1, r0, r1
 8002466:	6021      	str	r1, [r4, #0]
 8002468:	6063      	str	r3, [r4, #4]
 800246a:	6054      	str	r4, [r2, #4]
 800246c:	e7ca      	b.n	8002404 <_free_r+0x24>
 800246e:	46c0      	nop			; (mov r8, r8)
 8002470:	20000084 	.word	0x20000084

08002474 <sbrk_aligned>:
 8002474:	b570      	push	{r4, r5, r6, lr}
 8002476:	4e0f      	ldr	r6, [pc, #60]	; (80024b4 <sbrk_aligned+0x40>)
 8002478:	000d      	movs	r5, r1
 800247a:	6831      	ldr	r1, [r6, #0]
 800247c:	0004      	movs	r4, r0
 800247e:	2900      	cmp	r1, #0
 8002480:	d102      	bne.n	8002488 <sbrk_aligned+0x14>
 8002482:	f000 f8bf 	bl	8002604 <_sbrk_r>
 8002486:	6030      	str	r0, [r6, #0]
 8002488:	0029      	movs	r1, r5
 800248a:	0020      	movs	r0, r4
 800248c:	f000 f8ba 	bl	8002604 <_sbrk_r>
 8002490:	1c43      	adds	r3, r0, #1
 8002492:	d00a      	beq.n	80024aa <sbrk_aligned+0x36>
 8002494:	2303      	movs	r3, #3
 8002496:	1cc5      	adds	r5, r0, #3
 8002498:	439d      	bics	r5, r3
 800249a:	42a8      	cmp	r0, r5
 800249c:	d007      	beq.n	80024ae <sbrk_aligned+0x3a>
 800249e:	1a29      	subs	r1, r5, r0
 80024a0:	0020      	movs	r0, r4
 80024a2:	f000 f8af 	bl	8002604 <_sbrk_r>
 80024a6:	1c43      	adds	r3, r0, #1
 80024a8:	d101      	bne.n	80024ae <sbrk_aligned+0x3a>
 80024aa:	2501      	movs	r5, #1
 80024ac:	426d      	negs	r5, r5
 80024ae:	0028      	movs	r0, r5
 80024b0:	bd70      	pop	{r4, r5, r6, pc}
 80024b2:	46c0      	nop			; (mov r8, r8)
 80024b4:	20000088 	.word	0x20000088

080024b8 <_malloc_r>:
 80024b8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80024ba:	2203      	movs	r2, #3
 80024bc:	1ccb      	adds	r3, r1, #3
 80024be:	4393      	bics	r3, r2
 80024c0:	3308      	adds	r3, #8
 80024c2:	0006      	movs	r6, r0
 80024c4:	001f      	movs	r7, r3
 80024c6:	2b0c      	cmp	r3, #12
 80024c8:	d232      	bcs.n	8002530 <_malloc_r+0x78>
 80024ca:	270c      	movs	r7, #12
 80024cc:	42b9      	cmp	r1, r7
 80024ce:	d831      	bhi.n	8002534 <_malloc_r+0x7c>
 80024d0:	0030      	movs	r0, r6
 80024d2:	f000 f8a9 	bl	8002628 <__malloc_lock>
 80024d6:	4d32      	ldr	r5, [pc, #200]	; (80025a0 <_malloc_r+0xe8>)
 80024d8:	682b      	ldr	r3, [r5, #0]
 80024da:	001c      	movs	r4, r3
 80024dc:	2c00      	cmp	r4, #0
 80024de:	d12e      	bne.n	800253e <_malloc_r+0x86>
 80024e0:	0039      	movs	r1, r7
 80024e2:	0030      	movs	r0, r6
 80024e4:	f7ff ffc6 	bl	8002474 <sbrk_aligned>
 80024e8:	0004      	movs	r4, r0
 80024ea:	1c43      	adds	r3, r0, #1
 80024ec:	d11e      	bne.n	800252c <_malloc_r+0x74>
 80024ee:	682c      	ldr	r4, [r5, #0]
 80024f0:	0025      	movs	r5, r4
 80024f2:	2d00      	cmp	r5, #0
 80024f4:	d14a      	bne.n	800258c <_malloc_r+0xd4>
 80024f6:	6823      	ldr	r3, [r4, #0]
 80024f8:	0029      	movs	r1, r5
 80024fa:	18e3      	adds	r3, r4, r3
 80024fc:	0030      	movs	r0, r6
 80024fe:	9301      	str	r3, [sp, #4]
 8002500:	f000 f880 	bl	8002604 <_sbrk_r>
 8002504:	9b01      	ldr	r3, [sp, #4]
 8002506:	4283      	cmp	r3, r0
 8002508:	d143      	bne.n	8002592 <_malloc_r+0xda>
 800250a:	6823      	ldr	r3, [r4, #0]
 800250c:	3703      	adds	r7, #3
 800250e:	1aff      	subs	r7, r7, r3
 8002510:	2303      	movs	r3, #3
 8002512:	439f      	bics	r7, r3
 8002514:	3708      	adds	r7, #8
 8002516:	2f0c      	cmp	r7, #12
 8002518:	d200      	bcs.n	800251c <_malloc_r+0x64>
 800251a:	270c      	movs	r7, #12
 800251c:	0039      	movs	r1, r7
 800251e:	0030      	movs	r0, r6
 8002520:	f7ff ffa8 	bl	8002474 <sbrk_aligned>
 8002524:	1c43      	adds	r3, r0, #1
 8002526:	d034      	beq.n	8002592 <_malloc_r+0xda>
 8002528:	6823      	ldr	r3, [r4, #0]
 800252a:	19df      	adds	r7, r3, r7
 800252c:	6027      	str	r7, [r4, #0]
 800252e:	e013      	b.n	8002558 <_malloc_r+0xa0>
 8002530:	2b00      	cmp	r3, #0
 8002532:	dacb      	bge.n	80024cc <_malloc_r+0x14>
 8002534:	230c      	movs	r3, #12
 8002536:	2500      	movs	r5, #0
 8002538:	6033      	str	r3, [r6, #0]
 800253a:	0028      	movs	r0, r5
 800253c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
 800253e:	6822      	ldr	r2, [r4, #0]
 8002540:	1bd1      	subs	r1, r2, r7
 8002542:	d420      	bmi.n	8002586 <_malloc_r+0xce>
 8002544:	290b      	cmp	r1, #11
 8002546:	d917      	bls.n	8002578 <_malloc_r+0xc0>
 8002548:	19e2      	adds	r2, r4, r7
 800254a:	6027      	str	r7, [r4, #0]
 800254c:	42a3      	cmp	r3, r4
 800254e:	d111      	bne.n	8002574 <_malloc_r+0xbc>
 8002550:	602a      	str	r2, [r5, #0]
 8002552:	6863      	ldr	r3, [r4, #4]
 8002554:	6011      	str	r1, [r2, #0]
 8002556:	6053      	str	r3, [r2, #4]
 8002558:	0030      	movs	r0, r6
 800255a:	0025      	movs	r5, r4
 800255c:	f000 f86c 	bl	8002638 <__malloc_unlock>
 8002560:	2207      	movs	r2, #7
 8002562:	350b      	adds	r5, #11
 8002564:	1d23      	adds	r3, r4, #4
 8002566:	4395      	bics	r5, r2
 8002568:	1aea      	subs	r2, r5, r3
 800256a:	429d      	cmp	r5, r3
 800256c:	d0e5      	beq.n	800253a <_malloc_r+0x82>
 800256e:	1b5b      	subs	r3, r3, r5
 8002570:	50a3      	str	r3, [r4, r2]
 8002572:	e7e2      	b.n	800253a <_malloc_r+0x82>
 8002574:	605a      	str	r2, [r3, #4]
 8002576:	e7ec      	b.n	8002552 <_malloc_r+0x9a>
 8002578:	6862      	ldr	r2, [r4, #4]
 800257a:	42a3      	cmp	r3, r4
 800257c:	d101      	bne.n	8002582 <_malloc_r+0xca>
 800257e:	602a      	str	r2, [r5, #0]
 8002580:	e7ea      	b.n	8002558 <_malloc_r+0xa0>
 8002582:	605a      	str	r2, [r3, #4]
 8002584:	e7e8      	b.n	8002558 <_malloc_r+0xa0>
 8002586:	0023      	movs	r3, r4
 8002588:	6864      	ldr	r4, [r4, #4]
 800258a:	e7a7      	b.n	80024dc <_malloc_r+0x24>
 800258c:	002c      	movs	r4, r5
 800258e:	686d      	ldr	r5, [r5, #4]
 8002590:	e7af      	b.n	80024f2 <_malloc_r+0x3a>
 8002592:	230c      	movs	r3, #12
 8002594:	0030      	movs	r0, r6
 8002596:	6033      	str	r3, [r6, #0]
 8002598:	f000 f84e 	bl	8002638 <__malloc_unlock>
 800259c:	e7cd      	b.n	800253a <_malloc_r+0x82>
 800259e:	46c0      	nop			; (mov r8, r8)
 80025a0:	20000084 	.word	0x20000084

080025a4 <_realloc_r>:
 80025a4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80025a6:	0007      	movs	r7, r0
 80025a8:	000e      	movs	r6, r1
 80025aa:	0014      	movs	r4, r2
 80025ac:	2900      	cmp	r1, #0
 80025ae:	d105      	bne.n	80025bc <_realloc_r+0x18>
 80025b0:	0011      	movs	r1, r2
 80025b2:	f7ff ff81 	bl	80024b8 <_malloc_r>
 80025b6:	0005      	movs	r5, r0
 80025b8:	0028      	movs	r0, r5
 80025ba:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
 80025bc:	2a00      	cmp	r2, #0
 80025be:	d103      	bne.n	80025c8 <_realloc_r+0x24>
 80025c0:	f7ff ff0e 	bl	80023e0 <_free_r>
 80025c4:	0025      	movs	r5, r4
 80025c6:	e7f7      	b.n	80025b8 <_realloc_r+0x14>
 80025c8:	f000 f83e 	bl	8002648 <_malloc_usable_size_r>
 80025cc:	9001      	str	r0, [sp, #4]
 80025ce:	4284      	cmp	r4, r0
 80025d0:	d803      	bhi.n	80025da <_realloc_r+0x36>
 80025d2:	0035      	movs	r5, r6
 80025d4:	0843      	lsrs	r3, r0, #1
 80025d6:	42a3      	cmp	r3, r4
 80025d8:	d3ee      	bcc.n	80025b8 <_realloc_r+0x14>
 80025da:	0021      	movs	r1, r4
 80025dc:	0038      	movs	r0, r7
 80025de:	f7ff ff6b 	bl	80024b8 <_malloc_r>
 80025e2:	1e05      	subs	r5, r0, #0
 80025e4:	d0e8      	beq.n	80025b8 <_realloc_r+0x14>
 80025e6:	9b01      	ldr	r3, [sp, #4]
 80025e8:	0022      	movs	r2, r4
 80025ea:	429c      	cmp	r4, r3
 80025ec:	d900      	bls.n	80025f0 <_realloc_r+0x4c>
 80025ee:	001a      	movs	r2, r3
 80025f0:	0031      	movs	r1, r6
 80025f2:	0028      	movs	r0, r5
 80025f4:	f7ff fed7 	bl	80023a6 <memcpy>
 80025f8:	0031      	movs	r1, r6
 80025fa:	0038      	movs	r0, r7
 80025fc:	f7ff fef0 	bl	80023e0 <_free_r>
 8002600:	e7da      	b.n	80025b8 <_realloc_r+0x14>
	...

08002604 <_sbrk_r>:
 8002604:	2300      	movs	r3, #0
 8002606:	b570      	push	{r4, r5, r6, lr}
 8002608:	4d06      	ldr	r5, [pc, #24]	; (8002624 <_sbrk_r+0x20>)
 800260a:	0004      	movs	r4, r0
 800260c:	0008      	movs	r0, r1
 800260e:	602b      	str	r3, [r5, #0]
 8002610:	f000 f824 	bl	800265c <_sbrk>
 8002614:	1c43      	adds	r3, r0, #1
 8002616:	d103      	bne.n	8002620 <_sbrk_r+0x1c>
 8002618:	682b      	ldr	r3, [r5, #0]
 800261a:	2b00      	cmp	r3, #0
 800261c:	d000      	beq.n	8002620 <_sbrk_r+0x1c>
 800261e:	6023      	str	r3, [r4, #0]
 8002620:	bd70      	pop	{r4, r5, r6, pc}
 8002622:	46c0      	nop			; (mov r8, r8)
 8002624:	2000008c 	.word	0x2000008c

08002628 <__malloc_lock>:
 8002628:	b510      	push	{r4, lr}
 800262a:	4802      	ldr	r0, [pc, #8]	; (8002634 <__malloc_lock+0xc>)
 800262c:	f000 f814 	bl	8002658 <__retarget_lock_acquire_recursive>
 8002630:	bd10      	pop	{r4, pc}
 8002632:	46c0      	nop			; (mov r8, r8)
 8002634:	20000090 	.word	0x20000090

08002638 <__malloc_unlock>:
 8002638:	b510      	push	{r4, lr}
 800263a:	4802      	ldr	r0, [pc, #8]	; (8002644 <__malloc_unlock+0xc>)
 800263c:	f000 f80d 	bl	800265a <__retarget_lock_release_recursive>
 8002640:	bd10      	pop	{r4, pc}
 8002642:	46c0      	nop			; (mov r8, r8)
 8002644:	20000090 	.word	0x20000090

08002648 <_malloc_usable_size_r>:
 8002648:	1f0b      	subs	r3, r1, #4
 800264a:	681b      	ldr	r3, [r3, #0]
 800264c:	1f18      	subs	r0, r3, #4
 800264e:	2b00      	cmp	r3, #0
 8002650:	da01      	bge.n	8002656 <_malloc_usable_size_r+0xe>
 8002652:	580b      	ldr	r3, [r1, r0]
 8002654:	18c0      	adds	r0, r0, r3
 8002656:	4770      	bx	lr

08002658 <__retarget_lock_acquire_recursive>:
 8002658:	4770      	bx	lr

0800265a <__retarget_lock_release_recursive>:
 800265a:	4770      	bx	lr

0800265c <_sbrk>:
 800265c:	4a04      	ldr	r2, [pc, #16]	; (8002670 <_sbrk+0x14>)
 800265e:	0003      	movs	r3, r0
 8002660:	6810      	ldr	r0, [r2, #0]
 8002662:	2800      	cmp	r0, #0
 8002664:	d002      	beq.n	800266c <_sbrk+0x10>
 8002666:	18c3      	adds	r3, r0, r3
 8002668:	6013      	str	r3, [r2, #0]
 800266a:	4770      	bx	lr
 800266c:	4801      	ldr	r0, [pc, #4]	; (8002674 <_sbrk+0x18>)
 800266e:	e7fa      	b.n	8002666 <_sbrk+0xa>
 8002670:	20000094 	.word	0x20000094
 8002674:	20000098 	.word	0x20000098

08002678 <_init>:
 8002678:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800267a:	46c0      	nop			; (mov r8, r8)
 800267c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800267e:	bc08      	pop	{r3}
 8002680:	469e      	mov	lr, r3
 8002682:	4770      	bx	lr

08002684 <_fini>:
 8002684:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002686:	46c0      	nop			; (mov r8, r8)
 8002688:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800268a:	bc08      	pop	{r3}
 800268c:	469e      	mov	lr, r3
 800268e:	4770      	bx	lr
