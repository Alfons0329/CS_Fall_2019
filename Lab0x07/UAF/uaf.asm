
uaf:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	ins    BYTE PTR es:[rdi],dx
 23a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 246:	78 2d                	js     275 <_init-0x553>
 248:	78 38                	js     282 <_init-0x546>
 24a:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
 250:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 251:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    al,0x0
 256:	00 00                	add    BYTE PTR [rax],al
 258:	10 00                	adc    BYTE PTR [rax],al
 25a:	00 00                	add    BYTE PTR [rax],al
 25c:	01 00                	add    DWORD PTR [rax],eax
 25e:	00 00                	add    BYTE PTR [rax],al
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push rbp
 263:	00 00                	add    BYTE PTR [rax],al
 265:	00 00                	add    BYTE PTR [rax],al
 267:	00 03                	add    BYTE PTR [rbx],al
 269:	00 00                	add    BYTE PTR [rax],al
 26b:	00 02                	add    BYTE PTR [rdx],al
 26d:	00 00                	add    BYTE PTR [rax],al
 26f:	00 00                	add    BYTE PTR [rax],al
 271:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    al,0x0
 276:	00 00                	add    BYTE PTR [rax],al
 278:	14 00                	adc    al,0x0
 27a:	00 00                	add    BYTE PTR [rax],al
 27c:	03 00                	add    eax,DWORD PTR [rax]
 27e:	00 00                	add    BYTE PTR [rax],al
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push rbp
 283:	00 c6                	add    dh,al
 285:	22 fe                	and    bh,dh
 287:	29 56 2a             	sub    DWORD PTR [rsi+0x2a],edx
 28a:	76 79                	jbe    305 <_init-0x4c3>
 28c:	ec                   	in     al,dx
 28d:	ec                   	in     al,dx
 28e:	aa                   	stos   BYTE PTR es:[rdi],al
 28f:	65 85 73 67          	test   DWORD PTR gs:[rbx+0x67],esi
 293:	91                   	xchg   ecx,eax
 294:	ac                   	lods   al,BYTE PTR ds:[rsi]
 295:	b2 a2                	mov    dl,0xa2
 297:	bd                   	.byte 0xbd

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	03 00                	add    eax,DWORD PTR [rax]
 29a:	00 00                	add    BYTE PTR [rax],al
 29c:	10 00                	adc    BYTE PTR [rax],al
 29e:	00 00                	add    BYTE PTR [rax],al
 2a0:	01 00                	add    DWORD PTR [rax],eax
 2a2:	00 00                	add    BYTE PTR [rax],al
 2a4:	06                   	(bad)  
 2a5:	00 00                	add    BYTE PTR [rax],al
 2a7:	00 00                	add    BYTE PTR [rax],al
 2a9:	01 20                	add    DWORD PTR [rax],esp
 2ab:	00 80 01 10 02 10    	add    BYTE PTR [rax+0x10021001],al
 2b1:	00 00                	add    BYTE PTR [rax],al
 2b3:	00 11                	add    BYTE PTR [rcx],dl
 2b5:	00 00                	add    BYTE PTR [rax],al
 2b7:	00 00                	add    BYTE PTR [rax],al
 2b9:	00 00                	add    BYTE PTR [rax],al
 2bb:	00 29                	add    BYTE PTR [rcx],ch
 2bd:	1d 8c 1c 66 55       	sbb    eax,0x55661c8c
 2c2:	61                   	(bad)  
 2c3:	10 39                	adc    BYTE PTR [rcx],bh
 2c5:	f2                   	repnz
 2c6:	8b                   	.byte 0x8b
 2c7:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000000002c8 <.dynsym>:
	...
 2e0:	88 00                	mov    BYTE PTR [rax],al
 2e2:	00 00                	add    BYTE PTR [rax],al
 2e4:	12 00                	adc    al,BYTE PTR [rax]
	...
 2f6:	00 00                	add    BYTE PTR [rax],al
 2f8:	a3 00 00 00 20 00 00 	movabs ds:0x20000000,eax
 2ff:	00 00 
	...
 30d:	00 00                	add    BYTE PTR [rax],al
 30f:	00 0b                	add    BYTE PTR [rbx],cl
 311:	00 00                	add    BYTE PTR [rax],al
 313:	00 12                	add    BYTE PTR [rdx],dl
	...
 325:	00 00                	add    BYTE PTR [rax],al
 327:	00 16                	add    BYTE PTR [rsi],dl
 329:	00 00                	add    BYTE PTR [rax],al
 32b:	00 12                	add    BYTE PTR [rdx],dl
	...
 33d:	00 00                	add    BYTE PTR [rax],al
 33f:	00 1b                	add    BYTE PTR [rbx],bl
 341:	00 00                	add    BYTE PTR [rax],al
 343:	00 12                	add    BYTE PTR [rdx],dl
	...
 355:	00 00                	add    BYTE PTR [rax],al
 357:	00 53 00             	add    BYTE PTR [rbx+0x0],dl
 35a:	00 00                	add    BYTE PTR [rax],al
 35c:	12 00                	adc    al,BYTE PTR [rax]
	...
 36e:	00 00                	add    BYTE PTR [rax],al
 370:	32 00                	xor    al,BYTE PTR [rax]
 372:	00 00                	add    BYTE PTR [rax],al
 374:	12 00                	adc    al,BYTE PTR [rax]
	...
 386:	00 00                	add    BYTE PTR [rax],al
 388:	39 00                	cmp    DWORD PTR [rax],eax
 38a:	00 00                	add    BYTE PTR [rax],al
 38c:	12 00                	adc    al,BYTE PTR [rax]
	...
 39e:	00 00                	add    BYTE PTR [rax],al
 3a0:	76 00                	jbe    3a2 <_init-0x426>
 3a2:	00 00                	add    BYTE PTR [rax],al
 3a4:	12 00                	adc    al,BYTE PTR [rax]
	...
 3b6:	00 00                	add    BYTE PTR [rax],al
 3b8:	bf 00 00 00 20       	mov    edi,0x20000000
	...
 3cd:	00 00                	add    BYTE PTR [rax],al
 3cf:	00 45 00             	add    BYTE PTR [rbp+0x0],al
 3d2:	00 00                	add    BYTE PTR [rax],al
 3d4:	12 00                	adc    al,BYTE PTR [rax]
	...
 3e6:	00 00                	add    BYTE PTR [rax],al
 3e8:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 3e9:	00 00                	add    BYTE PTR [rax],al
 3eb:	00 12                	add    BYTE PTR [rdx],dl
	...
 3fd:	00 00                	add    BYTE PTR [rax],al
 3ff:	00 5a 00             	add    BYTE PTR [rdx+0x0],bl
 402:	00 00                	add    BYTE PTR [rax],al
 404:	12 00                	adc    al,BYTE PTR [rax]
	...
 416:	00 00                	add    BYTE PTR [rax],al
 418:	ce                   	(bad)  
 419:	00 00                	add    BYTE PTR [rax],al
 41b:	00 20                	add    BYTE PTR [rax],ah
	...
 42d:	00 00                	add    BYTE PTR [rax],al
 42f:	00 5f 00             	add    BYTE PTR [rdi+0x0],bl
 432:	00 00                	add    BYTE PTR [rax],al
 434:	22 00                	and    al,BYTE PTR [rax]
	...
 446:	00 00                	add    BYTE PTR [rax],al
 448:	3e 00 00             	add    BYTE PTR ds:[rax],al
 44b:	00 11                	add    BYTE PTR [rcx],dl
 44d:	00 18                	add    BYTE PTR [rax],bl
 44f:	00 20                	add    BYTE PTR [rax],ah
 451:	20 20                	and    BYTE PTR [rax],ah
 453:	00 00                	add    BYTE PTR [rax],al
 455:	00 00                	add    BYTE PTR [rax],al
 457:	00 08                	add    BYTE PTR [rax],cl
 459:	00 00                	add    BYTE PTR [rax],al
 45b:	00 00                	add    BYTE PTR [rax],al
 45d:	00 00                	add    BYTE PTR [rax],al
 45f:	00 2c 00             	add    BYTE PTR [rax+rax*1],ch
 462:	00 00                	add    BYTE PTR [rax],al
 464:	11 00                	adc    DWORD PTR [rax],eax
 466:	18 00                	sbb    BYTE PTR [rax],al
 468:	30 20                	xor    BYTE PTR [rax],ah
 46a:	20 00                	and    BYTE PTR [rax],al
 46c:	00 00                	add    BYTE PTR [rax],al
 46e:	00 00                	add    BYTE PTR [rax],al
 470:	08 00                	or     BYTE PTR [rax],al
 472:	00 00                	add    BYTE PTR [rax],al
 474:	00 00                	add    BYTE PTR [rax],al
 476:	00 00                	add    BYTE PTR [rax],al
 478:	4c 00 00             	rex.WR add BYTE PTR [rax],r8b
 47b:	00 11                	add    BYTE PTR [rcx],dl
 47d:	00 18                	add    BYTE PTR [rax],bl
 47f:	00 40 20             	add    BYTE PTR [rax+0x20],al
 482:	20 00                	and    BYTE PTR [rax],al
 484:	00 00                	add    BYTE PTR [rax],al
 486:	00 00                	add    BYTE PTR [rax],al
 488:	08 00                	or     BYTE PTR [rax],al
 48a:	00 00                	add    BYTE PTR [rax],al
 48c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

0000000000000490 <.dynstr>:
 490:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 494:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 496:	73 6f                	jae    507 <_init-0x2c1>
 498:	2e 36 00 5f 5f       	cs add BYTE PTR ss:[rdi+0x5f],bl
 49d:	72 65                	jb     504 <_init-0x2c4>
 49f:	61                   	(bad)  
 4a0:	64 5f                	fs pop rdi
 4a2:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 4a5:	00 70 75             	add    BYTE PTR [rax+0x75],dh
 4a8:	74 73                	je     51d <_init-0x2ab>
 4aa:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 4ad:	73 74                	jae    523 <_init-0x2a5>
 4af:	61                   	(bad)  
 4b0:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 4b3:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 4b6:	5f                   	pop    rdi
 4b7:	66 61                	data16 (bad) 
 4b9:	69 6c 00 73 74 64 69 	imul   ebp,DWORD PTR [rax+rax*1+0x73],0x6e696474
 4c0:	6e 
 4c1:	00 70 72             	add    BYTE PTR [rax+0x72],dh
 4c4:	69 6e 74 66 00 72 65 	imul   ebp,DWORD PTR [rsi+0x74],0x65720066
 4cb:	61                   	(bad)  
 4cc:	64 00 73 74          	add    BYTE PTR fs:[rbx+0x74],dh
 4d0:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 4d2:	75 74                	jne    548 <_init-0x280>
 4d4:	00 6d 61             	add    BYTE PTR [rbp+0x61],ch
 4d7:	6c                   	ins    BYTE PTR es:[rdi],dx
 4d8:	6c                   	ins    BYTE PTR es:[rdi],dx
 4d9:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 4da:	63 00                	movsxd eax,DWORD PTR [rax]
 4dc:	73 74                	jae    552 <_init-0x276>
 4de:	64 65 72 72          	fs gs jb 554 <_init-0x274>
 4e2:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
 4e5:	73 74                	jae    55b <_init-0x26d>
 4e7:	65 6d                	gs ins DWORD PTR es:[rdi],dx
 4e9:	00 61 74             	add    BYTE PTR [rcx+0x74],ah
 4ec:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 4ed:	69 00 5f 5f 63 78    	imul   eax,DWORD PTR [rax],0x78635f5f
 4f3:	61                   	(bad)  
 4f4:	5f                   	pop    rdi
 4f5:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 4fb:	7a 65                	jp     562 <_init-0x266>
 4fd:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
 500:	74 76                	je     578 <_init-0x250>
 502:	62                   	(bad)  
 503:	75 66                	jne    56b <_init-0x25d>
 505:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 508:	6c                   	ins    BYTE PTR es:[rdi],dx
 509:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 510:	72 74                	jb     586 <_init-0x242>
 512:	5f                   	pop    rdi
 513:	6d                   	ins    DWORD PTR es:[rdi],dx
 514:	61                   	(bad)  
 515:	69 6e 00 66 72 65 65 	imul   ebp,DWORD PTR [rsi+0x0],0x65657266
 51c:	00 47 4c             	add    BYTE PTR [rdi+0x4c],al
 51f:	49                   	rex.WB
 520:	42                   	rex.X
 521:	43 5f                	rex.XB pop r15
 523:	32 2e                	xor    ch,BYTE PTR [rsi]
 525:	34 00                	xor    al,0x0
 527:	47                   	rex.RXB
 528:	4c                   	rex.WR
 529:	49                   	rex.WB
 52a:	42                   	rex.X
 52b:	43 5f                	rex.XB pop r15
 52d:	32 2e                	xor    ch,BYTE PTR [rsi]
 52f:	32 2e                	xor    ch,BYTE PTR [rsi]
 531:	35 00 5f 49 54       	xor    eax,0x54495f00
 536:	4d 5f                	rex.WRB pop r15
 538:	64 65 72 65          	fs gs jb 5a1 <_init-0x227>
 53c:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 543:	4d 
 544:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 546:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 547:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 548:	65 54                	gs push rsp
 54a:	61                   	(bad)  
 54b:	62                   	(bad)  
 54c:	6c                   	ins    BYTE PTR es:[rdi],dx
 54d:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 551:	67 6d                	ins    DWORD PTR es:[edi],dx
 553:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 554:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 555:	5f                   	pop    rdi
 556:	73 74                	jae    5cc <_init-0x1fc>
 558:	61                   	(bad)  
 559:	72 74                	jb     5cf <_init-0x1f9>
 55b:	5f                   	pop    rdi
 55c:	5f                   	pop    rdi
 55d:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 560:	54                   	push   rsp
 561:	4d 5f                	rex.WRB pop r15
 563:	72 65                	jb     5ca <_init-0x1fe>
 565:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 56c:	4d 
 56d:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 56f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 570:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 571:	65 54                	gs push rsp
 573:	61                   	(bad)  
 574:	62                   	.byte 0x62
 575:	6c                   	ins    BYTE PTR es:[rdi],dx
 576:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000578 <.gnu.version>:
 578:	00 00                	add    BYTE PTR [rax],al
 57a:	02 00                	add    al,BYTE PTR [rax]
 57c:	00 00                	add    BYTE PTR [rax],al
 57e:	03 00                	add    eax,DWORD PTR [rax]
 580:	02 00                	add    al,BYTE PTR [rax]
 582:	03 00                	add    eax,DWORD PTR [rax]
 584:	02 00                	add    al,BYTE PTR [rax]
 586:	02 00                	add    al,BYTE PTR [rax]
 588:	02 00                	add    al,BYTE PTR [rax]
 58a:	02 00                	add    al,BYTE PTR [rax]
 58c:	00 00                	add    BYTE PTR [rax],al
 58e:	02 00                	add    al,BYTE PTR [rax]
 590:	02 00                	add    al,BYTE PTR [rax]
 592:	02 00                	add    al,BYTE PTR [rax]
 594:	00 00                	add    BYTE PTR [rax],al
 596:	02 00                	add    al,BYTE PTR [rax]
 598:	02 00                	add    al,BYTE PTR [rax]
 59a:	02 00                	add    al,BYTE PTR [rax]
 59c:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

00000000000005a0 <.gnu.version_r>:
 5a0:	01 00                	add    DWORD PTR [rax],eax
 5a2:	02 00                	add    al,BYTE PTR [rax]
 5a4:	01 00                	add    DWORD PTR [rax],eax
 5a6:	00 00                	add    BYTE PTR [rax],al
 5a8:	10 00                	adc    BYTE PTR [rax],al
 5aa:	00 00                	add    BYTE PTR [rax],al
 5ac:	00 00                	add    BYTE PTR [rax],al
 5ae:	00 00                	add    BYTE PTR [rax],al
 5b0:	14 69                	adc    al,0x69
 5b2:	69 0d 00 00 03 00 8d 	imul   ecx,DWORD PTR [rip+0x30000],0x8d        # 305bc <__FRAME_END__+0x2f6d8>
 5b9:	00 00 00 
 5bc:	10 00                	adc    BYTE PTR [rax],al
 5be:	00 00                	add    BYTE PTR [rax],al
 5c0:	75 1a                	jne    5dc <_init-0x1ec>
 5c2:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 5c8:	97                   	xchg   edi,eax
 5c9:	00 00                	add    BYTE PTR [rax],al
 5cb:	00 00                	add    BYTE PTR [rax],al
 5cd:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

00000000000005d0 <.rela.dyn>:
 5d0:	70 1d                	jo     5ef <_init-0x1d9>
 5d2:	20 00                	and    BYTE PTR [rax],al
 5d4:	00 00                	add    BYTE PTR [rax],al
 5d6:	00 00                	add    BYTE PTR [rax],al
 5d8:	08 00                	or     BYTE PTR [rax],al
 5da:	00 00                	add    BYTE PTR [rax],al
 5dc:	00 00                	add    BYTE PTR [rax],al
 5de:	00 00                	add    BYTE PTR [rax],al
 5e0:	a0 09 00 00 00 00 00 	movabs al,ds:0x7800000000000009
 5e7:	00 78 
 5e9:	1d 20 00 00 00       	sbb    eax,0x20
 5ee:	00 00                	add    BYTE PTR [rax],al
 5f0:	08 00                	or     BYTE PTR [rax],al
 5f2:	00 00                	add    BYTE PTR [rax],al
 5f4:	00 00                	add    BYTE PTR [rax],al
 5f6:	00 00                	add    BYTE PTR [rax],al
 5f8:	60                   	(bad)  
 5f9:	09 00                	or     DWORD PTR [rax],eax
 5fb:	00 00                	add    BYTE PTR [rax],al
 5fd:	00 00                	add    BYTE PTR [rax],al
 5ff:	00 08                	add    BYTE PTR [rax],cl
 601:	20 20                	and    BYTE PTR [rax],ah
 603:	00 00                	add    BYTE PTR [rax],al
 605:	00 00                	add    BYTE PTR [rax],al
 607:	00 08                	add    BYTE PTR [rax],cl
 609:	00 00                	add    BYTE PTR [rax],al
 60b:	00 00                	add    BYTE PTR [rax],al
 60d:	00 00                	add    BYTE PTR [rax],al
 60f:	00 08                	add    BYTE PTR [rax],cl
 611:	20 20                	and    BYTE PTR [rax],ah
 613:	00 00                	add    BYTE PTR [rax],al
 615:	00 00                	add    BYTE PTR [rax],al
 617:	00 d8                	add    al,bl
 619:	1f                   	(bad)  
 61a:	20 00                	and    BYTE PTR [rax],al
 61c:	00 00                	add    BYTE PTR [rax],al
 61e:	00 00                	add    BYTE PTR [rax],al
 620:	06                   	(bad)  
 621:	00 00                	add    BYTE PTR [rax],al
 623:	00 02                	add    BYTE PTR [rdx],al
	...
 62d:	00 00                	add    BYTE PTR [rax],al
 62f:	00 e0                	add    al,ah
 631:	1f                   	(bad)  
 632:	20 00                	and    BYTE PTR [rax],al
 634:	00 00                	add    BYTE PTR [rax],al
 636:	00 00                	add    BYTE PTR [rax],al
 638:	06                   	(bad)  
 639:	00 00                	add    BYTE PTR [rax],al
 63b:	00 09                	add    BYTE PTR [rcx],cl
	...
 645:	00 00                	add    BYTE PTR [rax],al
 647:	00 e8                	add    al,ch
 649:	1f                   	(bad)  
 64a:	20 00                	and    BYTE PTR [rax],al
 64c:	00 00                	add    BYTE PTR [rax],al
 64e:	00 00                	add    BYTE PTR [rax],al
 650:	06                   	(bad)  
 651:	00 00                	add    BYTE PTR [rax],al
 653:	00 0a                	add    BYTE PTR [rdx],cl
	...
 65d:	00 00                	add    BYTE PTR [rax],al
 65f:	00 f0                	add    al,dh
 661:	1f                   	(bad)  
 662:	20 00                	and    BYTE PTR [rax],al
 664:	00 00                	add    BYTE PTR [rax],al
 666:	00 00                	add    BYTE PTR [rax],al
 668:	06                   	(bad)  
 669:	00 00                	add    BYTE PTR [rax],al
 66b:	00 0e                	add    BYTE PTR [rsi],cl
	...
 675:	00 00                	add    BYTE PTR [rax],al
 677:	00 f8                	add    al,bh
 679:	1f                   	(bad)  
 67a:	20 00                	and    BYTE PTR [rax],al
 67c:	00 00                	add    BYTE PTR [rax],al
 67e:	00 00                	add    BYTE PTR [rax],al
 680:	06                   	(bad)  
 681:	00 00                	add    BYTE PTR [rax],al
 683:	00 0f                	add    BYTE PTR [rdi],cl
	...
 68d:	00 00                	add    BYTE PTR [rax],al
 68f:	00 20                	add    BYTE PTR [rax],ah
 691:	20 20                	and    BYTE PTR [rax],ah
 693:	00 00                	add    BYTE PTR [rax],al
 695:	00 00                	add    BYTE PTR [rax],al
 697:	00 05 00 00 00 10    	add    BYTE PTR [rip+0x10000000],al        # 1000069d <_end+0xfdfe64d>
	...
 6a5:	00 00                	add    BYTE PTR [rax],al
 6a7:	00 30                	add    BYTE PTR [rax],dh
 6a9:	20 20                	and    BYTE PTR [rax],ah
 6ab:	00 00                	add    BYTE PTR [rax],al
 6ad:	00 00                	add    BYTE PTR [rax],al
 6af:	00 05 00 00 00 11    	add    BYTE PTR [rip+0x11000000],al        # 110006b5 <_end+0x10dfe665>
	...
 6bd:	00 00                	add    BYTE PTR [rax],al
 6bf:	00 40 20             	add    BYTE PTR [rax+0x20],al
 6c2:	20 00                	and    BYTE PTR [rax],al
 6c4:	00 00                	add    BYTE PTR [rax],al
 6c6:	00 00                	add    BYTE PTR [rax],al
 6c8:	05 00 00 00 12       	add    eax,0x12000000
	...

Disassembly of section .rela.plt:

00000000000006d8 <.rela.plt>:
 6d8:	88 1f                	mov    BYTE PTR [rdi],bl
 6da:	20 00                	and    BYTE PTR [rax],al
 6dc:	00 00                	add    BYTE PTR [rax],al
 6de:	00 00                	add    BYTE PTR [rax],al
 6e0:	07                   	(bad)  
 6e1:	00 00                	add    BYTE PTR [rax],al
 6e3:	00 01                	add    BYTE PTR [rcx],al
	...
 6ed:	00 00                	add    BYTE PTR [rax],al
 6ef:	00 90 1f 20 00 00    	add    BYTE PTR [rax+0x201f],dl
 6f5:	00 00                	add    BYTE PTR [rax],al
 6f7:	00 07                	add    BYTE PTR [rdi],al
 6f9:	00 00                	add    BYTE PTR [rax],al
 6fb:	00 03                	add    BYTE PTR [rbx],al
	...
 705:	00 00                	add    BYTE PTR [rax],al
 707:	00 98 1f 20 00 00    	add    BYTE PTR [rax+0x201f],bl
 70d:	00 00                	add    BYTE PTR [rax],al
 70f:	00 07                	add    BYTE PTR [rdi],al
 711:	00 00                	add    BYTE PTR [rax],al
 713:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 71e:	00 00                	add    BYTE PTR [rax],al
 720:	a0 1f 20 00 00 00 00 	movabs al,ds:0x70000000000201f
 727:	00 07 
 729:	00 00                	add    BYTE PTR [rax],al
 72b:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 731 <_init-0x97>
 731:	00 00                	add    BYTE PTR [rax],al
 733:	00 00                	add    BYTE PTR [rax],al
 735:	00 00                	add    BYTE PTR [rax],al
 737:	00 a8 1f 20 00 00    	add    BYTE PTR [rax+0x201f],ch
 73d:	00 00                	add    BYTE PTR [rax],al
 73f:	00 07                	add    BYTE PTR [rdi],al
 741:	00 00                	add    BYTE PTR [rax],al
 743:	00 06                	add    BYTE PTR [rsi],al
	...
 74d:	00 00                	add    BYTE PTR [rax],al
 74f:	00 b0 1f 20 00 00    	add    BYTE PTR [rax+0x201f],dh
 755:	00 00                	add    BYTE PTR [rax],al
 757:	00 07                	add    BYTE PTR [rdi],al
 759:	00 00                	add    BYTE PTR [rax],al
 75b:	00 07                	add    BYTE PTR [rdi],al
	...
 765:	00 00                	add    BYTE PTR [rax],al
 767:	00 b8 1f 20 00 00    	add    BYTE PTR [rax+0x201f],bh
 76d:	00 00                	add    BYTE PTR [rax],al
 76f:	00 07                	add    BYTE PTR [rdi],al
 771:	00 00                	add    BYTE PTR [rax],al
 773:	00 08                	add    BYTE PTR [rax],cl
	...
 77d:	00 00                	add    BYTE PTR [rax],al
 77f:	00 c0                	add    al,al
 781:	1f                   	(bad)  
 782:	20 00                	and    BYTE PTR [rax],al
 784:	00 00                	add    BYTE PTR [rax],al
 786:	00 00                	add    BYTE PTR [rax],al
 788:	07                   	(bad)  
 789:	00 00                	add    BYTE PTR [rax],al
 78b:	00 0b                	add    BYTE PTR [rbx],cl
	...
 795:	00 00                	add    BYTE PTR [rax],al
 797:	00 c8                	add    al,cl
 799:	1f                   	(bad)  
 79a:	20 00                	and    BYTE PTR [rax],al
 79c:	00 00                	add    BYTE PTR [rax],al
 79e:	00 00                	add    BYTE PTR [rax],al
 7a0:	07                   	(bad)  
 7a1:	00 00                	add    BYTE PTR [rax],al
 7a3:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...
 7ae:	00 00                	add    BYTE PTR [rax],al
 7b0:	d0 1f                	rcr    BYTE PTR [rdi],1
 7b2:	20 00                	and    BYTE PTR [rax],al
 7b4:	00 00                	add    BYTE PTR [rax],al
 7b6:	00 00                	add    BYTE PTR [rax],al
 7b8:	07                   	(bad)  
 7b9:	00 00                	add    BYTE PTR [rax],al
 7bb:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 7c1 <_init-0x7>
 7c1:	00 00                	add    BYTE PTR [rax],al
 7c3:	00 00                	add    BYTE PTR [rax],al
 7c5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init:

00000000000007c8 <_init>:
 7c8:	48 83 ec 08          	sub    rsp,0x8
 7cc:	48 8b 05 15 18 20 00 	mov    rax,QWORD PTR [rip+0x201815]        # 201fe8 <__gmon_start__>
 7d3:	48 85 c0             	test   rax,rax
 7d6:	74 02                	je     7da <_init+0x12>
 7d8:	ff d0                	call   rax
 7da:	48 83 c4 08          	add    rsp,0x8
 7de:	c3                   	ret    

Disassembly of section .plt:

00000000000007e0 <.plt>:
 7e0:	ff 35 92 17 20 00    	push   QWORD PTR [rip+0x201792]        # 201f78 <_GLOBAL_OFFSET_TABLE_+0x8>
 7e6:	ff 25 94 17 20 00    	jmp    QWORD PTR [rip+0x201794]        # 201f80 <_GLOBAL_OFFSET_TABLE_+0x10>
 7ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000007f0 <free@plt>:
 7f0:	ff 25 92 17 20 00    	jmp    QWORD PTR [rip+0x201792]        # 201f88 <free@GLIBC_2.2.5>
 7f6:	68 00 00 00 00       	push   0x0
 7fb:	e9 e0 ff ff ff       	jmp    7e0 <.plt>

0000000000000800 <__read_chk@plt>:
 800:	ff 25 8a 17 20 00    	jmp    QWORD PTR [rip+0x20178a]        # 201f90 <__read_chk@GLIBC_2.4>
 806:	68 01 00 00 00       	push   0x1
 80b:	e9 d0 ff ff ff       	jmp    7e0 <.plt>

0000000000000810 <puts@plt>:
 810:	ff 25 82 17 20 00    	jmp    QWORD PTR [rip+0x201782]        # 201f98 <puts@GLIBC_2.2.5>
 816:	68 02 00 00 00       	push   0x2
 81b:	e9 c0 ff ff ff       	jmp    7e0 <.plt>

0000000000000820 <__stack_chk_fail@plt>:
 820:	ff 25 7a 17 20 00    	jmp    QWORD PTR [rip+0x20177a]        # 201fa0 <__stack_chk_fail@GLIBC_2.4>
 826:	68 03 00 00 00       	push   0x3
 82b:	e9 b0 ff ff ff       	jmp    7e0 <.plt>

0000000000000830 <system@plt>:
 830:	ff 25 72 17 20 00    	jmp    QWORD PTR [rip+0x201772]        # 201fa8 <system@GLIBC_2.2.5>
 836:	68 04 00 00 00       	push   0x4
 83b:	e9 a0 ff ff ff       	jmp    7e0 <.plt>

0000000000000840 <printf@plt>:
 840:	ff 25 6a 17 20 00    	jmp    QWORD PTR [rip+0x20176a]        # 201fb0 <printf@GLIBC_2.2.5>
 846:	68 05 00 00 00       	push   0x5
 84b:	e9 90 ff ff ff       	jmp    7e0 <.plt>

0000000000000850 <read@plt>:
 850:	ff 25 62 17 20 00    	jmp    QWORD PTR [rip+0x201762]        # 201fb8 <read@GLIBC_2.2.5>
 856:	68 06 00 00 00       	push   0x6
 85b:	e9 80 ff ff ff       	jmp    7e0 <.plt>

0000000000000860 <malloc@plt>:
 860:	ff 25 5a 17 20 00    	jmp    QWORD PTR [rip+0x20175a]        # 201fc0 <malloc@GLIBC_2.2.5>
 866:	68 07 00 00 00       	push   0x7
 86b:	e9 70 ff ff ff       	jmp    7e0 <.plt>

0000000000000870 <setvbuf@plt>:
 870:	ff 25 52 17 20 00    	jmp    QWORD PTR [rip+0x201752]        # 201fc8 <setvbuf@GLIBC_2.2.5>
 876:	68 08 00 00 00       	push   0x8
 87b:	e9 60 ff ff ff       	jmp    7e0 <.plt>

0000000000000880 <atoi@plt>:
 880:	ff 25 4a 17 20 00    	jmp    QWORD PTR [rip+0x20174a]        # 201fd0 <atoi@GLIBC_2.2.5>
 886:	68 09 00 00 00       	push   0x9
 88b:	e9 50 ff ff ff       	jmp    7e0 <.plt>

Disassembly of section .plt.got:

0000000000000890 <__cxa_finalize@plt>:
 890:	ff 25 62 17 20 00    	jmp    QWORD PTR [rip+0x201762]        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 896:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000008a0 <_start>:
 8a0:	31 ed                	xor    ebp,ebp
 8a2:	49 89 d1             	mov    r9,rdx
 8a5:	5e                   	pop    rsi
 8a6:	48 89 e2             	mov    rdx,rsp
 8a9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 8ad:	50                   	push   rax
 8ae:	54                   	push   rsp
 8af:	4c 8d 05 8a 03 00 00 	lea    r8,[rip+0x38a]        # c40 <__libc_csu_fini>
 8b6:	48 8d 0d 13 03 00 00 	lea    rcx,[rip+0x313]        # bd0 <__libc_csu_init>
 8bd:	48 8d 3d 04 02 00 00 	lea    rdi,[rip+0x204]        # ac8 <main>
 8c4:	ff 15 16 17 20 00    	call   QWORD PTR [rip+0x201716]        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8ca:	f4                   	hlt    
 8cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000008d0 <deregister_tm_clones>:
 8d0:	48 8d 3d 39 17 20 00 	lea    rdi,[rip+0x201739]        # 202010 <__TMC_END__>
 8d7:	55                   	push   rbp
 8d8:	48 8d 05 31 17 20 00 	lea    rax,[rip+0x201731]        # 202010 <__TMC_END__>
 8df:	48 39 f8             	cmp    rax,rdi
 8e2:	48 89 e5             	mov    rbp,rsp
 8e5:	74 19                	je     900 <deregister_tm_clones+0x30>
 8e7:	48 8b 05 ea 16 20 00 	mov    rax,QWORD PTR [rip+0x2016ea]        # 201fd8 <_ITM_deregisterTMCloneTable>
 8ee:	48 85 c0             	test   rax,rax
 8f1:	74 0d                	je     900 <deregister_tm_clones+0x30>
 8f3:	5d                   	pop    rbp
 8f4:	ff e0                	jmp    rax
 8f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 8fd:	00 00 00 
 900:	5d                   	pop    rbp
 901:	c3                   	ret    
 902:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 906:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 90d:	00 00 00 

0000000000000910 <register_tm_clones>:
 910:	48 8d 3d f9 16 20 00 	lea    rdi,[rip+0x2016f9]        # 202010 <__TMC_END__>
 917:	48 8d 35 f2 16 20 00 	lea    rsi,[rip+0x2016f2]        # 202010 <__TMC_END__>
 91e:	55                   	push   rbp
 91f:	48 29 fe             	sub    rsi,rdi
 922:	48 89 e5             	mov    rbp,rsp
 925:	48 c1 fe 03          	sar    rsi,0x3
 929:	48 89 f0             	mov    rax,rsi
 92c:	48 c1 e8 3f          	shr    rax,0x3f
 930:	48 01 c6             	add    rsi,rax
 933:	48 d1 fe             	sar    rsi,1
 936:	74 18                	je     950 <register_tm_clones+0x40>
 938:	48 8b 05 b1 16 20 00 	mov    rax,QWORD PTR [rip+0x2016b1]        # 201ff0 <_ITM_registerTMCloneTable>
 93f:	48 85 c0             	test   rax,rax
 942:	74 0c                	je     950 <register_tm_clones+0x40>
 944:	5d                   	pop    rbp
 945:	ff e0                	jmp    rax
 947:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 94e:	00 00 
 950:	5d                   	pop    rbp
 951:	c3                   	ret    
 952:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 956:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 95d:	00 00 00 

0000000000000960 <__do_global_dtors_aux>:
 960:	80 3d e1 16 20 00 00 	cmp    BYTE PTR [rip+0x2016e1],0x0        # 202048 <completed.7697>
 967:	75 2f                	jne    998 <__do_global_dtors_aux+0x38>
 969:	48 83 3d 87 16 20 00 	cmp    QWORD PTR [rip+0x201687],0x0        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 970:	00 
 971:	55                   	push   rbp
 972:	48 89 e5             	mov    rbp,rsp
 975:	74 0c                	je     983 <__do_global_dtors_aux+0x23>
 977:	48 8b 3d 8a 16 20 00 	mov    rdi,QWORD PTR [rip+0x20168a]        # 202008 <__dso_handle>
 97e:	e8 0d ff ff ff       	call   890 <__cxa_finalize@plt>
 983:	e8 48 ff ff ff       	call   8d0 <deregister_tm_clones>
 988:	c6 05 b9 16 20 00 01 	mov    BYTE PTR [rip+0x2016b9],0x1        # 202048 <completed.7697>
 98f:	5d                   	pop    rbp
 990:	c3                   	ret    
 991:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 998:	f3 c3                	repz ret 
 99a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000009a0 <frame_dummy>:
 9a0:	55                   	push   rbp
 9a1:	48 89 e5             	mov    rbp,rsp
 9a4:	5d                   	pop    rbp
 9a5:	e9 66 ff ff ff       	jmp    910 <register_tm_clones>

00000000000009aa <init>:
 9aa:	55                   	push   rbp
 9ab:	48 89 e5             	mov    rbp,rsp
 9ae:	48 8b 05 6b 16 20 00 	mov    rax,QWORD PTR [rip+0x20166b]        # 202020 <stdout@@GLIBC_2.2.5>
 9b5:	b9 00 00 00 00       	mov    ecx,0x0
 9ba:	ba 02 00 00 00       	mov    edx,0x2
 9bf:	be 00 00 00 00       	mov    esi,0x0
 9c4:	48 89 c7             	mov    rdi,rax
 9c7:	e8 a4 fe ff ff       	call   870 <setvbuf@plt>
 9cc:	48 8b 05 5d 16 20 00 	mov    rax,QWORD PTR [rip+0x20165d]        # 202030 <stdin@@GLIBC_2.2.5>
 9d3:	b9 00 00 00 00       	mov    ecx,0x0
 9d8:	ba 02 00 00 00       	mov    edx,0x2
 9dd:	be 00 00 00 00       	mov    esi,0x0
 9e2:	48 89 c7             	mov    rdi,rax
 9e5:	e8 86 fe ff ff       	call   870 <setvbuf@plt>
 9ea:	48 8b 05 4f 16 20 00 	mov    rax,QWORD PTR [rip+0x20164f]        # 202040 <stderr@@GLIBC_2.2.5>
 9f1:	b9 00 00 00 00       	mov    ecx,0x0
 9f6:	ba 02 00 00 00       	mov    edx,0x2
 9fb:	be 00 00 00 00       	mov    esi,0x0
 a00:	48 89 c7             	mov    rdi,rax
 a03:	e8 68 fe ff ff       	call   870 <setvbuf@plt>
 a08:	90                   	nop
 a09:	5d                   	pop    rbp
 a0a:	c3                   	ret    

0000000000000a0b <read_int>:
 a0b:	55                   	push   rbp
 a0c:	48 89 e5             	mov    rbp,rsp
 a0f:	48 83 ec 20          	sub    rsp,0x20
 a13:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 a1a:	00 00 
 a1c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 a20:	31 c0                	xor    eax,eax
 a22:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 a26:	b9 10 00 00 00       	mov    ecx,0x10
 a2b:	ba 0f 00 00 00       	mov    edx,0xf
 a30:	48 89 c6             	mov    rsi,rax
 a33:	bf 00 00 00 00       	mov    edi,0x0
 a38:	b8 00 00 00 00       	mov    eax,0x0
 a3d:	e8 be fd ff ff       	call   800 <__read_chk@plt>
 a42:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 a46:	48 89 c7             	mov    rdi,rax
 a49:	e8 32 fe ff ff       	call   880 <atoi@plt>
 a4e:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 a52:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
 a59:	00 00 
 a5b:	74 05                	je     a62 <read_int+0x57>
 a5d:	e8 be fd ff ff       	call   820 <__stack_chk_fail@plt>
 a62:	c9                   	leave  
 a63:	c3                   	ret    

0000000000000a64 <welcome_func>:
 a64:	55                   	push   rbp
 a65:	48 89 e5             	mov    rbp,rsp
 a68:	48 8d 3d e5 01 00 00 	lea    rdi,[rip+0x1e5]        # c54 <_IO_stdin_used+0x4>
 a6f:	e8 9c fd ff ff       	call   810 <puts@plt>
 a74:	90                   	nop
 a75:	5d                   	pop    rbp
 a76:	c3                   	ret    

0000000000000a77 <bye_func>:
 a77:	55                   	push   rbp
 a78:	48 89 e5             	mov    rbp,rsp
 a7b:	48 8d 3d dc 01 00 00 	lea    rdi,[rip+0x1dc]        # c5e <_IO_stdin_used+0xe>
 a82:	e8 89 fd ff ff       	call   810 <puts@plt>
 a87:	90                   	nop
 a88:	5d                   	pop    rbp
 a89:	c3                   	ret    

0000000000000a8a <menu>:
 a8a:	55                   	push   rbp
 a8b:	48 89 e5             	mov    rbp,rsp
 a8e:	48 8d 3d d1 01 00 00 	lea    rdi,[rip+0x1d1]        # c66 <_IO_stdin_used+0x16>
 a95:	e8 76 fd ff ff       	call   810 <puts@plt>
 a9a:	48 8d 3d d2 01 00 00 	lea    rdi,[rip+0x1d2]        # c73 <_IO_stdin_used+0x23>
 aa1:	e8 6a fd ff ff       	call   810 <puts@plt>
 aa6:	48 8d 3d ce 01 00 00 	lea    rdi,[rip+0x1ce]        # c7b <_IO_stdin_used+0x2b>
 aad:	e8 5e fd ff ff       	call   810 <puts@plt>
 ab2:	90                   	nop
 ab3:	5d                   	pop    rbp
 ab4:	c3                   	ret    

0000000000000ab5 <backdoor>:
 ab5:	55                   	push   rbp
 ab6:	48 89 e5             	mov    rbp,rsp
 ab9:	48 8d 3d bd 01 00 00 	lea    rdi,[rip+0x1bd]        # c7d <_IO_stdin_used+0x2d>
 ac0:	e8 6b fd ff ff       	call   830 <system@plt>
 ac5:	90                   	nop
 ac6:	5d                   	pop    rbp
 ac7:	c3                   	ret    

0000000000000ac8 <main>:
 ac8:	55                   	push   rbp
 ac9:	48 89 e5             	mov    rbp,rsp
 acc:	48 83 ec 20          	sub    rsp,0x20
 ad0:	b8 00 00 00 00       	mov    eax,0x0
 ad5:	e8 d0 fe ff ff       	call   9aa <init>
 ada:	bf 10 00 00 00       	mov    edi,0x10
 adf:	e8 7c fd ff ff       	call   860 <malloc@plt>
 ae4:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
 ae8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 aec:	48 8d 15 71 ff ff ff 	lea    rdx,[rip+0xffffffffffffff71]        # a64 <welcome_func>
 af3:	48 89 10             	mov    QWORD PTR [rax],rdx
 af6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 afa:	48 8d 15 76 ff ff ff 	lea    rdx,[rip+0xffffffffffffff76]        # a77 <bye_func>
 b01:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
 b05:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 b09:	48 8b 10             	mov    rdx,QWORD PTR [rax]
 b0c:	b8 00 00 00 00       	mov    eax,0x0
 b11:	ff d2                	call   rdx
 b13:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 b17:	48 89 c7             	mov    rdi,rax
 b1a:	e8 d1 fc ff ff       	call   7f0 <free@plt>
 b1f:	c7 45 e8 03 00 00 00 	mov    DWORD PTR [rbp-0x18],0x3
 b26:	eb 7d                	jmp    ba5 <main+0xdd>
 b28:	48 8d 3d 51 01 00 00 	lea    rdi,[rip+0x151]        # c80 <_IO_stdin_used+0x30>
 b2f:	b8 00 00 00 00       	mov    eax,0x0
 b34:	e8 07 fd ff ff       	call   840 <printf@plt>
 b39:	b8 00 00 00 00       	mov    eax,0x0
 b3e:	e8 c8 fe ff ff       	call   a0b <read_int>
 b43:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
 b46:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 b49:	48 98                	cdqe   
 b4b:	48 89 c7             	mov    rdi,rax
 b4e:	e8 0d fd ff ff       	call   860 <malloc@plt>
 b53:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 b57:	48 8d 3d 39 01 00 00 	lea    rdi,[rip+0x139]        # c97 <_IO_stdin_used+0x47>
 b5e:	b8 00 00 00 00       	mov    eax,0x0
 b63:	e8 d8 fc ff ff       	call   840 <printf@plt>
 b68:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
 b6b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 b6f:	48 89 c6             	mov    rsi,rax
 b72:	bf 00 00 00 00       	mov    edi,0x0
 b77:	b8 00 00 00 00       	mov    eax,0x0
 b7c:	e8 cf fc ff ff       	call   850 <read@plt>
 b81:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 b85:	48 89 c6             	mov    rsi,rax
 b88:	48 8d 3d 12 01 00 00 	lea    rdi,[rip+0x112]        # ca1 <_IO_stdin_used+0x51>
 b8f:	b8 00 00 00 00       	mov    eax,0x0
 b94:	e8 a7 fc ff ff       	call   840 <printf@plt>
 b99:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 b9d:	48 89 c7             	mov    rdi,rax
 ba0:	e8 4b fc ff ff       	call   7f0 <free@plt>
 ba5:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 ba8:	8d 50 ff             	lea    edx,[rax-0x1]
 bab:	89 55 e8             	mov    DWORD PTR [rbp-0x18],edx
 bae:	85 c0                	test   eax,eax
 bb0:	0f 85 72 ff ff ff    	jne    b28 <main+0x60>
 bb6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 bba:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
 bbe:	b8 00 00 00 00       	mov    eax,0x0
 bc3:	ff d2                	call   rdx
 bc5:	b8 00 00 00 00       	mov    eax,0x0
 bca:	c9                   	leave  
 bcb:	c3                   	ret    
 bcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000bd0 <__libc_csu_init>:
 bd0:	41 57                	push   r15
 bd2:	41 56                	push   r14
 bd4:	49 89 d7             	mov    r15,rdx
 bd7:	41 55                	push   r13
 bd9:	41 54                	push   r12
 bdb:	4c 8d 25 8e 11 20 00 	lea    r12,[rip+0x20118e]        # 201d70 <__frame_dummy_init_array_entry>
 be2:	55                   	push   rbp
 be3:	48 8d 2d 8e 11 20 00 	lea    rbp,[rip+0x20118e]        # 201d78 <__init_array_end>
 bea:	53                   	push   rbx
 beb:	41 89 fd             	mov    r13d,edi
 bee:	49 89 f6             	mov    r14,rsi
 bf1:	4c 29 e5             	sub    rbp,r12
 bf4:	48 83 ec 08          	sub    rsp,0x8
 bf8:	48 c1 fd 03          	sar    rbp,0x3
 bfc:	e8 c7 fb ff ff       	call   7c8 <_init>
 c01:	48 85 ed             	test   rbp,rbp
 c04:	74 20                	je     c26 <__libc_csu_init+0x56>
 c06:	31 db                	xor    ebx,ebx
 c08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 c0f:	00 
 c10:	4c 89 fa             	mov    rdx,r15
 c13:	4c 89 f6             	mov    rsi,r14
 c16:	44 89 ef             	mov    edi,r13d
 c19:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 c1d:	48 83 c3 01          	add    rbx,0x1
 c21:	48 39 dd             	cmp    rbp,rbx
 c24:	75 ea                	jne    c10 <__libc_csu_init+0x40>
 c26:	48 83 c4 08          	add    rsp,0x8
 c2a:	5b                   	pop    rbx
 c2b:	5d                   	pop    rbp
 c2c:	41 5c                	pop    r12
 c2e:	41 5d                	pop    r13
 c30:	41 5e                	pop    r14
 c32:	41 5f                	pop    r15
 c34:	c3                   	ret    
 c35:	90                   	nop
 c36:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 c3d:	00 00 00 

0000000000000c40 <__libc_csu_fini>:
 c40:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000000c44 <_fini>:
 c44:	48 83 ec 08          	sub    rsp,0x8
 c48:	48 83 c4 08          	add    rsp,0x8
 c4c:	c3                   	ret    

Disassembly of section .rodata:

0000000000000c50 <_IO_stdin_used>:
 c50:	01 00                	add    DWORD PTR [rax],eax
 c52:	02 00                	add    al,BYTE PTR [rax]
 c54:	48                   	rex.W
 c55:	65 6c                	gs ins BYTE PTR es:[rdi],dx
 c57:	6c                   	ins    BYTE PTR es:[rdi],dx
 c58:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 c59:	20 7e 7e             	and    BYTE PTR [rsi+0x7e],bh
 c5c:	7e 00                	jle    c5e <_IO_stdin_used+0xe>
 c5e:	42 79 65             	rex.X jns cc6 <__GNU_EH_FRAME_HDR+0x12>
 c61:	20 7e 7e             	and    BYTE PTR [rsi+0x7e],bh
 c64:	7e 00                	jle    c66 <_IO_stdin_used+0x16>
 c66:	31 2e                	xor    DWORD PTR [rsi],ebp
 c68:	20 61 64             	and    BYTE PTR [rcx+0x64],ah
 c6b:	64 20 61 20          	and    BYTE PTR fs:[rcx+0x20],ah
 c6f:	62                   	(bad)  
 c70:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 c71:	78 00                	js     c73 <_IO_stdin_used+0x23>
 c73:	32 2e                	xor    ch,BYTE PTR [rsi]
 c75:	20 65 78             	and    BYTE PTR [rbp+0x78],ah
 c78:	69 74 00 3e 00 73 68 	imul   esi,DWORD PTR [rax+rax*1+0x3e],0x687300
 c7f:	00 
 c80:	53                   	push   rbx
 c81:	69 7a 65 20 6f 66 20 	imul   edi,DWORD PTR [rdx+0x65],0x20666f20
 c88:	79 6f                	jns    cf9 <__GNU_EH_FRAME_HDR+0x45>
 c8a:	75 72                	jne    cfe <__GNU_EH_FRAME_HDR+0x4a>
 c8c:	20 6d 65             	and    BYTE PTR [rbp+0x65],ch
 c8f:	73 73                	jae    d04 <__GNU_EH_FRAME_HDR+0x50>
 c91:	65 67 65 3a 20       	gs cmp ah,BYTE PTR gs:[eax]
 c96:	00 4d 65             	add    BYTE PTR [rbp+0x65],cl
 c99:	73 73                	jae    d0e <__GNU_EH_FRAME_HDR+0x5a>
 c9b:	65 67 65 3a 20       	gs cmp ah,BYTE PTR gs:[eax]
 ca0:	00 53 61             	add    BYTE PTR [rbx+0x61],dl
 ca3:	76 65                	jbe    d0a <__GNU_EH_FRAME_HDR+0x56>
 ca5:	64 20 6d 65          	and    BYTE PTR fs:[rbp+0x65],ch
 ca9:	73 73                	jae    d1e <__GNU_EH_FRAME_HDR+0x6a>
 cab:	65 67 65 3a 20       	gs cmp ah,BYTE PTR gs:[eax]
 cb0:	25                   	.byte 0x25
 cb1:	73 0a                	jae    cbd <__GNU_EH_FRAME_HDR+0x9>
	...

Disassembly of section .eh_frame_hdr:

0000000000000cb4 <__GNU_EH_FRAME_HDR>:
 cb4:	01 1b                	add    DWORD PTR [rbx],ebx
 cb6:	03 3b                	add    edi,DWORD PTR [rbx]
 cb8:	68 00 00 00 0c       	push   0xc000000
 cbd:	00 00                	add    BYTE PTR [rax],al
 cbf:	00 2c fb             	add    BYTE PTR [rbx+rdi*8],ch
 cc2:	ff                   	(bad)  
 cc3:	ff b4 00 00 00 dc fb 	push   QWORD PTR [rax+rax*1-0x4240000]
 cca:	ff                   	(bad)  
 ccb:	ff                   	(bad)  
 ccc:	dc 00                	fadd   QWORD PTR [rax]
 cce:	00 00                	add    BYTE PTR [rax],al
 cd0:	ec                   	in     al,dx
 cd1:	fb                   	sti    
 cd2:	ff                   	(bad)  
 cd3:	ff 84 00 00 00 f6 fc 	inc    DWORD PTR [rax+rax*1-0x30a0000]
 cda:	ff                   	(bad)  
 cdb:	ff f4                	push   rsp
 cdd:	00 00                	add    BYTE PTR [rax],al
 cdf:	00 57 fd             	add    BYTE PTR [rdi-0x3],dl
 ce2:	ff                   	(bad)  
 ce3:	ff 14 01             	call   QWORD PTR [rcx+rax*1]
 ce6:	00 00                	add    BYTE PTR [rax],al
 ce8:	b0 fd                	mov    al,0xfd
 cea:	ff                   	(bad)  
 ceb:	ff 34 01             	push   QWORD PTR [rcx+rax*1]
 cee:	00 00                	add    BYTE PTR [rax],al
 cf0:	c3                   	ret    
 cf1:	fd                   	std    
 cf2:	ff                   	(bad)  
 cf3:	ff 54 01 00          	call   QWORD PTR [rcx+rax*1+0x0]
 cf7:	00 d6                	add    dh,dl
 cf9:	fd                   	std    
 cfa:	ff                   	(bad)  
 cfb:	ff 74 01 00          	push   QWORD PTR [rcx+rax*1+0x0]
 cff:	00 01                	add    BYTE PTR [rcx],al
 d01:	fe                   	(bad)  
 d02:	ff                   	(bad)  
 d03:	ff 94 01 00 00 14 fe 	call   QWORD PTR [rcx+rax*1-0x1ec0000]
 d0a:	ff                   	(bad)  
 d0b:	ff b4 01 00 00 1c ff 	push   QWORD PTR [rcx+rax*1-0xe40000]
 d12:	ff                   	(bad)  
 d13:	ff d4                	call   rsp
 d15:	01 00                	add    DWORD PTR [rax],eax
 d17:	00 8c ff ff ff 1c 02 	add    BYTE PTR [rdi+rdi*8+0x21cffff],cl
	...

Disassembly of section .eh_frame:

0000000000000d20 <__FRAME_END__-0x1c4>:
 d20:	14 00                	adc    al,0x0
 d22:	00 00                	add    BYTE PTR [rax],al
 d24:	00 00                	add    BYTE PTR [rax],al
 d26:	00 00                	add    BYTE PTR [rax],al
 d28:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
 d2b:	00 01                	add    BYTE PTR [rcx],al
 d2d:	78 10                	js     d3f <__GNU_EH_FRAME_HDR+0x8b>
 d2f:	01 1b                	add    DWORD PTR [rbx],ebx
 d31:	0c 07                	or     al,0x7
 d33:	08 90 01 07 10 14    	or     BYTE PTR [rax+0x14100701],dl
 d39:	00 00                	add    BYTE PTR [rax],al
 d3b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 d3e:	00 00                	add    BYTE PTR [rax],al
 d40:	60                   	(bad)  
 d41:	fb                   	sti    
 d42:	ff                   	(bad)  
 d43:	ff 2b                	jmp    FWORD PTR [rbx]
	...
 d4d:	00 00                	add    BYTE PTR [rax],al
 d4f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
 d52:	00 00                	add    BYTE PTR [rax],al
 d54:	00 00                	add    BYTE PTR [rax],al
 d56:	00 00                	add    BYTE PTR [rax],al
 d58:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
 d5b:	00 01                	add    BYTE PTR [rcx],al
 d5d:	78 10                	js     d6f <__GNU_EH_FRAME_HDR+0xbb>
 d5f:	01 1b                	add    DWORD PTR [rbx],ebx
 d61:	0c 07                	or     al,0x7
 d63:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
 d69:	00 00                	add    BYTE PTR [rax],al
 d6b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 d6e:	00 00                	add    BYTE PTR [rax],al
 d70:	70 fa                	jo     d6c <__GNU_EH_FRAME_HDR+0xb8>
 d72:	ff                   	(bad)  
 d73:	ff b0 00 00 00 00    	push   QWORD PTR [rax+0x0]
 d79:	0e                   	(bad)  
 d7a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
 d7d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
 d80:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
 d83:	80 00 3f             	add    BYTE PTR [rax],0x3f
 d86:	1a 3b                	sbb    bh,BYTE PTR [rbx]
 d88:	2a 33                	sub    dh,BYTE PTR [rbx]
 d8a:	24 22                	and    al,0x22
 d8c:	00 00                	add    BYTE PTR [rax],al
 d8e:	00 00                	add    BYTE PTR [rax],al
 d90:	14 00                	adc    al,0x0
 d92:	00 00                	add    BYTE PTR [rax],al
 d94:	44 00 00             	add    BYTE PTR [rax],r8b
 d97:	00 f8                	add    al,bh
 d99:	fa                   	cli    
 d9a:	ff                   	(bad)  
 d9b:	ff 08                	dec    DWORD PTR [rax]
	...
 da5:	00 00                	add    BYTE PTR [rax],al
 da7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 daa:	00 00                	add    BYTE PTR [rax],al
 dac:	5c                   	pop    rsp
 dad:	00 00                	add    BYTE PTR [rax],al
 daf:	00 fa                	add    dl,bh
 db1:	fb                   	sti    
 db2:	ff                   	(bad)  
 db3:	ff 61 00             	jmp    QWORD PTR [rcx+0x0]
 db6:	00 00                	add    BYTE PTR [rax],al
 db8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
 dbb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 dc1:	02 5c 0c 07          	add    bl,BYTE PTR [rsp+rcx*1+0x7]
 dc5:	08 00                	or     BYTE PTR [rax],al
 dc7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 dca:	00 00                	add    BYTE PTR [rax],al
 dcc:	7c 00                	jl     dce <__GNU_EH_FRAME_HDR+0x11a>
 dce:	00 00                	add    BYTE PTR [rax],al
 dd0:	3b fc                	cmp    edi,esp
 dd2:	ff                   	(bad)  
 dd3:	ff 59 00             	call   FWORD PTR [rcx+0x0]
 dd6:	00 00                	add    BYTE PTR [rax],al
 dd8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
 ddb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 de1:	02 54 0c 07          	add    dl,BYTE PTR [rsp+rcx*1+0x7]
 de5:	08 00                	or     BYTE PTR [rax],al
 de7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
 dea:	00 00                	add    BYTE PTR [rax],al
 dec:	9c                   	pushf  
 ded:	00 00                	add    BYTE PTR [rax],al
 def:	00 74 fc ff          	add    BYTE PTR [rsp+rdi*8-0x1],dh
 df3:	ff 13                	call   QWORD PTR [rbx]
 df5:	00 00                	add    BYTE PTR [rax],al
 df7:	00 00                	add    BYTE PTR [rax],al
 df9:	41 0e                	rex.B (bad) 
 dfb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 e01:	4e 0c 07             	rex.WRX or al,0x7
 e04:	08 00                	or     BYTE PTR [rax],al
 e06:	00 00                	add    BYTE PTR [rax],al
 e08:	1c 00                	sbb    al,0x0
 e0a:	00 00                	add    BYTE PTR [rax],al
 e0c:	bc 00 00 00 67       	mov    esp,0x67000000
 e11:	fc                   	cld    
 e12:	ff                   	(bad)  
 e13:	ff 13                	call   QWORD PTR [rbx]
 e15:	00 00                	add    BYTE PTR [rax],al
 e17:	00 00                	add    BYTE PTR [rax],al
 e19:	41 0e                	rex.B (bad) 
 e1b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 e21:	4e 0c 07             	rex.WRX or al,0x7
 e24:	08 00                	or     BYTE PTR [rax],al
 e26:	00 00                	add    BYTE PTR [rax],al
 e28:	1c 00                	sbb    al,0x0
 e2a:	00 00                	add    BYTE PTR [rax],al
 e2c:	dc 00                	fadd   QWORD PTR [rax]
 e2e:	00 00                	add    BYTE PTR [rax],al
 e30:	5a                   	pop    rdx
 e31:	fc                   	cld    
 e32:	ff                   	(bad)  
 e33:	ff 2b                	jmp    FWORD PTR [rbx]
 e35:	00 00                	add    BYTE PTR [rax],al
 e37:	00 00                	add    BYTE PTR [rax],al
 e39:	41 0e                	rex.B (bad) 
 e3b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 e41:	66 0c 07             	data16 or al,0x7
 e44:	08 00                	or     BYTE PTR [rax],al
 e46:	00 00                	add    BYTE PTR [rax],al
 e48:	1c 00                	sbb    al,0x0
 e4a:	00 00                	add    BYTE PTR [rax],al
 e4c:	fc                   	cld    
 e4d:	00 00                	add    BYTE PTR [rax],al
 e4f:	00 65 fc             	add    BYTE PTR [rbp-0x4],ah
 e52:	ff                   	(bad)  
 e53:	ff 13                	call   QWORD PTR [rbx]
 e55:	00 00                	add    BYTE PTR [rax],al
 e57:	00 00                	add    BYTE PTR [rax],al
 e59:	41 0e                	rex.B (bad) 
 e5b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 e61:	4e 0c 07             	rex.WRX or al,0x7
 e64:	08 00                	or     BYTE PTR [rax],al
 e66:	00 00                	add    BYTE PTR [rax],al
 e68:	1c 00                	sbb    al,0x0
 e6a:	00 00                	add    BYTE PTR [rax],al
 e6c:	1c 01                	sbb    al,0x1
 e6e:	00 00                	add    BYTE PTR [rax],al
 e70:	58                   	pop    rax
 e71:	fc                   	cld    
 e72:	ff                   	(bad)  
 e73:	ff 04 01             	inc    DWORD PTR [rcx+rax*1]
 e76:	00 00                	add    BYTE PTR [rax],al
 e78:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
 e7b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 e81:	02 ff                	add    bh,bh
 e83:	0c 07                	or     al,0x7
 e85:	08 00                	or     BYTE PTR [rax],al
 e87:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
 e8b:	00 3c 01             	add    BYTE PTR [rcx+rax*1],bh
 e8e:	00 00                	add    BYTE PTR [rax],al
 e90:	40 fd                	rex std 
 e92:	ff                   	(bad)  
 e93:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
 e96:	00 00                	add    BYTE PTR [rax],al
 e98:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
 e9b:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
 ea1:	8e 03                	mov    es,WORD PTR [rbx]
 ea3:	45 0e                	rex.RB (bad) 
 ea5:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
 eab:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86301cf9 <_end+0xffffffff860ffca9>
 eb1:	06                   	(bad)  
 eb2:	48 0e                	rex.W (bad) 
 eb4:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
 eba:	72 0e                	jb     eca <__GNU_EH_FRAME_HDR+0x216>
 ebc:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
 ebf:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
 ec2:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
 ec5:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
 ec8:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
 ecb:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
 ece:	08 00                	or     BYTE PTR [rax],al
 ed0:	10 00                	adc    BYTE PTR [rax],al
 ed2:	00 00                	add    BYTE PTR [rax],al
 ed4:	84 01                	test   BYTE PTR [rcx],al
 ed6:	00 00                	add    BYTE PTR [rax],al
 ed8:	68 fd ff ff 02       	push   0x2fffffd
 edd:	00 00                	add    BYTE PTR [rax],al
 edf:	00 00                	add    BYTE PTR [rax],al
 ee1:	00 00                	add    BYTE PTR [rax],al
	...

0000000000000ee4 <__FRAME_END__>:
 ee4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000201d70 <__frame_dummy_init_array_entry>:
  201d70:	a0                   	.byte 0xa0
  201d71:	09 00                	or     DWORD PTR [rax],eax
  201d73:	00 00                	add    BYTE PTR [rax],al
  201d75:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000201d78 <__do_global_dtors_aux_fini_array_entry>:
  201d78:	60                   	(bad)  
  201d79:	09 00                	or     DWORD PTR [rax],eax
  201d7b:	00 00                	add    BYTE PTR [rax],al
  201d7d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000201d80 <_DYNAMIC>:
  201d80:	01 00                	add    DWORD PTR [rax],eax
  201d82:	00 00                	add    BYTE PTR [rax],al
  201d84:	00 00                	add    BYTE PTR [rax],al
  201d86:	00 00                	add    BYTE PTR [rax],al
  201d88:	01 00                	add    DWORD PTR [rax],eax
  201d8a:	00 00                	add    BYTE PTR [rax],al
  201d8c:	00 00                	add    BYTE PTR [rax],al
  201d8e:	00 00                	add    BYTE PTR [rax],al
  201d90:	0c 00                	or     al,0x0
  201d92:	00 00                	add    BYTE PTR [rax],al
  201d94:	00 00                	add    BYTE PTR [rax],al
  201d96:	00 00                	add    BYTE PTR [rax],al
  201d98:	c8 07 00 00          	enter  0x7,0x0
  201d9c:	00 00                	add    BYTE PTR [rax],al
  201d9e:	00 00                	add    BYTE PTR [rax],al
  201da0:	0d 00 00 00 00       	or     eax,0x0
  201da5:	00 00                	add    BYTE PTR [rax],al
  201da7:	00 44 0c 00          	add    BYTE PTR [rsp+rcx*1+0x0],al
  201dab:	00 00                	add    BYTE PTR [rax],al
  201dad:	00 00                	add    BYTE PTR [rax],al
  201daf:	00 19                	add    BYTE PTR [rcx],bl
  201db1:	00 00                	add    BYTE PTR [rax],al
  201db3:	00 00                	add    BYTE PTR [rax],al
  201db5:	00 00                	add    BYTE PTR [rax],al
  201db7:	00 70 1d             	add    BYTE PTR [rax+0x1d],dh
  201dba:	20 00                	and    BYTE PTR [rax],al
  201dbc:	00 00                	add    BYTE PTR [rax],al
  201dbe:	00 00                	add    BYTE PTR [rax],al
  201dc0:	1b 00                	sbb    eax,DWORD PTR [rax]
  201dc2:	00 00                	add    BYTE PTR [rax],al
  201dc4:	00 00                	add    BYTE PTR [rax],al
  201dc6:	00 00                	add    BYTE PTR [rax],al
  201dc8:	08 00                	or     BYTE PTR [rax],al
  201dca:	00 00                	add    BYTE PTR [rax],al
  201dcc:	00 00                	add    BYTE PTR [rax],al
  201dce:	00 00                	add    BYTE PTR [rax],al
  201dd0:	1a 00                	sbb    al,BYTE PTR [rax]
  201dd2:	00 00                	add    BYTE PTR [rax],al
  201dd4:	00 00                	add    BYTE PTR [rax],al
  201dd6:	00 00                	add    BYTE PTR [rax],al
  201dd8:	78 1d                	js     201df7 <_DYNAMIC+0x77>
  201dda:	20 00                	and    BYTE PTR [rax],al
  201ddc:	00 00                	add    BYTE PTR [rax],al
  201dde:	00 00                	add    BYTE PTR [rax],al
  201de0:	1c 00                	sbb    al,0x0
  201de2:	00 00                	add    BYTE PTR [rax],al
  201de4:	00 00                	add    BYTE PTR [rax],al
  201de6:	00 00                	add    BYTE PTR [rax],al
  201de8:	08 00                	or     BYTE PTR [rax],al
  201dea:	00 00                	add    BYTE PTR [rax],al
  201dec:	00 00                	add    BYTE PTR [rax],al
  201dee:	00 00                	add    BYTE PTR [rax],al
  201df0:	f5                   	cmc    
  201df1:	fe                   	(bad)  
  201df2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201df5:	00 00                	add    BYTE PTR [rax],al
  201df7:	00 98 02 00 00 00    	add    BYTE PTR [rax+0x2],bl
  201dfd:	00 00                	add    BYTE PTR [rax],al
  201dff:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 201e05 <_DYNAMIC+0x85>
  201e05:	00 00                	add    BYTE PTR [rax],al
  201e07:	00 90 04 00 00 00    	add    BYTE PTR [rax+0x4],dl
  201e0d:	00 00                	add    BYTE PTR [rax],al
  201e0f:	00 06                	add    BYTE PTR [rsi],al
  201e11:	00 00                	add    BYTE PTR [rax],al
  201e13:	00 00                	add    BYTE PTR [rax],al
  201e15:	00 00                	add    BYTE PTR [rax],al
  201e17:	00 c8                	add    al,cl
  201e19:	02 00                	add    al,BYTE PTR [rax]
  201e1b:	00 00                	add    BYTE PTR [rax],al
  201e1d:	00 00                	add    BYTE PTR [rax],al
  201e1f:	00 0a                	add    BYTE PTR [rdx],cl
  201e21:	00 00                	add    BYTE PTR [rax],al
  201e23:	00 00                	add    BYTE PTR [rax],al
  201e25:	00 00                	add    BYTE PTR [rax],al
  201e27:	00 e8                	add    al,ch
  201e29:	00 00                	add    BYTE PTR [rax],al
  201e2b:	00 00                	add    BYTE PTR [rax],al
  201e2d:	00 00                	add    BYTE PTR [rax],al
  201e2f:	00 0b                	add    BYTE PTR [rbx],cl
  201e31:	00 00                	add    BYTE PTR [rax],al
  201e33:	00 00                	add    BYTE PTR [rax],al
  201e35:	00 00                	add    BYTE PTR [rax],al
  201e37:	00 18                	add    BYTE PTR [rax],bl
  201e39:	00 00                	add    BYTE PTR [rax],al
  201e3b:	00 00                	add    BYTE PTR [rax],al
  201e3d:	00 00                	add    BYTE PTR [rax],al
  201e3f:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 201e45 <_DYNAMIC+0xc5>
	...
  201e4d:	00 00                	add    BYTE PTR [rax],al
  201e4f:	00 03                	add    BYTE PTR [rbx],al
  201e51:	00 00                	add    BYTE PTR [rax],al
  201e53:	00 00                	add    BYTE PTR [rax],al
  201e55:	00 00                	add    BYTE PTR [rax],al
  201e57:	00 70 1f             	add    BYTE PTR [rax+0x1f],dh
  201e5a:	20 00                	and    BYTE PTR [rax],al
  201e5c:	00 00                	add    BYTE PTR [rax],al
  201e5e:	00 00                	add    BYTE PTR [rax],al
  201e60:	02 00                	add    al,BYTE PTR [rax]
  201e62:	00 00                	add    BYTE PTR [rax],al
  201e64:	00 00                	add    BYTE PTR [rax],al
  201e66:	00 00                	add    BYTE PTR [rax],al
  201e68:	f0 00 00             	lock add BYTE PTR [rax],al
  201e6b:	00 00                	add    BYTE PTR [rax],al
  201e6d:	00 00                	add    BYTE PTR [rax],al
  201e6f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  201e72:	00 00                	add    BYTE PTR [rax],al
  201e74:	00 00                	add    BYTE PTR [rax],al
  201e76:	00 00                	add    BYTE PTR [rax],al
  201e78:	07                   	(bad)  
  201e79:	00 00                	add    BYTE PTR [rax],al
  201e7b:	00 00                	add    BYTE PTR [rax],al
  201e7d:	00 00                	add    BYTE PTR [rax],al
  201e7f:	00 17                	add    BYTE PTR [rdi],dl
  201e81:	00 00                	add    BYTE PTR [rax],al
  201e83:	00 00                	add    BYTE PTR [rax],al
  201e85:	00 00                	add    BYTE PTR [rax],al
  201e87:	00 d8                	add    al,bl
  201e89:	06                   	(bad)  
  201e8a:	00 00                	add    BYTE PTR [rax],al
  201e8c:	00 00                	add    BYTE PTR [rax],al
  201e8e:	00 00                	add    BYTE PTR [rax],al
  201e90:	07                   	(bad)  
  201e91:	00 00                	add    BYTE PTR [rax],al
  201e93:	00 00                	add    BYTE PTR [rax],al
  201e95:	00 00                	add    BYTE PTR [rax],al
  201e97:	00 d0                	add    al,dl
  201e99:	05 00 00 00 00       	add    eax,0x0
  201e9e:	00 00                	add    BYTE PTR [rax],al
  201ea0:	08 00                	or     BYTE PTR [rax],al
  201ea2:	00 00                	add    BYTE PTR [rax],al
  201ea4:	00 00                	add    BYTE PTR [rax],al
  201ea6:	00 00                	add    BYTE PTR [rax],al
  201ea8:	08 01                	or     BYTE PTR [rcx],al
  201eaa:	00 00                	add    BYTE PTR [rax],al
  201eac:	00 00                	add    BYTE PTR [rax],al
  201eae:	00 00                	add    BYTE PTR [rax],al
  201eb0:	09 00                	or     DWORD PTR [rax],eax
  201eb2:	00 00                	add    BYTE PTR [rax],al
  201eb4:	00 00                	add    BYTE PTR [rax],al
  201eb6:	00 00                	add    BYTE PTR [rax],al
  201eb8:	18 00                	sbb    BYTE PTR [rax],al
  201eba:	00 00                	add    BYTE PTR [rax],al
  201ebc:	00 00                	add    BYTE PTR [rax],al
  201ebe:	00 00                	add    BYTE PTR [rax],al
  201ec0:	1e                   	(bad)  
  201ec1:	00 00                	add    BYTE PTR [rax],al
  201ec3:	00 00                	add    BYTE PTR [rax],al
  201ec5:	00 00                	add    BYTE PTR [rax],al
  201ec7:	00 08                	add    BYTE PTR [rax],cl
  201ec9:	00 00                	add    BYTE PTR [rax],al
  201ecb:	00 00                	add    BYTE PTR [rax],al
  201ecd:	00 00                	add    BYTE PTR [rax],al
  201ecf:	00 fb                	add    bl,bh
  201ed1:	ff                   	(bad)  
  201ed2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201ed5:	00 00                	add    BYTE PTR [rax],al
  201ed7:	00 01                	add    BYTE PTR [rcx],al
  201ed9:	00 00                	add    BYTE PTR [rax],al
  201edb:	08 00                	or     BYTE PTR [rax],al
  201edd:	00 00                	add    BYTE PTR [rax],al
  201edf:	00 fe                	add    dh,bh
  201ee1:	ff                   	(bad)  
  201ee2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201ee5:	00 00                	add    BYTE PTR [rax],al
  201ee7:	00 a0 05 00 00 00    	add    BYTE PTR [rax+0x5],ah
  201eed:	00 00                	add    BYTE PTR [rax],al
  201eef:	00 ff                	add    bh,bh
  201ef1:	ff                   	(bad)  
  201ef2:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201ef5:	00 00                	add    BYTE PTR [rax],al
  201ef7:	00 01                	add    BYTE PTR [rcx],al
  201ef9:	00 00                	add    BYTE PTR [rax],al
  201efb:	00 00                	add    BYTE PTR [rax],al
  201efd:	00 00                	add    BYTE PTR [rax],al
  201eff:	00 f0                	add    al,dh
  201f01:	ff                   	(bad)  
  201f02:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201f05:	00 00                	add    BYTE PTR [rax],al
  201f07:	00 78 05             	add    BYTE PTR [rax+0x5],bh
  201f0a:	00 00                	add    BYTE PTR [rax],al
  201f0c:	00 00                	add    BYTE PTR [rax],al
  201f0e:	00 00                	add    BYTE PTR [rax],al
  201f10:	f9                   	stc    
  201f11:	ff                   	(bad)  
  201f12:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201f15:	00 00                	add    BYTE PTR [rax],al
  201f17:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .got:

0000000000201f70 <_GLOBAL_OFFSET_TABLE_>:
  201f70:	80 1d 20 00 00 00 00 	sbb    BYTE PTR [rip+0x20],0x0        # 201f97 <_GLOBAL_OFFSET_TABLE_+0x27>
	...
  201f87:	00 f6                	add    dh,dh
  201f89:	07                   	(bad)  
  201f8a:	00 00                	add    BYTE PTR [rax],al
  201f8c:	00 00                	add    BYTE PTR [rax],al
  201f8e:	00 00                	add    BYTE PTR [rax],al
  201f90:	06                   	(bad)  
  201f91:	08 00                	or     BYTE PTR [rax],al
  201f93:	00 00                	add    BYTE PTR [rax],al
  201f95:	00 00                	add    BYTE PTR [rax],al
  201f97:	00 16                	add    BYTE PTR [rsi],dl
  201f99:	08 00                	or     BYTE PTR [rax],al
  201f9b:	00 00                	add    BYTE PTR [rax],al
  201f9d:	00 00                	add    BYTE PTR [rax],al
  201f9f:	00 26                	add    BYTE PTR [rsi],ah
  201fa1:	08 00                	or     BYTE PTR [rax],al
  201fa3:	00 00                	add    BYTE PTR [rax],al
  201fa5:	00 00                	add    BYTE PTR [rax],al
  201fa7:	00 36                	add    BYTE PTR [rsi],dh
  201fa9:	08 00                	or     BYTE PTR [rax],al
  201fab:	00 00                	add    BYTE PTR [rax],al
  201fad:	00 00                	add    BYTE PTR [rax],al
  201faf:	00 46 08             	add    BYTE PTR [rsi+0x8],al
  201fb2:	00 00                	add    BYTE PTR [rax],al
  201fb4:	00 00                	add    BYTE PTR [rax],al
  201fb6:	00 00                	add    BYTE PTR [rax],al
  201fb8:	56                   	push   rsi
  201fb9:	08 00                	or     BYTE PTR [rax],al
  201fbb:	00 00                	add    BYTE PTR [rax],al
  201fbd:	00 00                	add    BYTE PTR [rax],al
  201fbf:	00 66 08             	add    BYTE PTR [rsi+0x8],ah
  201fc2:	00 00                	add    BYTE PTR [rax],al
  201fc4:	00 00                	add    BYTE PTR [rax],al
  201fc6:	00 00                	add    BYTE PTR [rax],al
  201fc8:	76 08                	jbe    201fd2 <_GLOBAL_OFFSET_TABLE_+0x62>
  201fca:	00 00                	add    BYTE PTR [rax],al
  201fcc:	00 00                	add    BYTE PTR [rax],al
  201fce:	00 00                	add    BYTE PTR [rax],al
  201fd0:	86 08                	xchg   BYTE PTR [rax],cl
	...

Disassembly of section .data:

0000000000202000 <__data_start>:
	...

0000000000202008 <__dso_handle>:
  202008:	08 20                	or     BYTE PTR [rax],ah
  20200a:	20 00                	and    BYTE PTR [rax],al
  20200c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

0000000000202020 <stdout@@GLIBC_2.2.5>:
	...

0000000000202030 <stdin@@GLIBC_2.2.5>:
	...

0000000000202040 <stderr@@GLIBC_2.2.5>:
	...

0000000000202048 <completed.7697>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x750>
   a:	74 75                	je     81 <_init-0x747>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 34 2e             	cs xor al,0x2e
  11:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627548 <_end+0x754254f8>
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	74 75                	je     8f <_init-0x739>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  22:	31 29                	xor    DWORD PTR [rcx],ebp
  24:	20 37                	and    BYTE PTR [rdi],dh
  26:	2e 34 2e             	cs xor al,0x2e
  29:	30 00                	xor    BYTE PTR [rax],al
