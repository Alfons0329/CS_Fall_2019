
election:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	ins    BYTE PTR es:[rdi],dx
 23a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 246:	78 2d                	js     275 <_init-0x67b>
 248:	78 38                	js     282 <_init-0x66e>
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
 283:	00 60 60             	add    BYTE PTR [rax+0x60],ah
 286:	13 f6                	adc    esi,esi
 288:	ab                   	stos   DWORD PTR es:[rdi],eax
 289:	0a d6                	or     dl,dh
 28b:	d4                   	(bad)  
 28c:	f1                   	icebp  
 28d:	24 3d                	and    al,0x3d
 28f:	81 cb c1 66 33 01    	or     ebx,0x13366c1
 295:	da                   	.byte 0xda
 296:	8f                   	.byte 0x8f
 297:	4c                   	rex.WR

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	03 00                	add    eax,DWORD PTR [rax]
 29a:	00 00                	add    BYTE PTR [rax],al
 29c:	11 00                	adc    DWORD PTR [rax],eax
 29e:	00 00                	add    BYTE PTR [rax],al
 2a0:	01 00                	add    DWORD PTR [rax],eax
 2a2:	00 00                	add    BYTE PTR [rax],al
 2a4:	06                   	(bad)  
 2a5:	00 00                	add    BYTE PTR [rax],al
 2a7:	00 00                	add    BYTE PTR [rax],al
 2a9:	01 20                	add    DWORD PTR [rax],esp
 2ab:	00 80 01 10 02 11    	add    BYTE PTR [rax+0x11021001],al
 2b1:	00 00                	add    BYTE PTR [rax],al
 2b3:	00 12                	add    BYTE PTR [rdx],dl
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
 2e0:	aa                   	stos   BYTE PTR es:[rdi],al
 2e1:	00 00                	add    BYTE PTR [rax],al
 2e3:	00 20                	add    BYTE PTR [rax],ah
	...
 2f5:	00 00                	add    BYTE PTR [rax],al
 2f7:	00 39                	add    BYTE PTR [rcx],bh
 2f9:	00 00                	add    BYTE PTR [rax],al
 2fb:	00 12                	add    BYTE PTR [rdx],dl
	...
 30d:	00 00                	add    BYTE PTR [rax],al
 30f:	00 0b                	add    BYTE PTR [rbx],cl
 311:	00 00                	add    BYTE PTR [rax],al
 313:	00 12                	add    BYTE PTR [rdx],dl
	...
 325:	00 00                	add    BYTE PTR [rax],al
 327:	00 1d 00 00 00 12    	add    BYTE PTR [rip+0x12000000],bl        # 1200032d <_end+0x11dfe105>
	...
 33d:	00 00                	add    BYTE PTR [rax],al
 33f:	00 22                	add    BYTE PTR [rdx],ah
 341:	00 00                	add    BYTE PTR [rax],al
 343:	00 12                	add    BYTE PTR [rdx],dl
	...
 355:	00 00                	add    BYTE PTR [rax],al
 357:	00 3f                	add    BYTE PTR [rdi],bh
 359:	00 00                	add    BYTE PTR [rax],al
 35b:	00 12                	add    BYTE PTR [rdx],dl
	...
 36d:	00 00                	add    BYTE PTR [rax],al
 36f:	00 60 00             	add    BYTE PTR [rax+0x0],ah
 372:	00 00                	add    BYTE PTR [rax],al
 374:	12 00                	adc    al,BYTE PTR [rax]
	...
 386:	00 00                	add    BYTE PTR [rax],al
 388:	46 00 00             	rex.RX add BYTE PTR [rax],r8b
 38b:	00 12                	add    BYTE PTR [rdx],dl
	...
 39d:	00 00                	add    BYTE PTR [rax],al
 39f:	00 82 00 00 00 12    	add    BYTE PTR [rdx+0x12000000],al
	...
 3b5:	00 00                	add    BYTE PTR [rax],al
 3b7:	00 4b 00             	add    BYTE PTR [rbx+0x0],cl
 3ba:	00 00                	add    BYTE PTR [rax],al
 3bc:	12 00                	adc    al,BYTE PTR [rax]
	...
 3ce:	00 00                	add    BYTE PTR [rax],al
 3d0:	16                   	(bad)  
 3d1:	00 00                	add    BYTE PTR [rax],al
 3d3:	00 12                	add    BYTE PTR [rdx],dl
	...
 3e5:	00 00                	add    BYTE PTR [rax],al
 3e7:	00 c6                	add    dh,al
 3e9:	00 00                	add    BYTE PTR [rax],al
 3eb:	00 20                	add    BYTE PTR [rax],ah
	...
 3fd:	00 00                	add    BYTE PTR [rax],al
 3ff:	00 7a 00             	add    BYTE PTR [rdx+0x0],bh
 402:	00 00                	add    BYTE PTR [rax],al
 404:	12 00                	adc    al,BYTE PTR [rax]
	...
 416:	00 00                	add    BYTE PTR [rax],al
 418:	66 00 00             	data16 add BYTE PTR [rax],al
 41b:	00 12                	add    BYTE PTR [rdx],dl
	...
 42d:	00 00                	add    BYTE PTR [rax],al
 42f:	00 d5                	add    ch,dl
 431:	00 00                	add    BYTE PTR [rax],al
 433:	00 20                	add    BYTE PTR [rax],ah
	...
 445:	00 00                	add    BYTE PTR [rax],al
 447:	00 6b 00             	add    BYTE PTR [rbx+0x0],ch
 44a:	00 00                	add    BYTE PTR [rax],al
 44c:	22 00                	and    al,BYTE PTR [rax]
	...
 45e:	00 00                	add    BYTE PTR [rax],al
 460:	52                   	push   rdx
 461:	00 00                	add    BYTE PTR [rax],al
 463:	00 11                	add    BYTE PTR [rcx],dl
 465:	00 18                	add    BYTE PTR [rax],bl
 467:	00 80 20 20 00 00    	add    BYTE PTR [rax+0x2020],al
 46d:	00 00                	add    BYTE PTR [rax],al
 46f:	00 08                	add    BYTE PTR [rax],cl
 471:	00 00                	add    BYTE PTR [rax],al
 473:	00 00                	add    BYTE PTR [rax],al
 475:	00 00                	add    BYTE PTR [rax],al
 477:	00 33                	add    BYTE PTR [rbx],dh
 479:	00 00                	add    BYTE PTR [rax],al
 47b:	00 11                	add    BYTE PTR [rcx],dl
 47d:	00 18                	add    BYTE PTR [rax],bl
 47f:	00 90 20 20 00 00    	add    BYTE PTR [rax+0x2020],dl
 485:	00 00                	add    BYTE PTR [rax],al
 487:	00 08                	add    BYTE PTR [rax],cl
 489:	00 00                	add    BYTE PTR [rax],al
 48b:	00 00                	add    BYTE PTR [rax],al
 48d:	00 00                	add    BYTE PTR [rax],al
 48f:	00 59 00             	add    BYTE PTR [rcx+0x0],bl
 492:	00 00                	add    BYTE PTR [rax],al
 494:	11 00                	adc    DWORD PTR [rax],eax
 496:	18 00                	sbb    BYTE PTR [rax],al
 498:	a0 20 20 00 00 00 00 	movabs al,ds:0x800000000002020
 49f:	00 08 
 4a1:	00 00                	add    BYTE PTR [rax],al
 4a3:	00 00                	add    BYTE PTR [rax],al
 4a5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

00000000000004a8 <.dynstr>:
 4a8:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 4ac:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 4ae:	73 6f                	jae    51f <_init-0x3d1>
 4b0:	2e 36 00 5f 5f       	cs add BYTE PTR ss:[rdi+0x5f],bl
 4b5:	72 65                	jb     51c <_init-0x3d4>
 4b7:	61                   	(bad)  
 4b8:	64 5f                	fs pop rdi
 4ba:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 4bd:	00 73 69             	add    BYTE PTR [rbx+0x69],dh
 4c0:	67 6e                	outs   dx,BYTE PTR ds:[esi]
 4c2:	61                   	(bad)  
 4c3:	6c                   	ins    BYTE PTR es:[rdi],dx
 4c4:	00 70 75             	add    BYTE PTR [rax+0x75],dh
 4c7:	74 73                	je     53c <_init-0x3b4>
 4c9:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 4cc:	73 74                	jae    542 <_init-0x3ae>
 4ce:	61                   	(bad)  
 4cf:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 4d2:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 4d5:	5f                   	pop    rdi
 4d6:	66 61                	data16 (bad) 
 4d8:	69 6c 00 73 74 64 69 	imul   ebp,DWORD PTR [rax+rax*1+0x73],0x6e696474
 4df:	6e 
 4e0:	00 5f 65             	add    BYTE PTR [rdi+0x65],bl
 4e3:	78 69                	js     54e <_init-0x3a2>
 4e5:	74 00                	je     4e7 <_init-0x409>
 4e7:	70 72                	jo     55b <_init-0x395>
 4e9:	69 6e 74 66 00 72 65 	imul   ebp,DWORD PTR [rsi+0x74],0x65720066
 4f0:	61                   	(bad)  
 4f1:	64 00 6d 65          	add    BYTE PTR fs:[rbp+0x65],ch
 4f5:	6d                   	ins    DWORD PTR es:[rdi],dx
 4f6:	63 6d 70             	movsxd ebp,DWORD PTR [rbp+0x70]
 4f9:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 4fc:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 4fe:	75 74                	jne    574 <_init-0x37c>
 500:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 503:	64 65 72 72          	fs gs jb 579 <_init-0x377>
 507:	00 61 6c             	add    BYTE PTR [rcx+0x6c],ah
 50a:	61                   	(bad)  
 50b:	72 6d                	jb     57a <_init-0x376>
 50d:	00 61 74             	add    BYTE PTR [rcx+0x74],ah
 510:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 511:	69 00 5f 5f 63 78    	imul   eax,DWORD PTR [rax],0x78635f5f
 517:	61                   	(bad)  
 518:	5f                   	pop    rdi
 519:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 51f:	7a 65                	jp     586 <_init-0x36a>
 521:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
 524:	74 76                	je     59c <_init-0x354>
 526:	62                   	(bad)  
 527:	75 66                	jne    58f <_init-0x361>
 529:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 52c:	6c                   	ins    BYTE PTR es:[rdi],dx
 52d:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 534:	72 74                	jb     5aa <_init-0x346>
 536:	5f                   	pop    rdi
 537:	6d                   	ins    DWORD PTR es:[rdi],dx
 538:	61                   	(bad)  
 539:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
 540:	43 5f                	rex.XB pop r15
 542:	32 2e                	xor    ch,BYTE PTR [rsi]
 544:	34 00                	xor    al,0x0
 546:	47                   	rex.RXB
 547:	4c                   	rex.WR
 548:	49                   	rex.WB
 549:	42                   	rex.X
 54a:	43 5f                	rex.XB pop r15
 54c:	32 2e                	xor    ch,BYTE PTR [rsi]
 54e:	32 2e                	xor    ch,BYTE PTR [rsi]
 550:	35 00 5f 49 54       	xor    eax,0x54495f00
 555:	4d 5f                	rex.WRB pop r15
 557:	64 65 72 65          	fs gs jb 5c0 <_init-0x330>
 55b:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 562:	4d 
 563:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 565:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 566:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 567:	65 54                	gs push rsp
 569:	61                   	(bad)  
 56a:	62                   	(bad)  
 56b:	6c                   	ins    BYTE PTR es:[rdi],dx
 56c:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 570:	67 6d                	ins    DWORD PTR es:[edi],dx
 572:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 573:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 574:	5f                   	pop    rdi
 575:	73 74                	jae    5eb <_init-0x305>
 577:	61                   	(bad)  
 578:	72 74                	jb     5ee <_init-0x302>
 57a:	5f                   	pop    rdi
 57b:	5f                   	pop    rdi
 57c:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 57f:	54                   	push   rsp
 580:	4d 5f                	rex.WRB pop r15
 582:	72 65                	jb     5e9 <_init-0x307>
 584:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 58b:	4d 
 58c:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 58e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 58f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 590:	65 54                	gs push rsp
 592:	61                   	(bad)  
 593:	62                   	.byte 0x62
 594:	6c                   	ins    BYTE PTR es:[rdi],dx
 595:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000598 <.gnu.version>:
 598:	00 00                	add    BYTE PTR [rax],al
 59a:	00 00                	add    BYTE PTR [rax],al
 59c:	02 00                	add    al,BYTE PTR [rax]
 59e:	03 00                	add    eax,DWORD PTR [rax]
 5a0:	02 00                	add    al,BYTE PTR [rax]
 5a2:	03 00                	add    eax,DWORD PTR [rax]
 5a4:	02 00                	add    al,BYTE PTR [rax]
 5a6:	02 00                	add    al,BYTE PTR [rax]
 5a8:	02 00                	add    al,BYTE PTR [rax]
 5aa:	02 00                	add    al,BYTE PTR [rax]
 5ac:	02 00                	add    al,BYTE PTR [rax]
 5ae:	02 00                	add    al,BYTE PTR [rax]
 5b0:	00 00                	add    BYTE PTR [rax],al
 5b2:	02 00                	add    al,BYTE PTR [rax]
 5b4:	02 00                	add    al,BYTE PTR [rax]
 5b6:	00 00                	add    BYTE PTR [rax],al
 5b8:	02 00                	add    al,BYTE PTR [rax]
 5ba:	02 00                	add    al,BYTE PTR [rax]
 5bc:	02 00                	add    al,BYTE PTR [rax]
 5be:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

00000000000005c0 <.gnu.version_r>:
 5c0:	01 00                	add    DWORD PTR [rax],eax
 5c2:	02 00                	add    al,BYTE PTR [rax]
 5c4:	01 00                	add    DWORD PTR [rax],eax
 5c6:	00 00                	add    BYTE PTR [rax],al
 5c8:	10 00                	adc    BYTE PTR [rax],al
 5ca:	00 00                	add    BYTE PTR [rax],al
 5cc:	00 00                	add    BYTE PTR [rax],al
 5ce:	00 00                	add    BYTE PTR [rax],al
 5d0:	14 69                	adc    al,0x69
 5d2:	69 0d 00 00 03 00 94 	imul   ecx,DWORD PTR [rip+0x30000],0x94        # 305dc <__FRAME_END__+0x2ef60>
 5d9:	00 00 00 
 5dc:	10 00                	adc    BYTE PTR [rax],al
 5de:	00 00                	add    BYTE PTR [rax],al
 5e0:	75 1a                	jne    5fc <_init-0x2f4>
 5e2:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 5e8:	9e                   	sahf   
 5e9:	00 00                	add    BYTE PTR [rax],al
 5eb:	00 00                	add    BYTE PTR [rax],al
 5ed:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

00000000000005f0 <.rela.dyn>:
 5f0:	68 1d 20 00 00       	push   0x201d
 5f5:	00 00                	add    BYTE PTR [rax],al
 5f7:	00 08                	add    BYTE PTR [rax],cl
 5f9:	00 00                	add    BYTE PTR [rax],al
 5fb:	00 00                	add    BYTE PTR [rax],al
 5fd:	00 00                	add    BYTE PTR [rax],al
 5ff:	00 e0                	add    al,ah
 601:	0a 00                	or     al,BYTE PTR [rax]
 603:	00 00                	add    BYTE PTR [rax],al
 605:	00 00                	add    BYTE PTR [rax],al
 607:	00 70 1d             	add    BYTE PTR [rax+0x1d],dh
 60a:	20 00                	and    BYTE PTR [rax],al
 60c:	00 00                	add    BYTE PTR [rax],al
 60e:	00 00                	add    BYTE PTR [rax],al
 610:	08 00                	or     BYTE PTR [rax],al
 612:	00 00                	add    BYTE PTR [rax],al
 614:	00 00                	add    BYTE PTR [rax],al
 616:	00 00                	add    BYTE PTR [rax],al
 618:	a0 0a 00 00 00 00 00 	movabs al,ds:0x80000000000000a
 61f:	00 08 
 621:	20 20                	and    BYTE PTR [rax],ah
 623:	00 00                	add    BYTE PTR [rax],al
 625:	00 00                	add    BYTE PTR [rax],al
 627:	00 08                	add    BYTE PTR [rax],cl
 629:	00 00                	add    BYTE PTR [rax],al
 62b:	00 00                	add    BYTE PTR [rax],al
 62d:	00 00                	add    BYTE PTR [rax],al
 62f:	00 08                	add    BYTE PTR [rax],cl
 631:	20 20                	and    BYTE PTR [rax],ah
 633:	00 00                	add    BYTE PTR [rax],al
 635:	00 00                	add    BYTE PTR [rax],al
 637:	00 20                	add    BYTE PTR [rax],ah
 639:	20 20                	and    BYTE PTR [rax],ah
 63b:	00 00                	add    BYTE PTR [rax],al
 63d:	00 00                	add    BYTE PTR [rax],al
 63f:	00 08                	add    BYTE PTR [rax],cl
 641:	00 00                	add    BYTE PTR [rax],al
 643:	00 00                	add    BYTE PTR [rax],al
 645:	00 00                	add    BYTE PTR [rax],al
 647:	00 c8                	add    al,cl
 649:	11 00                	adc    DWORD PTR [rax],eax
 64b:	00 00                	add    BYTE PTR [rax],al
 64d:	00 00                	add    BYTE PTR [rax],al
 64f:	00 28                	add    BYTE PTR [rax],ch
 651:	20 20                	and    BYTE PTR [rax],ah
 653:	00 00                	add    BYTE PTR [rax],al
 655:	00 00                	add    BYTE PTR [rax],al
 657:	00 08                	add    BYTE PTR [rax],cl
 659:	00 00                	add    BYTE PTR [rax],al
 65b:	00 00                	add    BYTE PTR [rax],al
 65d:	00 00                	add    BYTE PTR [rax],al
 65f:	00 d0                	add    al,dl
 661:	11 00                	adc    DWORD PTR [rax],eax
 663:	00 00                	add    BYTE PTR [rax],al
 665:	00 00                	add    BYTE PTR [rax],al
 667:	00 30                	add    BYTE PTR [rax],dh
 669:	20 20                	and    BYTE PTR [rax],ah
 66b:	00 00                	add    BYTE PTR [rax],al
 66d:	00 00                	add    BYTE PTR [rax],al
 66f:	00 08                	add    BYTE PTR [rax],cl
 671:	00 00                	add    BYTE PTR [rax],al
 673:	00 00                	add    BYTE PTR [rax],al
 675:	00 00                	add    BYTE PTR [rax],al
 677:	00 d9                	add    cl,bl
 679:	11 00                	adc    DWORD PTR [rax],eax
 67b:	00 00                	add    BYTE PTR [rax],al
 67d:	00 00                	add    BYTE PTR [rax],al
 67f:	00 38                	add    BYTE PTR [rax],bh
 681:	20 20                	and    BYTE PTR [rax],ah
 683:	00 00                	add    BYTE PTR [rax],al
 685:	00 00                	add    BYTE PTR [rax],al
 687:	00 08                	add    BYTE PTR [rax],cl
 689:	00 00                	add    BYTE PTR [rax],al
 68b:	00 00                	add    BYTE PTR [rax],al
 68d:	00 00                	add    BYTE PTR [rax],al
 68f:	00 e6                	add    dh,ah
 691:	11 00                	adc    DWORD PTR [rax],eax
 693:	00 00                	add    BYTE PTR [rax],al
 695:	00 00                	add    BYTE PTR [rax],al
 697:	00 40 20             	add    BYTE PTR [rax+0x20],al
 69a:	20 00                	and    BYTE PTR [rax],al
 69c:	00 00                	add    BYTE PTR [rax],al
 69e:	00 00                	add    BYTE PTR [rax],al
 6a0:	08 00                	or     BYTE PTR [rax],al
 6a2:	00 00                	add    BYTE PTR [rax],al
 6a4:	00 00                	add    BYTE PTR [rax],al
 6a6:	00 00                	add    BYTE PTR [rax],al
 6a8:	f1                   	icebp  
 6a9:	11 00                	adc    DWORD PTR [rax],eax
 6ab:	00 00                	add    BYTE PTR [rax],al
 6ad:	00 00                	add    BYTE PTR [rax],al
 6af:	00 48 20             	add    BYTE PTR [rax+0x20],cl
 6b2:	20 00                	and    BYTE PTR [rax],al
 6b4:	00 00                	add    BYTE PTR [rax],al
 6b6:	00 00                	add    BYTE PTR [rax],al
 6b8:	08 00                	or     BYTE PTR [rax],al
 6ba:	00 00                	add    BYTE PTR [rax],al
 6bc:	00 00                	add    BYTE PTR [rax],al
 6be:	00 00                	add    BYTE PTR [rax],al
 6c0:	f7 11                	not    DWORD PTR [rcx]
 6c2:	00 00                	add    BYTE PTR [rax],al
 6c4:	00 00                	add    BYTE PTR [rax],al
 6c6:	00 00                	add    BYTE PTR [rax],al
 6c8:	50                   	push   rax
 6c9:	20 20                	and    BYTE PTR [rax],ah
 6cb:	00 00                	add    BYTE PTR [rax],al
 6cd:	00 00                	add    BYTE PTR [rax],al
 6cf:	00 08                	add    BYTE PTR [rax],cl
 6d1:	00 00                	add    BYTE PTR [rax],al
 6d3:	00 00                	add    BYTE PTR [rax],al
 6d5:	00 00                	add    BYTE PTR [rax],al
 6d7:	00 fd                	add    ch,bh
 6d9:	11 00                	adc    DWORD PTR [rax],eax
 6db:	00 00                	add    BYTE PTR [rax],al
 6dd:	00 00                	add    BYTE PTR [rax],al
 6df:	00 58 20             	add    BYTE PTR [rax+0x20],bl
 6e2:	20 00                	and    BYTE PTR [rax],al
 6e4:	00 00                	add    BYTE PTR [rax],al
 6e6:	00 00                	add    BYTE PTR [rax],al
 6e8:	08 00                	or     BYTE PTR [rax],al
 6ea:	00 00                	add    BYTE PTR [rax],al
 6ec:	00 00                	add    BYTE PTR [rax],al
 6ee:	00 00                	add    BYTE PTR [rax],al
 6f0:	06                   	(bad)  
 6f1:	12 00                	adc    al,BYTE PTR [rax]
 6f3:	00 00                	add    BYTE PTR [rax],al
 6f5:	00 00                	add    BYTE PTR [rax],al
 6f7:	00 60 20             	add    BYTE PTR [rax+0x20],ah
 6fa:	20 00                	and    BYTE PTR [rax],al
 6fc:	00 00                	add    BYTE PTR [rax],al
 6fe:	00 00                	add    BYTE PTR [rax],al
 700:	08 00                	or     BYTE PTR [rax],al
 702:	00 00                	add    BYTE PTR [rax],al
 704:	00 00                	add    BYTE PTR [rax],al
 706:	00 00                	add    BYTE PTR [rax],al
 708:	10 12                	adc    BYTE PTR [rdx],dl
 70a:	00 00                	add    BYTE PTR [rax],al
 70c:	00 00                	add    BYTE PTR [rax],al
 70e:	00 00                	add    BYTE PTR [rax],al
 710:	68 20 20 00 00       	push   0x2020
 715:	00 00                	add    BYTE PTR [rax],al
 717:	00 08                	add    BYTE PTR [rax],cl
 719:	00 00                	add    BYTE PTR [rax],al
 71b:	00 00                	add    BYTE PTR [rax],al
 71d:	00 00                	add    BYTE PTR [rax],al
 71f:	00 1a                	add    BYTE PTR [rdx],bl
 721:	12 00                	adc    al,BYTE PTR [rax]
 723:	00 00                	add    BYTE PTR [rax],al
 725:	00 00                	add    BYTE PTR [rax],al
 727:	00 d8                	add    al,bl
 729:	1f                   	(bad)  
 72a:	20 00                	and    BYTE PTR [rax],al
 72c:	00 00                	add    BYTE PTR [rax],al
 72e:	00 00                	add    BYTE PTR [rax],al
 730:	06                   	(bad)  
 731:	00 00                	add    BYTE PTR [rax],al
 733:	00 01                	add    BYTE PTR [rcx],al
	...
 73d:	00 00                	add    BYTE PTR [rax],al
 73f:	00 e0                	add    al,ah
 741:	1f                   	(bad)  
 742:	20 00                	and    BYTE PTR [rax],al
 744:	00 00                	add    BYTE PTR [rax],al
 746:	00 00                	add    BYTE PTR [rax],al
 748:	06                   	(bad)  
 749:	00 00                	add    BYTE PTR [rax],al
 74b:	00 09                	add    BYTE PTR [rcx],cl
	...
 755:	00 00                	add    BYTE PTR [rax],al
 757:	00 e8                	add    al,ch
 759:	1f                   	(bad)  
 75a:	20 00                	and    BYTE PTR [rax],al
 75c:	00 00                	add    BYTE PTR [rax],al
 75e:	00 00                	add    BYTE PTR [rax],al
 760:	06                   	(bad)  
 761:	00 00                	add    BYTE PTR [rax],al
 763:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...
 76e:	00 00                	add    BYTE PTR [rax],al
 770:	f0 1f                	lock (bad) 
 772:	20 00                	and    BYTE PTR [rax],al
 774:	00 00                	add    BYTE PTR [rax],al
 776:	00 00                	add    BYTE PTR [rax],al
 778:	06                   	(bad)  
 779:	00 00                	add    BYTE PTR [rax],al
 77b:	00 0f                	add    BYTE PTR [rdi],cl
	...
 785:	00 00                	add    BYTE PTR [rax],al
 787:	00 f8                	add    al,bh
 789:	1f                   	(bad)  
 78a:	20 00                	and    BYTE PTR [rax],al
 78c:	00 00                	add    BYTE PTR [rax],al
 78e:	00 00                	add    BYTE PTR [rax],al
 790:	06                   	(bad)  
 791:	00 00                	add    BYTE PTR [rax],al
 793:	00 10                	add    BYTE PTR [rax],dl
	...
 79d:	00 00                	add    BYTE PTR [rax],al
 79f:	00 80 20 20 00 00    	add    BYTE PTR [rax+0x2020],al
 7a5:	00 00                	add    BYTE PTR [rax],al
 7a7:	00 05 00 00 00 11    	add    BYTE PTR [rip+0x11000000],al        # 110007ad <_end+0x10dfe585>
	...
 7b5:	00 00                	add    BYTE PTR [rax],al
 7b7:	00 90 20 20 00 00    	add    BYTE PTR [rax+0x2020],dl
 7bd:	00 00                	add    BYTE PTR [rax],al
 7bf:	00 05 00 00 00 12    	add    BYTE PTR [rip+0x12000000],al        # 120007c5 <_end+0x11dfe59d>
	...
 7cd:	00 00                	add    BYTE PTR [rax],al
 7cf:	00 a0 20 20 00 00    	add    BYTE PTR [rax+0x2020],ah
 7d5:	00 00                	add    BYTE PTR [rax],al
 7d7:	00 05 00 00 00 13    	add    BYTE PTR [rip+0x13000000],al        # 130007dd <_end+0x12dfe5b5>
	...

Disassembly of section .rela.plt:

00000000000007e8 <.rela.plt>:
 7e8:	80 1f 20             	sbb    BYTE PTR [rdi],0x20
 7eb:	00 00                	add    BYTE PTR [rax],al
 7ed:	00 00                	add    BYTE PTR [rax],al
 7ef:	00 07                	add    BYTE PTR [rdi],al
 7f1:	00 00                	add    BYTE PTR [rax],al
 7f3:	00 02                	add    BYTE PTR [rdx],al
	...
 7fd:	00 00                	add    BYTE PTR [rax],al
 7ff:	00 88 1f 20 00 00    	add    BYTE PTR [rax+0x201f],cl
 805:	00 00                	add    BYTE PTR [rax],al
 807:	00 07                	add    BYTE PTR [rdi],al
 809:	00 00                	add    BYTE PTR [rax],al
 80b:	00 03                	add    BYTE PTR [rbx],al
	...
 815:	00 00                	add    BYTE PTR [rax],al
 817:	00 90 1f 20 00 00    	add    BYTE PTR [rax+0x201f],dl
 81d:	00 00                	add    BYTE PTR [rax],al
 81f:	00 07                	add    BYTE PTR [rdi],al
 821:	00 00                	add    BYTE PTR [rax],al
 823:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 82e:	00 00                	add    BYTE PTR [rax],al
 830:	98                   	cwde   
 831:	1f                   	(bad)  
 832:	20 00                	and    BYTE PTR [rax],al
 834:	00 00                	add    BYTE PTR [rax],al
 836:	00 00                	add    BYTE PTR [rax],al
 838:	07                   	(bad)  
 839:	00 00                	add    BYTE PTR [rax],al
 83b:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 841 <_init-0xaf>
 841:	00 00                	add    BYTE PTR [rax],al
 843:	00 00                	add    BYTE PTR [rax],al
 845:	00 00                	add    BYTE PTR [rax],al
 847:	00 a0 1f 20 00 00    	add    BYTE PTR [rax+0x201f],ah
 84d:	00 00                	add    BYTE PTR [rax],al
 84f:	00 07                	add    BYTE PTR [rdi],al
 851:	00 00                	add    BYTE PTR [rax],al
 853:	00 06                	add    BYTE PTR [rsi],al
	...
 85d:	00 00                	add    BYTE PTR [rax],al
 85f:	00 a8 1f 20 00 00    	add    BYTE PTR [rax+0x201f],ch
 865:	00 00                	add    BYTE PTR [rax],al
 867:	00 07                	add    BYTE PTR [rdi],al
 869:	00 00                	add    BYTE PTR [rax],al
 86b:	00 07                	add    BYTE PTR [rdi],al
	...
 875:	00 00                	add    BYTE PTR [rax],al
 877:	00 b0 1f 20 00 00    	add    BYTE PTR [rax+0x201f],dh
 87d:	00 00                	add    BYTE PTR [rax],al
 87f:	00 07                	add    BYTE PTR [rdi],al
 881:	00 00                	add    BYTE PTR [rax],al
 883:	00 08                	add    BYTE PTR [rax],cl
	...
 88d:	00 00                	add    BYTE PTR [rax],al
 88f:	00 b8 1f 20 00 00    	add    BYTE PTR [rax+0x201f],bh
 895:	00 00                	add    BYTE PTR [rax],al
 897:	00 07                	add    BYTE PTR [rdi],al
 899:	00 00                	add    BYTE PTR [rax],al
 89b:	00 0a                	add    BYTE PTR [rdx],cl
	...
 8a5:	00 00                	add    BYTE PTR [rax],al
 8a7:	00 c0                	add    al,al
 8a9:	1f                   	(bad)  
 8aa:	20 00                	and    BYTE PTR [rax],al
 8ac:	00 00                	add    BYTE PTR [rax],al
 8ae:	00 00                	add    BYTE PTR [rax],al
 8b0:	07                   	(bad)  
 8b1:	00 00                	add    BYTE PTR [rax],al
 8b3:	00 0b                	add    BYTE PTR [rbx],cl
	...
 8bd:	00 00                	add    BYTE PTR [rax],al
 8bf:	00 c8                	add    al,cl
 8c1:	1f                   	(bad)  
 8c2:	20 00                	and    BYTE PTR [rax],al
 8c4:	00 00                	add    BYTE PTR [rax],al
 8c6:	00 00                	add    BYTE PTR [rax],al
 8c8:	07                   	(bad)  
 8c9:	00 00                	add    BYTE PTR [rax],al
 8cb:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 8d1 <_init-0x1f>
 8d1:	00 00                	add    BYTE PTR [rax],al
 8d3:	00 00                	add    BYTE PTR [rax],al
 8d5:	00 00                	add    BYTE PTR [rax],al
 8d7:	00 d0                	add    al,dl
 8d9:	1f                   	(bad)  
 8da:	20 00                	and    BYTE PTR [rax],al
 8dc:	00 00                	add    BYTE PTR [rax],al
 8de:	00 00                	add    BYTE PTR [rax],al
 8e0:	07                   	(bad)  
 8e1:	00 00                	add    BYTE PTR [rax],al
 8e3:	00 0e                	add    BYTE PTR [rsi],cl
	...

Disassembly of section .init:

00000000000008f0 <_init>:
 8f0:	48 83 ec 08          	sub    rsp,0x8
 8f4:	48 8b 05 ed 16 20 00 	mov    rax,QWORD PTR [rip+0x2016ed]        # 201fe8 <__gmon_start__>
 8fb:	48 85 c0             	test   rax,rax
 8fe:	74 02                	je     902 <_init+0x12>
 900:	ff d0                	call   rax
 902:	48 83 c4 08          	add    rsp,0x8
 906:	c3                   	ret    

Disassembly of section .plt:

0000000000000910 <.plt>:
 910:	ff 35 5a 16 20 00    	push   QWORD PTR [rip+0x20165a]        # 201f70 <_GLOBAL_OFFSET_TABLE_+0x8>
 916:	ff 25 5c 16 20 00    	jmp    QWORD PTR [rip+0x20165c]        # 201f78 <_GLOBAL_OFFSET_TABLE_+0x10>
 91c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000920 <_exit@plt>:
 920:	ff 25 5a 16 20 00    	jmp    QWORD PTR [rip+0x20165a]        # 201f80 <_exit@GLIBC_2.2.5>
 926:	68 00 00 00 00       	push   0x0
 92b:	e9 e0 ff ff ff       	jmp    910 <.plt>

0000000000000930 <__read_chk@plt>:
 930:	ff 25 52 16 20 00    	jmp    QWORD PTR [rip+0x201652]        # 201f88 <__read_chk@GLIBC_2.4>
 936:	68 01 00 00 00       	push   0x1
 93b:	e9 d0 ff ff ff       	jmp    910 <.plt>

0000000000000940 <puts@plt>:
 940:	ff 25 4a 16 20 00    	jmp    QWORD PTR [rip+0x20164a]        # 201f90 <puts@GLIBC_2.2.5>
 946:	68 02 00 00 00       	push   0x2
 94b:	e9 c0 ff ff ff       	jmp    910 <.plt>

0000000000000950 <__stack_chk_fail@plt>:
 950:	ff 25 42 16 20 00    	jmp    QWORD PTR [rip+0x201642]        # 201f98 <__stack_chk_fail@GLIBC_2.4>
 956:	68 03 00 00 00       	push   0x3
 95b:	e9 b0 ff ff ff       	jmp    910 <.plt>

0000000000000960 <printf@plt>:
 960:	ff 25 3a 16 20 00    	jmp    QWORD PTR [rip+0x20163a]        # 201fa0 <printf@GLIBC_2.2.5>
 966:	68 04 00 00 00       	push   0x4
 96b:	e9 a0 ff ff ff       	jmp    910 <.plt>

0000000000000970 <alarm@plt>:
 970:	ff 25 32 16 20 00    	jmp    QWORD PTR [rip+0x201632]        # 201fa8 <alarm@GLIBC_2.2.5>
 976:	68 05 00 00 00       	push   0x5
 97b:	e9 90 ff ff ff       	jmp    910 <.plt>

0000000000000980 <read@plt>:
 980:	ff 25 2a 16 20 00    	jmp    QWORD PTR [rip+0x20162a]        # 201fb0 <read@GLIBC_2.2.5>
 986:	68 06 00 00 00       	push   0x6
 98b:	e9 80 ff ff ff       	jmp    910 <.plt>

0000000000000990 <memcmp@plt>:
 990:	ff 25 22 16 20 00    	jmp    QWORD PTR [rip+0x201622]        # 201fb8 <memcmp@GLIBC_2.2.5>
 996:	68 07 00 00 00       	push   0x7
 99b:	e9 70 ff ff ff       	jmp    910 <.plt>

00000000000009a0 <signal@plt>:
 9a0:	ff 25 1a 16 20 00    	jmp    QWORD PTR [rip+0x20161a]        # 201fc0 <signal@GLIBC_2.2.5>
 9a6:	68 08 00 00 00       	push   0x8
 9ab:	e9 60 ff ff ff       	jmp    910 <.plt>

00000000000009b0 <setvbuf@plt>:
 9b0:	ff 25 12 16 20 00    	jmp    QWORD PTR [rip+0x201612]        # 201fc8 <setvbuf@GLIBC_2.2.5>
 9b6:	68 09 00 00 00       	push   0x9
 9bb:	e9 50 ff ff ff       	jmp    910 <.plt>

00000000000009c0 <atoi@plt>:
 9c0:	ff 25 0a 16 20 00    	jmp    QWORD PTR [rip+0x20160a]        # 201fd0 <atoi@GLIBC_2.2.5>
 9c6:	68 0a 00 00 00       	push   0xa
 9cb:	e9 40 ff ff ff       	jmp    910 <.plt>

Disassembly of section .plt.got:

00000000000009d0 <__cxa_finalize@plt>:
 9d0:	ff 25 22 16 20 00    	jmp    QWORD PTR [rip+0x201622]        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9d6:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000009e0 <_start>:
     9e0:	31 ed                	xor    ebp,ebp
     9e2:	49 89 d1             	mov    r9,rdx
     9e5:	5e                   	pop    rsi
     9e6:	48 89 e2             	mov    rdx,rsp
     9e9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
     9ed:	50                   	push   rax
     9ee:	54                   	push   rsp
     9ef:	4c 8d 05 ba 07 00 00 	lea    r8,[rip+0x7ba]        # 11b0 <__libc_csu_fini>
     9f6:	48 8d 0d 43 07 00 00 	lea    rcx,[rip+0x743]        # 1140 <__libc_csu_init>
     9fd:	48 8d 3d f7 05 00 00 	lea    rdi,[rip+0x5f7]        # ffb <main>
     a04:	ff 15 d6 15 20 00    	call   QWORD PTR [rip+0x2015d6]        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     a0a:	f4                   	hlt    
     a0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000a10 <deregister_tm_clones>:
     a10:	48 8d 3d 59 16 20 00 	lea    rdi,[rip+0x201659]        # 202070 <__TMC_END__>
     a17:	55                   	push   rbp
     a18:	48 8d 05 51 16 20 00 	lea    rax,[rip+0x201651]        # 202070 <__TMC_END__>
     a1f:	48 39 f8             	cmp    rax,rdi
     a22:	48 89 e5             	mov    rbp,rsp
     a25:	74 19                	je     a40 <deregister_tm_clones+0x30>
     a27:	48 8b 05 aa 15 20 00 	mov    rax,QWORD PTR [rip+0x2015aa]        # 201fd8 <_ITM_deregisterTMCloneTable>
     a2e:	48 85 c0             	test   rax,rax
     a31:	74 0d                	je     a40 <deregister_tm_clones+0x30>
     a33:	5d                   	pop    rbp
     a34:	ff e0                	jmp    rax
     a36:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a3d:	00 00 00 
     a40:	5d                   	pop    rbp
     a41:	c3                   	ret    
     a42:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     a46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a4d:	00 00 00 

0000000000000a50 <register_tm_clones>:
     a50:	48 8d 3d 19 16 20 00 	lea    rdi,[rip+0x201619]        # 202070 <__TMC_END__>
     a57:	48 8d 35 12 16 20 00 	lea    rsi,[rip+0x201612]        # 202070 <__TMC_END__>
     a5e:	55                   	push   rbp
     a5f:	48 29 fe             	sub    rsi,rdi
     a62:	48 89 e5             	mov    rbp,rsp
     a65:	48 c1 fe 03          	sar    rsi,0x3
     a69:	48 89 f0             	mov    rax,rsi
     a6c:	48 c1 e8 3f          	shr    rax,0x3f
     a70:	48 01 c6             	add    rsi,rax
     a73:	48 d1 fe             	sar    rsi,1
     a76:	74 18                	je     a90 <register_tm_clones+0x40>
     a78:	48 8b 05 71 15 20 00 	mov    rax,QWORD PTR [rip+0x201571]        # 201ff0 <_ITM_registerTMCloneTable>
     a7f:	48 85 c0             	test   rax,rax
     a82:	74 0c                	je     a90 <register_tm_clones+0x40>
     a84:	5d                   	pop    rbp
     a85:	ff e0                	jmp    rax
     a87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     a8e:	00 00 
     a90:	5d                   	pop    rbp
     a91:	c3                   	ret    
     a92:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     a96:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     a9d:	00 00 00 

0000000000000aa0 <__do_global_dtors_aux>:
     aa0:	80 3d 01 16 20 00 00 	cmp    BYTE PTR [rip+0x201601],0x0        # 2020a8 <completed.7697>
     aa7:	75 2f                	jne    ad8 <__do_global_dtors_aux+0x38>
     aa9:	48 83 3d 47 15 20 00 	cmp    QWORD PTR [rip+0x201547],0x0        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     ab0:	00 
     ab1:	55                   	push   rbp
     ab2:	48 89 e5             	mov    rbp,rsp
     ab5:	74 0c                	je     ac3 <__do_global_dtors_aux+0x23>
     ab7:	48 8b 3d 4a 15 20 00 	mov    rdi,QWORD PTR [rip+0x20154a]        # 202008 <__dso_handle>
     abe:	e8 0d ff ff ff       	call   9d0 <__cxa_finalize@plt>
     ac3:	e8 48 ff ff ff       	call   a10 <deregister_tm_clones>
     ac8:	c6 05 d9 15 20 00 01 	mov    BYTE PTR [rip+0x2015d9],0x1        # 2020a8 <completed.7697>
     acf:	5d                   	pop    rbp
     ad0:	c3                   	ret    
     ad1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
     ad8:	f3 c3                	repz ret 
     ada:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000ae0 <frame_dummy>:
     ae0:	55                   	push   rbp
     ae1:	48 89 e5             	mov    rbp,rsp
     ae4:	5d                   	pop    rbp
     ae5:	e9 66 ff ff ff       	jmp    a50 <register_tm_clones>

0000000000000aea <handler>:
     aea:	55                   	push   rbp
     aeb:	48 89 e5             	mov    rbp,rsp
     aee:	48 83 ec 20          	sub    rsp,0x20
     af2:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
     af5:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
     afc:	eb 28                	jmp    b26 <handler+0x3c>
     afe:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
     b01:	48 98                	cdqe   
     b03:	48 c1 e0 04          	shl    rax,0x4
     b07:	48 89 c2             	mov    rdx,rax
     b0a:	48 8d 05 b7 15 20 00 	lea    rax,[rip+0x2015b7]        # 2020c8 <candidates+0x8>
     b11:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     b15:	0f b6 55 f7          	movzx  edx,BYTE PTR [rbp-0x9]
     b19:	38 45 f7             	cmp    BYTE PTR [rbp-0x9],al
     b1c:	0f 43 c2             	cmovae eax,edx
     b1f:	88 45 f7             	mov    BYTE PTR [rbp-0x9],al
     b22:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
     b26:	83 7d f8 09          	cmp    DWORD PTR [rbp-0x8],0x9
     b2a:	7e d2                	jle    afe <handler+0x14>
     b2c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
     b33:	eb 4d                	jmp    b82 <handler+0x98>
     b35:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b38:	48 98                	cdqe   
     b3a:	48 c1 e0 04          	shl    rax,0x4
     b3e:	48 89 c2             	mov    rdx,rax
     b41:	48 8d 05 80 15 20 00 	lea    rax,[rip+0x201580]        # 2020c8 <candidates+0x8>
     b48:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     b4c:	38 45 f7             	cmp    BYTE PTR [rbp-0x9],al
     b4f:	75 2d                	jne    b7e <handler+0x94>
     b51:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     b54:	48 98                	cdqe   
     b56:	48 c1 e0 04          	shl    rax,0x4
     b5a:	48 89 c2             	mov    rdx,rax
     b5d:	48 8d 05 5c 15 20 00 	lea    rax,[rip+0x20155c]        # 2020c0 <candidates>
     b64:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
     b68:	48 89 c6             	mov    rsi,rax
     b6b:	48 8d 3d ae 06 00 00 	lea    rdi,[rip+0x6ae]        # 1220 <_IO_stdin_used+0x60>
     b72:	b8 00 00 00 00       	mov    eax,0x0
     b77:	e8 e4 fd ff ff       	call   960 <printf@plt>
     b7c:	eb 0a                	jmp    b88 <handler+0x9e>
     b7e:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
     b82:	83 7d fc 09          	cmp    DWORD PTR [rbp-0x4],0x9
     b86:	7e ad                	jle    b35 <handler+0x4b>
     b88:	bf 01 00 00 00       	mov    edi,0x1
     b8d:	e8 8e fd ff ff       	call   920 <_exit@plt>

0000000000000b92 <read_int>:
     b92:	55                   	push   rbp
     b93:	48 89 e5             	mov    rbp,rsp
     b96:	48 83 ec 20          	sub    rsp,0x20
     b9a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     ba1:	00 00 
     ba3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     ba7:	31 c0                	xor    eax,eax
     ba9:	48 8d 45 e0          	lea    rax,[rbp-0x20]
     bad:	b9 10 00 00 00       	mov    ecx,0x10
     bb2:	ba 0f 00 00 00       	mov    edx,0xf
     bb7:	48 89 c6             	mov    rsi,rax
     bba:	bf 00 00 00 00       	mov    edi,0x0
     bbf:	b8 00 00 00 00       	mov    eax,0x0
     bc4:	e8 67 fd ff ff       	call   930 <__read_chk@plt>
     bc9:	48 8d 45 e0          	lea    rax,[rbp-0x20]
     bcd:	48 89 c7             	mov    rdi,rax
     bd0:	e8 eb fd ff ff       	call   9c0 <atoi@plt>
     bd5:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
     bd9:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
     be0:	00 00 
     be2:	74 05                	je     be9 <read_int+0x57>
     be4:	e8 67 fd ff ff       	call   950 <__stack_chk_fail@plt>
     be9:	c9                   	leave  
     bea:	c3                   	ret    

0000000000000beb <init>:
     beb:	55                   	push   rbp
     bec:	48 89 e5             	mov    rbp,rsp
     bef:	48 8b 05 8a 14 20 00 	mov    rax,QWORD PTR [rip+0x20148a]        # 202080 <stdout@@GLIBC_2.2.5>
     bf6:	b9 00 00 00 00       	mov    ecx,0x0
     bfb:	ba 02 00 00 00       	mov    edx,0x2
     c00:	be 00 00 00 00       	mov    esi,0x0
     c05:	48 89 c7             	mov    rdi,rax
     c08:	e8 a3 fd ff ff       	call   9b0 <setvbuf@plt>
     c0d:	48 8b 05 7c 14 20 00 	mov    rax,QWORD PTR [rip+0x20147c]        # 202090 <stdin@@GLIBC_2.2.5>
     c14:	b9 00 00 00 00       	mov    ecx,0x0
     c19:	ba 02 00 00 00       	mov    edx,0x2
     c1e:	be 00 00 00 00       	mov    esi,0x0
     c23:	48 89 c7             	mov    rdi,rax
     c26:	e8 85 fd ff ff       	call   9b0 <setvbuf@plt>
     c2b:	48 8b 05 6e 14 20 00 	mov    rax,QWORD PTR [rip+0x20146e]        # 2020a0 <stderr@@GLIBC_2.2.5>
     c32:	b9 00 00 00 00       	mov    ecx,0x0
     c37:	ba 02 00 00 00       	mov    edx,0x2
     c3c:	be 00 00 00 00       	mov    esi,0x0
     c41:	48 89 c7             	mov    rdi,rax
     c44:	e8 67 fd ff ff       	call   9b0 <setvbuf@plt>
     c49:	48 8d 35 9a fe ff ff 	lea    rsi,[rip+0xfffffffffffffe9a]        # aea <handler>
     c50:	bf 0e 00 00 00       	mov    edi,0xe
     c55:	e8 46 fd ff ff       	call   9a0 <signal@plt>
     c5a:	bf b4 00 00 00       	mov    edi,0xb4
     c5f:	e8 0c fd ff ff       	call   970 <alarm@plt>
     c64:	90                   	nop
     c65:	5d                   	pop    rbp
     c66:	c3                   	ret    

0000000000000c67 <banner>:
     c67:	55                   	push   rbp
     c68:	48 89 e5             	mov    rbp,rsp
     c6b:	48 8d 3d c6 05 00 00 	lea    rdi,[rip+0x5c6]        # 1238 <_IO_stdin_used+0x78>
     c72:	e8 c9 fc ff ff       	call   940 <puts@plt>
     c77:	48 8d 3d ea 05 00 00 	lea    rdi,[rip+0x5ea]        # 1268 <_IO_stdin_used+0xa8>
     c7e:	e8 bd fc ff ff       	call   940 <puts@plt>
     c83:	48 8d 3d ae 05 00 00 	lea    rdi,[rip+0x5ae]        # 1238 <_IO_stdin_used+0x78>
     c8a:	e8 b1 fc ff ff       	call   940 <puts@plt>
     c8f:	90                   	nop
     c90:	5d                   	pop    rbp
     c91:	c3                   	ret    

0000000000000c92 <welcome>:
     c92:	55                   	push   rbp
     c93:	48 89 e5             	mov    rbp,rsp
     c96:	b8 00 00 00 00       	mov    eax,0x0
     c9b:	e8 c7 ff ff ff       	call   c67 <banner>
     ca0:	48 8d 3d ef 05 00 00 	lea    rdi,[rip+0x5ef]        # 1296 <_IO_stdin_used+0xd6>
     ca7:	e8 94 fc ff ff       	call   940 <puts@plt>
     cac:	48 8d 3d ec 05 00 00 	lea    rdi,[rip+0x5ec]        # 129f <_IO_stdin_used+0xdf>
     cb3:	e8 88 fc ff ff       	call   940 <puts@plt>
     cb8:	48 8d 3d ec 05 00 00 	lea    rdi,[rip+0x5ec]        # 12ab <_IO_stdin_used+0xeb>
     cbf:	e8 7c fc ff ff       	call   940 <puts@plt>
     cc4:	48 8d 3d e8 05 00 00 	lea    rdi,[rip+0x5e8]        # 12b3 <_IO_stdin_used+0xf3>
     ccb:	e8 70 fc ff ff       	call   940 <puts@plt>
     cd0:	90                   	nop
     cd1:	5d                   	pop    rbp
     cd2:	c3                   	ret    

0000000000000cd3 <init_candidates>:
     cd3:	55                   	push   rbp
     cd4:	48 89 e5             	mov    rbp,rsp
     cd7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
     cde:	eb 4a                	jmp    d2a <init_candidates+0x57>
     ce0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     ce3:	48 98                	cdqe   
     ce5:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
     cec:	00 
     ced:	48 8d 05 2c 13 20 00 	lea    rax,[rip+0x20132c]        # 202020 <candidates_name>
     cf4:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
     cf8:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     cfb:	48 98                	cdqe   
     cfd:	48 c1 e0 04          	shl    rax,0x4
     d01:	48 89 c1             	mov    rcx,rax
     d04:	48 8d 05 b5 13 20 00 	lea    rax,[rip+0x2013b5]        # 2020c0 <candidates>
     d0b:	48 89 14 01          	mov    QWORD PTR [rcx+rax*1],rdx
     d0f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
     d12:	48 98                	cdqe   
     d14:	48 c1 e0 04          	shl    rax,0x4
     d18:	48 89 c2             	mov    rdx,rax
     d1b:	48 8d 05 a6 13 20 00 	lea    rax,[rip+0x2013a6]        # 2020c8 <candidates+0x8>
     d22:	c6 04 02 00          	mov    BYTE PTR [rdx+rax*1],0x0
     d26:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
     d2a:	83 7d fc 09          	cmp    DWORD PTR [rbp-0x4],0x9
     d2e:	7e b0                	jle    ce0 <init_candidates+0xd>
     d30:	90                   	nop
     d31:	5d                   	pop    rbp
     d32:	c3                   	ret    

0000000000000d33 <menu>:
     d33:	55                   	push   rbp
     d34:	48 89 e5             	mov    rbp,rsp
     d37:	b8 00 00 00 00       	mov    eax,0x0
     d3c:	e8 26 ff ff ff       	call   c67 <banner>
     d41:	48 8d 3d 6d 05 00 00 	lea    rdi,[rip+0x56d]        # 12b5 <_IO_stdin_used+0xf5>
     d48:	e8 f3 fb ff ff       	call   940 <puts@plt>
     d4d:	48 8d 3d 6c 05 00 00 	lea    rdi,[rip+0x56c]        # 12c0 <_IO_stdin_used+0x100>
     d54:	e8 e7 fb ff ff       	call   940 <puts@plt>
     d59:	48 8d 3d 89 05 00 00 	lea    rdi,[rip+0x589]        # 12e9 <_IO_stdin_used+0x129>
     d60:	e8 db fb ff ff       	call   940 <puts@plt>
     d65:	48 8d 3d 47 05 00 00 	lea    rdi,[rip+0x547]        # 12b3 <_IO_stdin_used+0xf3>
     d6c:	e8 cf fb ff ff       	call   940 <puts@plt>
     d71:	90                   	nop
     d72:	5d                   	pop    rbp
     d73:	c3                   	ret    

0000000000000d74 <voting>:
     d74:	55                   	push   rbp
     d75:	48 89 e5             	mov    rbp,rsp
     d78:	48 81 ec 00 01 00 00 	sub    rsp,0x100
     d7f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     d86:	00 00 
     d88:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     d8c:	31 c0                	xor    eax,eax
     d8e:	b8 00 00 00 00       	mov    eax,0x0
     d93:	e8 9b ff ff ff       	call   d33 <menu>
     d98:	b8 00 00 00 00       	mov    eax,0x0
     d9d:	e8 f0 fd ff ff       	call   b92 <read_int>
     da2:	89 85 08 ff ff ff    	mov    DWORD PTR [rbp-0xf8],eax
     da8:	8b 85 08 ff ff ff    	mov    eax,DWORD PTR [rbp-0xf8]
     dae:	83 f8 02             	cmp    eax,0x2
     db1:	0f 84 61 01 00 00    	je     f18 <voting+0x1a4>
     db7:	83 f8 03             	cmp    eax,0x3
     dba:	0f 84 24 02 00 00    	je     fe4 <voting+0x270>
     dc0:	83 f8 01             	cmp    eax,0x1
     dc3:	0f 85 09 02 00 00    	jne    fd2 <voting+0x25e>
     dc9:	8b 05 dd 12 20 00    	mov    eax,DWORD PTR [rip+0x2012dd]        # 2020ac <vote>
     dcf:	85 c0                	test   eax,eax
     dd1:	75 11                	jne    de4 <voting+0x70>
     dd3:	48 8d 3d 19 05 00 00 	lea    rdi,[rip+0x519]        # 12f3 <_IO_stdin_used+0x133>
     dda:	e8 61 fb ff ff       	call   940 <puts@plt>
     ddf:	e9 fb 01 00 00       	jmp    fdf <voting+0x26b>
     de4:	48 8d 3d 24 05 00 00 	lea    rdi,[rip+0x524]        # 130f <_IO_stdin_used+0x14f>
     deb:	e8 50 fb ff ff       	call   940 <puts@plt>
     df0:	c7 85 04 ff ff ff 00 	mov    DWORD PTR [rbp-0xfc],0x0
     df7:	00 00 00 
     dfa:	eb 57                	jmp    e53 <voting+0xdf>
     dfc:	8b 85 04 ff ff ff    	mov    eax,DWORD PTR [rbp-0xfc]
     e02:	48 98                	cdqe   
     e04:	48 c1 e0 04          	shl    rax,0x4
     e08:	48 89 c2             	mov    rdx,rax
     e0b:	48 8d 05 b6 12 20 00 	lea    rax,[rip+0x2012b6]        # 2020c8 <candidates+0x8>
     e12:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     e16:	0f b6 c8             	movzx  ecx,al
     e19:	8b 85 04 ff ff ff    	mov    eax,DWORD PTR [rbp-0xfc]
     e1f:	48 98                	cdqe   
     e21:	48 c1 e0 04          	shl    rax,0x4
     e25:	48 89 c2             	mov    rdx,rax
     e28:	48 8d 05 91 12 20 00 	lea    rax,[rip+0x201291]        # 2020c0 <candidates>
     e2f:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
     e33:	8b 85 04 ff ff ff    	mov    eax,DWORD PTR [rbp-0xfc]
     e39:	89 c6                	mov    esi,eax
     e3b:	48 8d 3d d9 04 00 00 	lea    rdi,[rip+0x4d9]        # 131b <_IO_stdin_used+0x15b>
     e42:	b8 00 00 00 00       	mov    eax,0x0
     e47:	e8 14 fb ff ff       	call   960 <printf@plt>
     e4c:	83 85 04 ff ff ff 01 	add    DWORD PTR [rbp-0xfc],0x1
     e53:	83 bd 04 ff ff ff 09 	cmp    DWORD PTR [rbp-0xfc],0x9
     e5a:	7e a0                	jle    dfc <voting+0x88>
     e5c:	48 8d 3d ca 04 00 00 	lea    rdi,[rip+0x4ca]        # 132d <_IO_stdin_used+0x16d>
     e63:	b8 00 00 00 00       	mov    eax,0x0
     e68:	e8 f3 fa ff ff       	call   960 <printf@plt>
     e6d:	b8 00 00 00 00       	mov    eax,0x0
     e72:	e8 1b fd ff ff       	call   b92 <read_int>
     e77:	89 85 0c ff ff ff    	mov    DWORD PTR [rbp-0xf4],eax
     e7d:	83 bd 0c ff ff ff 00 	cmp    DWORD PTR [rbp-0xf4],0x0
     e84:	78 09                	js     e8f <voting+0x11b>
     e86:	83 bd 0c ff ff ff 09 	cmp    DWORD PTR [rbp-0xf4],0x9
     e8d:	7e 11                	jle    ea0 <voting+0x12c>
     e8f:	48 8d 3d ab 04 00 00 	lea    rdi,[rip+0x4ab]        # 1341 <_IO_stdin_used+0x181>
     e96:	e8 a5 fa ff ff       	call   940 <puts@plt>
     e9b:	e9 3f 01 00 00       	jmp    fdf <voting+0x26b>
     ea0:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     ea6:	48 98                	cdqe   
     ea8:	48 c1 e0 04          	shl    rax,0x4
     eac:	48 89 c2             	mov    rdx,rax
     eaf:	48 8d 05 12 12 20 00 	lea    rax,[rip+0x201212]        # 2020c8 <candidates+0x8>
     eb6:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     eba:	8d 48 01             	lea    ecx,[rax+0x1]
     ebd:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     ec3:	48 98                	cdqe   
     ec5:	48 c1 e0 04          	shl    rax,0x4
     ec9:	48 89 c2             	mov    rdx,rax
     ecc:	48 8d 05 f5 11 20 00 	lea    rax,[rip+0x2011f5]        # 2020c8 <candidates+0x8>
     ed3:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
     ed6:	8b 05 d0 11 20 00    	mov    eax,DWORD PTR [rip+0x2011d0]        # 2020ac <vote>
     edc:	83 e8 01             	sub    eax,0x1
     edf:	89 05 c7 11 20 00    	mov    DWORD PTR [rip+0x2011c7],eax        # 2020ac <vote>
     ee5:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     eeb:	48 98                	cdqe   
     eed:	48 c1 e0 04          	shl    rax,0x4
     ef1:	48 89 c2             	mov    rdx,rax
     ef4:	48 8d 05 c5 11 20 00 	lea    rax,[rip+0x2011c5]        # 2020c0 <candidates>
     efb:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
     eff:	48 89 c6             	mov    rsi,rax
     f02:	48 8d 3d 48 04 00 00 	lea    rdi,[rip+0x448]        # 1351 <_IO_stdin_used+0x191>
     f09:	b8 00 00 00 00       	mov    eax,0x0
     f0e:	e8 4d fa ff ff       	call   960 <printf@plt>
     f13:	e9 c7 00 00 00       	jmp    fdf <voting+0x26b>
     f18:	48 8d 3d 49 04 00 00 	lea    rdi,[rip+0x449]        # 1368 <_IO_stdin_used+0x1a8>
     f1f:	e8 1c fa ff ff       	call   940 <puts@plt>
     f24:	48 8d 3d 79 04 00 00 	lea    rdi,[rip+0x479]        # 13a4 <_IO_stdin_used+0x1e4>
     f2b:	b8 00 00 00 00       	mov    eax,0x0
     f30:	e8 2b fa ff ff       	call   960 <printf@plt>
     f35:	b8 00 00 00 00       	mov    eax,0x0
     f3a:	e8 53 fc ff ff       	call   b92 <read_int>
     f3f:	89 85 0c ff ff ff    	mov    DWORD PTR [rbp-0xf4],eax
     f45:	83 bd 0c ff ff ff 00 	cmp    DWORD PTR [rbp-0xf4],0x0
     f4c:	78 09                	js     f57 <voting+0x1e3>
     f4e:	83 bd 0c ff ff ff 09 	cmp    DWORD PTR [rbp-0xf4],0x9
     f55:	7e 0e                	jle    f65 <voting+0x1f1>
     f57:	48 8d 3d e3 03 00 00 	lea    rdi,[rip+0x3e3]        # 1341 <_IO_stdin_used+0x181>
     f5e:	e8 dd f9 ff ff       	call   940 <puts@plt>
     f63:	eb 7a                	jmp    fdf <voting+0x26b>
     f65:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     f6b:	48 98                	cdqe   
     f6d:	48 c1 e0 04          	shl    rax,0x4
     f71:	48 89 c2             	mov    rdx,rax
     f74:	48 8d 05 45 11 20 00 	lea    rax,[rip+0x201145]        # 2020c0 <candidates>
     f7b:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
     f7f:	48 89 c6             	mov    rsi,rax
     f82:	48 8d 3d 26 04 00 00 	lea    rdi,[rip+0x426]        # 13af <_IO_stdin_used+0x1ef>
     f89:	b8 00 00 00 00       	mov    eax,0x0
     f8e:	e8 cd f9 ff ff       	call   960 <printf@plt>
     f93:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
     f99:	48 98                	cdqe   
     f9b:	48 c1 e0 04          	shl    rax,0x4
     f9f:	48 89 c2             	mov    rdx,rax
     fa2:	48 8d 05 1f 11 20 00 	lea    rax,[rip+0x20111f]        # 2020c8 <candidates+0x8>
     fa9:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
     fad:	0f b6 d0             	movzx  edx,al
     fb0:	48 8d 85 10 ff ff ff 	lea    rax,[rbp-0xf0]
     fb7:	48 89 c6             	mov    rsi,rax
     fba:	bf 00 00 00 00       	mov    edi,0x0
     fbf:	e8 bc f9 ff ff       	call   980 <read@plt>
     fc4:	48 8d 3d f5 03 00 00 	lea    rdi,[rip+0x3f5]        # 13c0 <_IO_stdin_used+0x200>
     fcb:	e8 70 f9 ff ff       	call   940 <puts@plt>
     fd0:	eb 0d                	jmp    fdf <voting+0x26b>
     fd2:	48 8d 3d ed 03 00 00 	lea    rdi,[rip+0x3ed]        # 13c6 <_IO_stdin_used+0x206>
     fd9:	e8 62 f9 ff ff       	call   940 <puts@plt>
     fde:	90                   	nop
     fdf:	e9 aa fd ff ff       	jmp    d8e <voting+0x1a>
     fe4:	90                   	nop
     fe5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
     fe9:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
     ff0:	00 00 
     ff2:	74 05                	je     ff9 <voting+0x285>
     ff4:	e8 57 f9 ff ff       	call   950 <__stack_chk_fail@plt>
     ff9:	c9                   	leave  
     ffa:	c3                   	ret    

0000000000000ffb <main>:
     ffb:	55                   	push   rbp
     ffc:	48 89 e5             	mov    rbp,rsp
     fff:	48 81 ec d0 00 00 00 	sub    rsp,0xd0
    1006:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    100d:	00 00 
    100f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1013:	31 c0                	xor    eax,eax
    1015:	b8 00 00 00 00       	mov    eax,0x0
    101a:	e8 cc fb ff ff       	call   beb <init>
    101f:	b8 00 00 00 00       	mov    eax,0x0
    1024:	e8 aa fc ff ff       	call   cd3 <init_candidates>
    1029:	48 8d 95 40 ff ff ff 	lea    rdx,[rbp-0xc0]
    1030:	b8 00 00 00 00       	mov    eax,0x0
    1035:	b9 17 00 00 00       	mov    ecx,0x17
    103a:	48 89 d7             	mov    rdi,rdx
    103d:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    1040:	b8 00 00 00 00       	mov    eax,0x0
    1045:	e8 48 fc ff ff       	call   c92 <welcome>
    104a:	b8 00 00 00 00       	mov    eax,0x0
    104f:	e8 3e fb ff ff       	call   b92 <read_int>
    1054:	89 85 38 ff ff ff    	mov    DWORD PTR [rbp-0xc8],eax
    105a:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
    1060:	83 f8 02             	cmp    eax,0x2
    1063:	74 79                	je     10de <main+0xe3>
    1065:	83 f8 03             	cmp    eax,0x3
    1068:	0f 84 b2 00 00 00    	je     1120 <main+0x125>
    106e:	83 f8 01             	cmp    eax,0x1
    1071:	0f 85 b5 00 00 00    	jne    112c <main+0x131>
    1077:	48 8d 3d 4b 03 00 00 	lea    rdi,[rip+0x34b]        # 13c9 <_IO_stdin_used+0x209>
    107e:	b8 00 00 00 00       	mov    eax,0x0
    1083:	e8 d8 f8 ff ff       	call   960 <printf@plt>
    1088:	ba c8 00 00 00       	mov    edx,0xc8
    108d:	48 8d 35 cc 10 20 00 	lea    rsi,[rip+0x2010cc]        # 202160 <buf>
    1094:	bf 00 00 00 00       	mov    edi,0x0
    1099:	e8 e2 f8 ff ff       	call   980 <read@plt>
    109e:	89 85 3c ff ff ff    	mov    DWORD PTR [rbp-0xc4],eax
    10a4:	8b 95 3c ff ff ff    	mov    edx,DWORD PTR [rbp-0xc4]
    10aa:	48 8d 85 40 ff ff ff 	lea    rax,[rbp-0xc0]
    10b1:	48 89 c6             	mov    rsi,rax
    10b4:	48 8d 3d a5 10 20 00 	lea    rdi,[rip+0x2010a5]        # 202160 <buf>
    10bb:	e8 d0 f8 ff ff       	call   990 <memcmp@plt>
    10c0:	85 c0                	test   eax,eax
    10c2:	74 0e                	je     10d2 <main+0xd7>
    10c4:	48 8d 3d 06 03 00 00 	lea    rdi,[rip+0x306]        # 13d1 <_IO_stdin_used+0x211>
    10cb:	e8 70 f8 ff ff       	call   940 <puts@plt>
    10d0:	eb 67                	jmp    1139 <main+0x13e>
    10d2:	b8 00 00 00 00       	mov    eax,0x0
    10d7:	e8 98 fc ff ff       	call   d74 <voting>
    10dc:	eb 5b                	jmp    1139 <main+0x13e>
    10de:	48 8d 3d fb 02 00 00 	lea    rdi,[rip+0x2fb]        # 13e0 <_IO_stdin_used+0x220>
    10e5:	b8 00 00 00 00       	mov    eax,0x0
    10ea:	e8 71 f8 ff ff       	call   960 <printf@plt>
    10ef:	48 8d 85 40 ff ff ff 	lea    rax,[rbp-0xc0]
    10f6:	ba b8 00 00 00       	mov    edx,0xb8
    10fb:	48 89 c6             	mov    rsi,rax
    10fe:	bf 00 00 00 00       	mov    edi,0x0
    1103:	e8 78 f8 ff ff       	call   980 <read@plt>
    1108:	c7 05 9a 0f 20 00 0a 	mov    DWORD PTR [rip+0x200f9a],0xa        # 2020ac <vote>
    110f:	00 00 00 
    1112:	48 8d 3d a7 02 00 00 	lea    rdi,[rip+0x2a7]        # 13c0 <_IO_stdin_used+0x200>
    1119:	e8 22 f8 ff ff       	call   940 <puts@plt>
    111e:	eb 19                	jmp    1139 <main+0x13e>
    1120:	bf 00 00 00 00       	mov    edi,0x0
    1125:	e8 c0 f9 ff ff       	call   aea <handler>
    112a:	eb 0d                	jmp    1139 <main+0x13e>
    112c:	48 8d 3d 93 02 00 00 	lea    rdi,[rip+0x293]        # 13c6 <_IO_stdin_used+0x206>
    1133:	e8 08 f8 ff ff       	call   940 <puts@plt>
    1138:	90                   	nop
    1139:	e9 02 ff ff ff       	jmp    1040 <main+0x45>
    113e:	66 90                	xchg   ax,ax

0000000000001140 <__libc_csu_init>:
    1140:	41 57                	push   r15
    1142:	41 56                	push   r14
    1144:	49 89 d7             	mov    r15,rdx
    1147:	41 55                	push   r13
    1149:	41 54                	push   r12
    114b:	4c 8d 25 16 0c 20 00 	lea    r12,[rip+0x200c16]        # 201d68 <__frame_dummy_init_array_entry>
    1152:	55                   	push   rbp
    1153:	48 8d 2d 16 0c 20 00 	lea    rbp,[rip+0x200c16]        # 201d70 <__init_array_end>
    115a:	53                   	push   rbx
    115b:	41 89 fd             	mov    r13d,edi
    115e:	49 89 f6             	mov    r14,rsi
    1161:	4c 29 e5             	sub    rbp,r12
    1164:	48 83 ec 08          	sub    rsp,0x8
    1168:	48 c1 fd 03          	sar    rbp,0x3
    116c:	e8 7f f7 ff ff       	call   8f0 <_init>
    1171:	48 85 ed             	test   rbp,rbp
    1174:	74 20                	je     1196 <__libc_csu_init+0x56>
    1176:	31 db                	xor    ebx,ebx
    1178:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    117f:	00 
    1180:	4c 89 fa             	mov    rdx,r15
    1183:	4c 89 f6             	mov    rsi,r14
    1186:	44 89 ef             	mov    edi,r13d
    1189:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    118d:	48 83 c3 01          	add    rbx,0x1
    1191:	48 39 dd             	cmp    rbp,rbx
    1194:	75 ea                	jne    1180 <__libc_csu_init+0x40>
    1196:	48 83 c4 08          	add    rsp,0x8
    119a:	5b                   	pop    rbx
    119b:	5d                   	pop    rbp
    119c:	41 5c                	pop    r12
    119e:	41 5d                	pop    r13
    11a0:	41 5e                	pop    r14
    11a2:	41 5f                	pop    r15
    11a4:	c3                   	ret    
    11a5:	90                   	nop
    11a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    11ad:	00 00 00 

00000000000011b0 <__libc_csu_fini>:
    11b0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000000011b4 <_fini>:
    11b4:	48 83 ec 08          	sub    rsp,0x8
    11b8:	48 83 c4 08          	add    rsp,0x8
    11bc:	c3                   	ret    

Disassembly of section .rodata:

00000000000011c0 <_IO_stdin_used>:
    11c0:	01 00                	add    DWORD PTR [rax],eax
    11c2:	02 00                	add    al,BYTE PTR [rax]
    11c4:	00 00                	add    BYTE PTR [rax],al
    11c6:	00 00                	add    BYTE PTR [rax],al
    11c8:	50                   	push   rax
    11c9:	75 73                	jne    123e <_IO_stdin_used+0x7e>
    11cb:	68 65 65 6e 00       	push   0x6e6565
    11d0:	41 6e                	rex.B outs dx,BYTE PTR ds:[rsi]
    11d2:	67 65 6c             	gs ins BYTE PTR es:[edi],dx
    11d5:	62                   	(bad)  
    11d6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    11d7:	79 00                	jns    11d9 <_IO_stdin_used+0x19>
    11d9:	43 68 69 6e 65 73    	rex.XB push 0x73656e69
    11df:	65 20 54 73 61       	and    BYTE PTR gs:[rbx+rsi*2+0x61],dl
    11e4:	69 00 4b 6f 72 65    	imul   eax,DWORD PTR [rax],0x65726f4b
    11ea:	61                   	(bad)  
    11eb:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    11ec:	20 43 61             	and    BYTE PTR [rbx+0x61],al
    11ef:	74 00                	je     11f1 <_IO_stdin_used+0x31>
    11f1:	54                   	push   rsp
    11f2:	72 75                	jb     1269 <_IO_stdin_used+0xa9>
    11f4:	6d                   	ins    DWORD PTR es:[rdi],dx
    11f5:	70 00                	jo     11f7 <_IO_stdin_used+0x37>
    11f7:	4e 69 6e 69 20 00 68 	rex.WRX imul r13,QWORD PTR [rsi+0x69],0x6f680020
    11fe:	6f 
    11ff:	77 32                	ja     1233 <_IO_stdin_used+0x73>
    1201:	76 6f                	jbe    1272 <_IO_stdin_used+0xb2>
    1203:	74 65                	je     126a <_IO_stdin_used+0xaa>
    1205:	00 52 69             	add    BYTE PTR [rdx+0x69],dl
    1208:	6c                   	ins    BYTE PTR es:[rdi],dx
    1209:	61                   	(bad)  
    120a:	6b 6b 75 6d          	imul   ebp,DWORD PTR [rbx+0x75],0x6d
    120e:	61                   	(bad)  
    120f:	00 4a 6f             	add    BYTE PTR [rdx+0x6f],cl
    1212:	68 6e 20 43 65       	push   0x6543206e
    1217:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1218:	61                   	(bad)  
    1219:	00 43 61             	add    BYTE PTR [rbx+0x61],al
    121c:	70 6f                	jo     128d <_IO_stdin_used+0xcd>
    121e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    121f:	00 43 6f             	add    BYTE PTR [rbx+0x6f],al
    1222:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1223:	67 72 61             	addr32 jb 1287 <_IO_stdin_used+0xc7>
    1226:	74 20                	je     1248 <_IO_stdin_used+0x88>
    1228:	74 6f                	je     1299 <_IO_stdin_used+0xd9>
    122a:	20 25 73 20 21 21    	and    BYTE PTR [rip+0x21212073],ah        # 212132a3 <_end+0x2101107b>
    1230:	21 0a                	and    DWORD PTR [rdx],ecx
    1232:	00 00                	add    BYTE PTR [rax],al
    1234:	00 00                	add    BYTE PTR [rax],al
    1236:	00 00                	add    BYTE PTR [rax],al
    1238:	2b 2d 2d 2d 2d 2d    	sub    ebp,DWORD PTR [rip+0x2d2d2d2d]        # 2d2d3f6b <_end+0x2d0d1d43>
    123e:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
    1243:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
    1248:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
    124d:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
    1252:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
    1257:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
    125c:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
    1261:	2d 2d 2d 2b 00       	sub    eax,0x2b2d2d
    1266:	00 00                	add    BYTE PTR [rax],al
    1268:	7c 20                	jl     128a <_IO_stdin_used+0xca>
    126a:	20 20                	and    BYTE PTR [rax],ah
    126c:	20 45 44             	and    BYTE PTR [rbp+0x44],al
    126f:	55                   	push   rbp
    1270:	20 32                	and    BYTE PTR [rdx],dh
    1272:	30 31                	xor    BYTE PTR [rcx],dh
    1274:	39 20                	cmp    DWORD PTR [rax],esp
    1276:	45 6c                	rex.RB ins BYTE PTR es:[rdi],dx
    1278:	65 63 74 69 6f       	movsxd esi,DWORD PTR gs:[rcx+rbp*2+0x6f]
    127d:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    127e:	20 56 6f             	and    BYTE PTR [rsi+0x6f],dl
    1281:	74 69                	je     12ec <_IO_stdin_used+0x12c>
    1283:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1284:	67 20 53 79          	and    BYTE PTR [ebx+0x79],dl
    1288:	73 74                	jae    12fe <_IO_stdin_used+0x13e>
    128a:	65 6d                	gs ins DWORD PTR es:[rdi],dx
    128c:	20 76 31             	and    BYTE PTR [rsi+0x31],dh
    128f:	2e 30 20             	xor    BYTE PTR cs:[rax],ah
    1292:	20 20                	and    BYTE PTR [rax],ah
    1294:	7c 00                	jl     1296 <_IO_stdin_used+0xd6>
    1296:	31 2e                	xor    DWORD PTR [rsi],ebp
    1298:	20 4c 6f 67          	and    BYTE PTR [rdi+rbp*2+0x67],cl
    129c:	69 6e 00 32 2e 20 52 	imul   ebp,DWORD PTR [rsi+0x0],0x52202e32
    12a3:	65 67 69 73 74 65 72 	imul   esi,DWORD PTR gs:[ebx+0x74],0x33007265
    12aa:	00 33 
    12ac:	2e 20 45 78          	and    BYTE PTR cs:[rbp+0x78],al
    12b0:	69 74 00 3e 00 31 2e 	imul   esi,DWORD PTR [rax+rax*1+0x3e],0x202e3100
    12b7:	20 
    12b8:	56                   	push   rsi
    12b9:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    12ba:	74 65                	je     1321 <_IO_stdin_used+0x161>
    12bc:	00 00                	add    BYTE PTR [rax],al
    12be:	00 00                	add    BYTE PTR [rax],al
    12c0:	32 2e                	xor    ch,BYTE PTR [rsi]
    12c2:	20 49 20             	and    BYTE PTR [rcx+0x20],cl
    12c5:	77 61                	ja     1328 <_IO_stdin_used+0x168>
    12c7:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    12c8:	74 20                	je     12ea <_IO_stdin_used+0x12a>
    12ca:	74 6f                	je     133b <_IO_stdin_used+0x17b>
    12cc:	20 73 61             	and    BYTE PTR [rbx+0x61],dh
    12cf:	79 20                	jns    12f1 <_IO_stdin_used+0x131>
    12d1:	73 6f                	jae    1342 <_IO_stdin_used+0x182>
    12d3:	6d                   	ins    DWORD PTR es:[rdi],dx
    12d4:	65 74 68             	gs je  133f <_IO_stdin_used+0x17f>
    12d7:	69 6e 67 20 74 6f 20 	imul   ebp,DWORD PTR [rsi+0x67],0x206f7420
    12de:	63 61 6e             	movsxd esp,DWORD PTR [rcx+0x6e]
    12e1:	64 69 64 61 74 65 73 	imul   esp,DWORD PTR fs:[rcx+riz*2+0x74],0x33007365
    12e8:	00 33 
    12ea:	2e 20 4c 6f 67       	and    BYTE PTR cs:[rdi+rbp*2+0x67],cl
    12ef:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    12f0:	75 74                	jne    1366 <_IO_stdin_used+0x1a6>
    12f2:	00 59 6f             	add    BYTE PTR [rcx+0x6f],bl
    12f5:	75 20                	jne    1317 <_IO_stdin_used+0x157>
    12f7:	63 61 6e             	movsxd esp,DWORD PTR [rcx+0x6e]
    12fa:	20 6e 6f             	and    BYTE PTR [rsi+0x6f],ch
    12fd:	74 20                	je     131f <_IO_stdin_used+0x15f>
    12ff:	76 6f                	jbe    1370 <_IO_stdin_used+0x1b0>
    1301:	74 65                	je     1368 <_IO_stdin_used+0x1a8>
    1303:	20 61 6e             	and    BYTE PTR [rcx+0x6e],ah
    1306:	79 6d                	jns    1375 <_IO_stdin_used+0x1b5>
    1308:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    1309:	72 65                	jb     1370 <_IO_stdin_used+0x1b0>
    130b:	20 3a                	and    BYTE PTR [rdx],bh
    130d:	28 00                	sub    BYTE PTR [rax],al
    130f:	43 61                	rex.XB (bad) 
    1311:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1312:	64 69 64 61 74 65 73 	imul   esp,DWORD PTR fs:[rcx+riz*2+0x74],0x3a7365
    1319:	3a 00 
    131b:	25 64 2e 20 25       	and    eax,0x25202e64
    1320:	73 09                	jae    132b <_IO_stdin_used+0x16b>
    1322:	76 6f                	jbe    1393 <_IO_stdin_used+0x1d3>
    1324:	74 65                	je     138b <_IO_stdin_used+0x1cb>
    1326:	73 3a                	jae    1362 <_IO_stdin_used+0x1a2>
    1328:	20 25 75 0a 00 59    	and    BYTE PTR [rip+0x59000a75],ah        # 59001da3 <_end+0x58dffb7b>
    132e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    132f:	75 72                	jne    13a3 <_IO_stdin_used+0x1e3>
    1331:	20 63 68             	and    BYTE PTR [rbx+0x68],ah
    1334:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    1335:	69 63 65 20 5b 30 7e 	imul   esp,DWORD PTR [rbx+0x65],0x7e305b20
    133c:	39 5d 3a             	cmp    DWORD PTR [rbp+0x3a],ebx
    133f:	20 00                	and    BYTE PTR [rax],al
    1341:	49 6e                	rex.WB outs dx,BYTE PTR ds:[rsi]
    1343:	76 61                	jbe    13a6 <_IO_stdin_used+0x1e6>
    1345:	6c                   	ins    BYTE PTR es:[rdi],dx
    1346:	69 64 20 63 68 6f 69 	imul   esp,DWORD PTR [rax+riz*1+0x63],0x63696f68
    134d:	63 
    134e:	65 2e 00 44 6f 6e    	gs add BYTE PTR cs:[rdi+rbp*2+0x6e],al
    1354:	65 21 0a             	and    DWORD PTR gs:[rdx],ecx
    1357:	25 73 3a 20 54       	and    eax,0x54203a73
    135c:	68 61 6e 6b 20       	push   0x206b6e61
    1361:	79 6f                	jns    13d2 <_IO_stdin_used+0x212>
    1363:	75 21                	jne    1386 <_IO_stdin_used+0x1c6>
    1365:	0a 00                	or     al,BYTE PTR [rax]
    1367:	00 54 68 65          	add    BYTE PTR [rax+rbp*2+0x65],dl
    136b:	20 6d 6f             	and    BYTE PTR [rbp+0x6f],ch
    136e:	72 65                	jb     13d5 <_IO_stdin_used+0x215>
    1370:	20 76 6f             	and    BYTE PTR [rsi+0x6f],dh
    1373:	74 65                	je     13da <_IO_stdin_used+0x21a>
    1375:	73 20                	jae    1397 <_IO_stdin_used+0x1d7>
    1377:	63 61 6e             	movsxd esp,DWORD PTR [rcx+0x6e]
    137a:	64 69 64 61 74 65 20 	imul   esp,DWORD PTR fs:[rcx+riz*2+0x74],0x61682065
    1381:	68 61 
    1383:	73 2c                	jae    13b1 <_IO_stdin_used+0x1f1>
    1385:	20 74 68 65          	and    BYTE PTR [rax+rbp*2+0x65],dh
    1389:	20 6d 6f             	and    BYTE PTR [rbp+0x6f],ch
    138c:	72 65                	jb     13f3 <_IO_stdin_used+0x233>
    138e:	20 6d 65             	and    BYTE PTR [rbp+0x65],ch
    1391:	73 73                	jae    1406 <__GNU_EH_FRAME_HDR+0x6>
    1393:	61                   	(bad)  
    1394:	67 65 20 79 6f       	and    BYTE PTR gs:[ecx+0x6f],bh
    1399:	75 20                	jne    13bb <_IO_stdin_used+0x1fb>
    139b:	63 61 6e             	movsxd esp,DWORD PTR [rcx+0x6e]
    139e:	20 73 61             	and    BYTE PTR [rbx+0x61],dh
    13a1:	79 21                	jns    13c4 <_IO_stdin_used+0x204>
    13a3:	00 54 6f 20          	add    BYTE PTR [rdi+rbp*2+0x20],dl
    13a7:	5b                   	pop    rbx
    13a8:	30 7e 39             	xor    BYTE PTR [rsi+0x39],bh
    13ab:	5d                   	pop    rbp
    13ac:	3a 20                	cmp    ah,BYTE PTR [rax]
    13ae:	00 54 6f 20          	add    BYTE PTR [rdi+rbp*2+0x20],dl
    13b2:	25 73 3a 0a 4d       	and    eax,0x4d0a3a73
    13b7:	65 73 73             	gs jae 142d <__GNU_EH_FRAME_HDR+0x2d>
    13ba:	61                   	(bad)  
    13bb:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[eax]
    13bf:	00 44 6f 6e          	add    BYTE PTR [rdi+rbp*2+0x6e],al
    13c3:	65 21 00             	and    DWORD PTR gs:[rax],eax
    13c6:	3a 29                	cmp    ch,BYTE PTR [rcx]
    13c8:	00 54 6f 6b          	add    BYTE PTR [rdi+rbp*2+0x6b],dl
    13cc:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
    13ce:	3a 20                	cmp    ah,BYTE PTR [rax]
    13d0:	00 49 6e             	add    BYTE PTR [rcx+0x6e],cl
    13d3:	76 61                	jbe    1436 <__GNU_EH_FRAME_HDR+0x36>
    13d5:	6c                   	ins    BYTE PTR es:[rdi],dx
    13d6:	69 64 20 74 6f 6b 65 	imul   esp,DWORD PTR [rax+riz*1+0x74],0x6e656b6f
    13dd:	6e 
    13de:	2e 00 52 65          	add    BYTE PTR cs:[rdx+0x65],dl
    13e2:	67 69 73 74 65 72 20 	imul   esi,DWORD PTR [ebx+0x74],0x61207265
    13e9:	61 
    13ea:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    13eb:	20 61 6e             	and    BYTE PTR [rcx+0x6e],ah
    13ee:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    13ef:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    13f0:	79 6d                	jns    145f <__GNU_EH_FRAME_HDR+0x5f>
    13f2:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    13f3:	75 73                	jne    1468 <__GNU_EH_FRAME_HDR+0x68>
    13f5:	20 74 6f 6b          	and    BYTE PTR [rdi+rbp*2+0x6b],dh
    13f9:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
    13fb:	3a 20                	cmp    ah,BYTE PTR [rax]
	...

Disassembly of section .eh_frame_hdr:

0000000000001400 <__GNU_EH_FRAME_HDR>:
    1400:	01 1b                	add    DWORD PTR [rbx],ebx
    1402:	03 3b                	add    edi,DWORD PTR [rbx]
    1404:	7c 00                	jl     1406 <__GNU_EH_FRAME_HDR+0x6>
    1406:	00 00                	add    BYTE PTR [rax],al
    1408:	0e                   	(bad)  
    1409:	00 00                	add    BYTE PTR [rax],al
    140b:	00 10                	add    BYTE PTR [rax],dl
    140d:	f5                   	cmc    
    140e:	ff                   	(bad)  
    140f:	ff c8                	dec    eax
    1411:	00 00                	add    BYTE PTR [rax],al
    1413:	00 d0                	add    al,dl
    1415:	f5                   	cmc    
    1416:	ff                   	(bad)  
    1417:	ff f0                	push   rax
    1419:	00 00                	add    BYTE PTR [rax],al
    141b:	00 e0                	add    al,ah
    141d:	f5                   	cmc    
    141e:	ff                   	(bad)  
    141f:	ff 98 00 00 00 ea    	call   FWORD PTR [rax-0x16000000]
    1425:	f6 ff                	idiv   bh
    1427:	ff 08                	dec    DWORD PTR [rax]
    1429:	01 00                	add    DWORD PTR [rax],eax
    142b:	00 92 f7 ff ff 24    	add    BYTE PTR [rdx+0x24fffff7],dl
    1431:	01 00                	add    DWORD PTR [rax],eax
    1433:	00 eb                	add    bl,ch
    1435:	f7 ff                	idiv   edi
    1437:	ff 44 01 00          	inc    DWORD PTR [rcx+rax*1+0x0]
    143b:	00 67 f8             	add    BYTE PTR [rdi-0x8],ah
    143e:	ff                   	(bad)  
    143f:	ff 64 01 00          	jmp    QWORD PTR [rcx+rax*1+0x0]
    1443:	00 92 f8 ff ff 84    	add    BYTE PTR [rdx-0x7b000008],dl
    1449:	01 00                	add    DWORD PTR [rax],eax
    144b:	00 d3                	add    bl,dl
    144d:	f8                   	clc    
    144e:	ff                   	(bad)  
    144f:	ff a4 01 00 00 33 f9 	jmp    QWORD PTR [rcx+rax*1-0x6cd0000]
    1456:	ff                   	(bad)  
    1457:	ff c4                	inc    esp
    1459:	01 00                	add    DWORD PTR [rax],eax
    145b:	00 74 f9 ff          	add    BYTE PTR [rcx+rdi*8-0x1],dh
    145f:	ff e4                	jmp    rsp
    1461:	01 00                	add    DWORD PTR [rax],eax
    1463:	00 fb                	add    bl,bh
    1465:	fb                   	sti    
    1466:	ff                   	(bad)  
    1467:	ff 04 02             	inc    DWORD PTR [rdx+rax*1]
    146a:	00 00                	add    BYTE PTR [rax],al
    146c:	40 fd                	rex std 
    146e:	ff                   	(bad)  
    146f:	ff 20                	jmp    QWORD PTR [rax]
    1471:	02 00                	add    al,BYTE PTR [rax]
    1473:	00 b0 fd ff ff 68    	add    BYTE PTR [rax+0x68fffffd],dh
    1479:	02 00                	add    al,BYTE PTR [rax]
	...

Disassembly of section .eh_frame:

0000000000001480 <__FRAME_END__-0x1fc>:
    1480:	14 00                	adc    al,0x0
    1482:	00 00                	add    BYTE PTR [rax],al
    1484:	00 00                	add    BYTE PTR [rax],al
    1486:	00 00                	add    BYTE PTR [rax],al
    1488:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    148b:	00 01                	add    BYTE PTR [rcx],al
    148d:	78 10                	js     149f <__GNU_EH_FRAME_HDR+0x9f>
    148f:	01 1b                	add    DWORD PTR [rbx],ebx
    1491:	0c 07                	or     al,0x7
    1493:	08 90 01 07 10 14    	or     BYTE PTR [rax+0x14100701],dl
    1499:	00 00                	add    BYTE PTR [rax],al
    149b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    149e:	00 00                	add    BYTE PTR [rax],al
    14a0:	40 f5                	rex cmc 
    14a2:	ff                   	(bad)  
    14a3:	ff 2b                	jmp    FWORD PTR [rbx]
	...
    14ad:	00 00                	add    BYTE PTR [rax],al
    14af:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    14b2:	00 00                	add    BYTE PTR [rax],al
    14b4:	00 00                	add    BYTE PTR [rax],al
    14b6:	00 00                	add    BYTE PTR [rax],al
    14b8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    14bb:	00 01                	add    BYTE PTR [rcx],al
    14bd:	78 10                	js     14cf <__GNU_EH_FRAME_HDR+0xcf>
    14bf:	01 1b                	add    DWORD PTR [rbx],ebx
    14c1:	0c 07                	or     al,0x7
    14c3:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
    14c9:	00 00                	add    BYTE PTR [rax],al
    14cb:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    14ce:	00 00                	add    BYTE PTR [rax],al
    14d0:	40 f4                	rex hlt 
    14d2:	ff                   	(bad)  
    14d3:	ff c0                	inc    eax
    14d5:	00 00                	add    BYTE PTR [rax],al
    14d7:	00 00                	add    BYTE PTR [rax],al
    14d9:	0e                   	(bad)  
    14da:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
    14dd:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
    14e0:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
    14e3:	80 00 3f             	add    BYTE PTR [rax],0x3f
    14e6:	1a 3b                	sbb    bh,BYTE PTR [rbx]
    14e8:	2a 33                	sub    dh,BYTE PTR [rbx]
    14ea:	24 22                	and    al,0x22
    14ec:	00 00                	add    BYTE PTR [rax],al
    14ee:	00 00                	add    BYTE PTR [rax],al
    14f0:	14 00                	adc    al,0x0
    14f2:	00 00                	add    BYTE PTR [rax],al
    14f4:	44 00 00             	add    BYTE PTR [rax],r8b
    14f7:	00 d8                	add    al,bl
    14f9:	f4                   	hlt    
    14fa:	ff                   	(bad)  
    14fb:	ff 08                	dec    DWORD PTR [rax]
	...
    1505:	00 00                	add    BYTE PTR [rax],al
    1507:	00 18                	add    BYTE PTR [rax],bl
    1509:	00 00                	add    BYTE PTR [rax],al
    150b:	00 5c 00 00          	add    BYTE PTR [rax+rax*1+0x0],bl
    150f:	00 da                	add    dl,bl
    1511:	f5                   	cmc    
    1512:	ff                   	(bad)  
    1513:	ff a8 00 00 00 00    	jmp    FWORD PTR [rax+0x0]
    1519:	41 0e                	rex.B (bad) 
    151b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1521:	00 00                	add    BYTE PTR [rax],al
    1523:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    1526:	00 00                	add    BYTE PTR [rax],al
    1528:	78 00                	js     152a <__GNU_EH_FRAME_HDR+0x12a>
    152a:	00 00                	add    BYTE PTR [rax],al
    152c:	66 f6 ff             	data16 idiv bh
    152f:	ff 59 00             	call   FWORD PTR [rcx+0x0]
    1532:	00 00                	add    BYTE PTR [rax],al
    1534:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    1537:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    153d:	02 54 0c 07          	add    dl,BYTE PTR [rsp+rcx*1+0x7]
    1541:	08 00                	or     BYTE PTR [rax],al
    1543:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    1546:	00 00                	add    BYTE PTR [rax],al
    1548:	98                   	cwde   
    1549:	00 00                	add    BYTE PTR [rax],al
    154b:	00 9f f6 ff ff 7c    	add    BYTE PTR [rdi+0x7cfffff6],bl
    1551:	00 00                	add    BYTE PTR [rax],al
    1553:	00 00                	add    BYTE PTR [rax],al
    1555:	41 0e                	rex.B (bad) 
    1557:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    155d:	02 77 0c             	add    dh,BYTE PTR [rdi+0xc]
    1560:	07                   	(bad)  
    1561:	08 00                	or     BYTE PTR [rax],al
    1563:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    1566:	00 00                	add    BYTE PTR [rax],al
    1568:	b8 00 00 00 fb       	mov    eax,0xfb000000
    156d:	f6 ff                	idiv   bh
    156f:	ff 2b                	jmp    FWORD PTR [rbx]
    1571:	00 00                	add    BYTE PTR [rax],al
    1573:	00 00                	add    BYTE PTR [rax],al
    1575:	41 0e                	rex.B (bad) 
    1577:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    157d:	66 0c 07             	data16 or al,0x7
    1580:	08 00                	or     BYTE PTR [rax],al
    1582:	00 00                	add    BYTE PTR [rax],al
    1584:	1c 00                	sbb    al,0x0
    1586:	00 00                	add    BYTE PTR [rax],al
    1588:	d8 00                	fadd   DWORD PTR [rax]
    158a:	00 00                	add    BYTE PTR [rax],al
    158c:	06                   	(bad)  
    158d:	f7 ff                	idiv   edi
    158f:	ff 41 00             	inc    DWORD PTR [rcx+0x0]
    1592:	00 00                	add    BYTE PTR [rax],al
    1594:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    1597:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    159d:	7c 0c                	jl     15ab <__GNU_EH_FRAME_HDR+0x1ab>
    159f:	07                   	(bad)  
    15a0:	08 00                	or     BYTE PTR [rax],al
    15a2:	00 00                	add    BYTE PTR [rax],al
    15a4:	1c 00                	sbb    al,0x0
    15a6:	00 00                	add    BYTE PTR [rax],al
    15a8:	f8                   	clc    
    15a9:	00 00                	add    BYTE PTR [rax],al
    15ab:	00 27                	add    BYTE PTR [rdi],ah
    15ad:	f7 ff                	idiv   edi
    15af:	ff 60 00             	jmp    QWORD PTR [rax+0x0]
    15b2:	00 00                	add    BYTE PTR [rax],al
    15b4:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    15b7:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    15bd:	02 5b 0c             	add    bl,BYTE PTR [rbx+0xc]
    15c0:	07                   	(bad)  
    15c1:	08 00                	or     BYTE PTR [rax],al
    15c3:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    15c6:	00 00                	add    BYTE PTR [rax],al
    15c8:	18 01                	sbb    BYTE PTR [rcx],al
    15ca:	00 00                	add    BYTE PTR [rax],al
    15cc:	67 f7 ff             	addr32 idiv edi
    15cf:	ff 41 00             	inc    DWORD PTR [rcx+0x0]
    15d2:	00 00                	add    BYTE PTR [rax],al
    15d4:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    15d7:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    15dd:	7c 0c                	jl     15eb <__GNU_EH_FRAME_HDR+0x1eb>
    15df:	07                   	(bad)  
    15e0:	08 00                	or     BYTE PTR [rax],al
    15e2:	00 00                	add    BYTE PTR [rax],al
    15e4:	1c 00                	sbb    al,0x0
    15e6:	00 00                	add    BYTE PTR [rax],al
    15e8:	38 01                	cmp    BYTE PTR [rcx],al
    15ea:	00 00                	add    BYTE PTR [rax],al
    15ec:	88 f7                	mov    bh,dh
    15ee:	ff                   	(bad)  
    15ef:	ff 87 02 00 00 00    	inc    DWORD PTR [rdi+0x2]
    15f5:	41 0e                	rex.B (bad) 
    15f7:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    15fd:	03 82 02 0c 07 08    	add    eax,DWORD PTR [rdx+0x8070c02]
    1603:	00 18                	add    BYTE PTR [rax],bl
    1605:	00 00                	add    BYTE PTR [rax],al
    1607:	00 58 01             	add    BYTE PTR [rax+0x1],bl
    160a:	00 00                	add    BYTE PTR [rax],al
    160c:	ef                   	out    dx,eax
    160d:	f9                   	stc    
    160e:	ff                   	(bad)  
    160f:	ff 43 01             	inc    DWORD PTR [rbx+0x1]
    1612:	00 00                	add    BYTE PTR [rax],al
    1614:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    1617:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    161d:	00 00                	add    BYTE PTR [rax],al
    161f:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
    1623:	00 74 01 00          	add    BYTE PTR [rcx+rax*1+0x0],dh
    1627:	00 18                	add    BYTE PTR [rax],bl
    1629:	fb                   	sti    
    162a:	ff                   	(bad)  
    162b:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
    162e:	00 00                	add    BYTE PTR [rax],al
    1630:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
    1633:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
    1639:	8e 03                	mov    es,WORD PTR [rbx]
    163b:	45 0e                	rex.RB (bad) 
    163d:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
    1643:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86302491 <_end+0xffffffff86100269>
    1649:	06                   	(bad)  
    164a:	48 0e                	rex.W (bad) 
    164c:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
    1652:	72 0e                	jb     1662 <__GNU_EH_FRAME_HDR+0x262>
    1654:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
    1657:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
    165a:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
    165d:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    1660:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    1663:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    1666:	08 00                	or     BYTE PTR [rax],al
    1668:	10 00                	adc    BYTE PTR [rax],al
    166a:	00 00                	add    BYTE PTR [rax],al
    166c:	bc 01 00 00 40       	mov    esp,0x40000001
    1671:	fb                   	sti    
    1672:	ff                   	(bad)  
    1673:	ff 02                	inc    DWORD PTR [rdx]
    1675:	00 00                	add    BYTE PTR [rax],al
    1677:	00 00                	add    BYTE PTR [rax],al
    1679:	00 00                	add    BYTE PTR [rax],al
	...

000000000000167c <__FRAME_END__>:
    167c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000201d68 <__frame_dummy_init_array_entry>:
  201d68:	e0 0a                	loopne 201d74 <__init_array_end+0x4>
  201d6a:	00 00                	add    BYTE PTR [rax],al
  201d6c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000201d70 <__do_global_dtors_aux_fini_array_entry>:
  201d70:	a0                   	.byte 0xa0
  201d71:	0a 00                	or     al,BYTE PTR [rax]
  201d73:	00 00                	add    BYTE PTR [rax],al
  201d75:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000201d78 <_DYNAMIC>:
  201d78:	01 00                	add    DWORD PTR [rax],eax
  201d7a:	00 00                	add    BYTE PTR [rax],al
  201d7c:	00 00                	add    BYTE PTR [rax],al
  201d7e:	00 00                	add    BYTE PTR [rax],al
  201d80:	01 00                	add    DWORD PTR [rax],eax
  201d82:	00 00                	add    BYTE PTR [rax],al
  201d84:	00 00                	add    BYTE PTR [rax],al
  201d86:	00 00                	add    BYTE PTR [rax],al
  201d88:	0c 00                	or     al,0x0
  201d8a:	00 00                	add    BYTE PTR [rax],al
  201d8c:	00 00                	add    BYTE PTR [rax],al
  201d8e:	00 00                	add    BYTE PTR [rax],al
  201d90:	f0 08 00             	lock or BYTE PTR [rax],al
  201d93:	00 00                	add    BYTE PTR [rax],al
  201d95:	00 00                	add    BYTE PTR [rax],al
  201d97:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 201d9d <_DYNAMIC+0x25>
  201d9d:	00 00                	add    BYTE PTR [rax],al
  201d9f:	00 b4 11 00 00 00 00 	add    BYTE PTR [rcx+rdx*1+0x0],dh
  201da6:	00 00                	add    BYTE PTR [rax],al
  201da8:	19 00                	sbb    DWORD PTR [rax],eax
  201daa:	00 00                	add    BYTE PTR [rax],al
  201dac:	00 00                	add    BYTE PTR [rax],al
  201dae:	00 00                	add    BYTE PTR [rax],al
  201db0:	68 1d 20 00 00       	push   0x201d
  201db5:	00 00                	add    BYTE PTR [rax],al
  201db7:	00 1b                	add    BYTE PTR [rbx],bl
  201db9:	00 00                	add    BYTE PTR [rax],al
  201dbb:	00 00                	add    BYTE PTR [rax],al
  201dbd:	00 00                	add    BYTE PTR [rax],al
  201dbf:	00 08                	add    BYTE PTR [rax],cl
  201dc1:	00 00                	add    BYTE PTR [rax],al
  201dc3:	00 00                	add    BYTE PTR [rax],al
  201dc5:	00 00                	add    BYTE PTR [rax],al
  201dc7:	00 1a                	add    BYTE PTR [rdx],bl
  201dc9:	00 00                	add    BYTE PTR [rax],al
  201dcb:	00 00                	add    BYTE PTR [rax],al
  201dcd:	00 00                	add    BYTE PTR [rax],al
  201dcf:	00 70 1d             	add    BYTE PTR [rax+0x1d],dh
  201dd2:	20 00                	and    BYTE PTR [rax],al
  201dd4:	00 00                	add    BYTE PTR [rax],al
  201dd6:	00 00                	add    BYTE PTR [rax],al
  201dd8:	1c 00                	sbb    al,0x0
  201dda:	00 00                	add    BYTE PTR [rax],al
  201ddc:	00 00                	add    BYTE PTR [rax],al
  201dde:	00 00                	add    BYTE PTR [rax],al
  201de0:	08 00                	or     BYTE PTR [rax],al
  201de2:	00 00                	add    BYTE PTR [rax],al
  201de4:	00 00                	add    BYTE PTR [rax],al
  201de6:	00 00                	add    BYTE PTR [rax],al
  201de8:	f5                   	cmc    
  201de9:	fe                   	(bad)  
  201dea:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201ded:	00 00                	add    BYTE PTR [rax],al
  201def:	00 98 02 00 00 00    	add    BYTE PTR [rax+0x2],bl
  201df5:	00 00                	add    BYTE PTR [rax],al
  201df7:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 201dfd <_DYNAMIC+0x85>
  201dfd:	00 00                	add    BYTE PTR [rax],al
  201dff:	00 a8 04 00 00 00    	add    BYTE PTR [rax+0x4],ch
  201e05:	00 00                	add    BYTE PTR [rax],al
  201e07:	00 06                	add    BYTE PTR [rsi],al
  201e09:	00 00                	add    BYTE PTR [rax],al
  201e0b:	00 00                	add    BYTE PTR [rax],al
  201e0d:	00 00                	add    BYTE PTR [rax],al
  201e0f:	00 c8                	add    al,cl
  201e11:	02 00                	add    al,BYTE PTR [rax]
  201e13:	00 00                	add    BYTE PTR [rax],al
  201e15:	00 00                	add    BYTE PTR [rax],al
  201e17:	00 0a                	add    BYTE PTR [rdx],cl
  201e19:	00 00                	add    BYTE PTR [rax],al
  201e1b:	00 00                	add    BYTE PTR [rax],al
  201e1d:	00 00                	add    BYTE PTR [rax],al
  201e1f:	00 ef                	add    bh,ch
  201e21:	00 00                	add    BYTE PTR [rax],al
  201e23:	00 00                	add    BYTE PTR [rax],al
  201e25:	00 00                	add    BYTE PTR [rax],al
  201e27:	00 0b                	add    BYTE PTR [rbx],cl
  201e29:	00 00                	add    BYTE PTR [rax],al
  201e2b:	00 00                	add    BYTE PTR [rax],al
  201e2d:	00 00                	add    BYTE PTR [rax],al
  201e2f:	00 18                	add    BYTE PTR [rax],bl
  201e31:	00 00                	add    BYTE PTR [rax],al
  201e33:	00 00                	add    BYTE PTR [rax],al
  201e35:	00 00                	add    BYTE PTR [rax],al
  201e37:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 201e3d <_DYNAMIC+0xc5>
	...
  201e45:	00 00                	add    BYTE PTR [rax],al
  201e47:	00 03                	add    BYTE PTR [rbx],al
  201e49:	00 00                	add    BYTE PTR [rax],al
  201e4b:	00 00                	add    BYTE PTR [rax],al
  201e4d:	00 00                	add    BYTE PTR [rax],al
  201e4f:	00 68 1f             	add    BYTE PTR [rax+0x1f],ch
  201e52:	20 00                	and    BYTE PTR [rax],al
  201e54:	00 00                	add    BYTE PTR [rax],al
  201e56:	00 00                	add    BYTE PTR [rax],al
  201e58:	02 00                	add    al,BYTE PTR [rax]
  201e5a:	00 00                	add    BYTE PTR [rax],al
  201e5c:	00 00                	add    BYTE PTR [rax],al
  201e5e:	00 00                	add    BYTE PTR [rax],al
  201e60:	08 01                	or     BYTE PTR [rcx],al
  201e62:	00 00                	add    BYTE PTR [rax],al
  201e64:	00 00                	add    BYTE PTR [rax],al
  201e66:	00 00                	add    BYTE PTR [rax],al
  201e68:	14 00                	adc    al,0x0
  201e6a:	00 00                	add    BYTE PTR [rax],al
  201e6c:	00 00                	add    BYTE PTR [rax],al
  201e6e:	00 00                	add    BYTE PTR [rax],al
  201e70:	07                   	(bad)  
  201e71:	00 00                	add    BYTE PTR [rax],al
  201e73:	00 00                	add    BYTE PTR [rax],al
  201e75:	00 00                	add    BYTE PTR [rax],al
  201e77:	00 17                	add    BYTE PTR [rdi],dl
  201e79:	00 00                	add    BYTE PTR [rax],al
  201e7b:	00 00                	add    BYTE PTR [rax],al
  201e7d:	00 00                	add    BYTE PTR [rax],al
  201e7f:	00 e8                	add    al,ch
  201e81:	07                   	(bad)  
  201e82:	00 00                	add    BYTE PTR [rax],al
  201e84:	00 00                	add    BYTE PTR [rax],al
  201e86:	00 00                	add    BYTE PTR [rax],al
  201e88:	07                   	(bad)  
  201e89:	00 00                	add    BYTE PTR [rax],al
  201e8b:	00 00                	add    BYTE PTR [rax],al
  201e8d:	00 00                	add    BYTE PTR [rax],al
  201e8f:	00 f0                	add    al,dh
  201e91:	05 00 00 00 00       	add    eax,0x0
  201e96:	00 00                	add    BYTE PTR [rax],al
  201e98:	08 00                	or     BYTE PTR [rax],al
  201e9a:	00 00                	add    BYTE PTR [rax],al
  201e9c:	00 00                	add    BYTE PTR [rax],al
  201e9e:	00 00                	add    BYTE PTR [rax],al
  201ea0:	f8                   	clc    
  201ea1:	01 00                	add    DWORD PTR [rax],eax
  201ea3:	00 00                	add    BYTE PTR [rax],al
  201ea5:	00 00                	add    BYTE PTR [rax],al
  201ea7:	00 09                	add    BYTE PTR [rcx],cl
  201ea9:	00 00                	add    BYTE PTR [rax],al
  201eab:	00 00                	add    BYTE PTR [rax],al
  201ead:	00 00                	add    BYTE PTR [rax],al
  201eaf:	00 18                	add    BYTE PTR [rax],bl
  201eb1:	00 00                	add    BYTE PTR [rax],al
  201eb3:	00 00                	add    BYTE PTR [rax],al
  201eb5:	00 00                	add    BYTE PTR [rax],al
  201eb7:	00 1e                	add    BYTE PTR [rsi],bl
  201eb9:	00 00                	add    BYTE PTR [rax],al
  201ebb:	00 00                	add    BYTE PTR [rax],al
  201ebd:	00 00                	add    BYTE PTR [rax],al
  201ebf:	00 08                	add    BYTE PTR [rax],cl
  201ec1:	00 00                	add    BYTE PTR [rax],al
  201ec3:	00 00                	add    BYTE PTR [rax],al
  201ec5:	00 00                	add    BYTE PTR [rax],al
  201ec7:	00 fb                	add    bl,bh
  201ec9:	ff                   	(bad)  
  201eca:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201ecd:	00 00                	add    BYTE PTR [rax],al
  201ecf:	00 01                	add    BYTE PTR [rcx],al
  201ed1:	00 00                	add    BYTE PTR [rax],al
  201ed3:	08 00                	or     BYTE PTR [rax],al
  201ed5:	00 00                	add    BYTE PTR [rax],al
  201ed7:	00 fe                	add    dh,bh
  201ed9:	ff                   	(bad)  
  201eda:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201edd:	00 00                	add    BYTE PTR [rax],al
  201edf:	00 c0                	add    al,al
  201ee1:	05 00 00 00 00       	add    eax,0x0
  201ee6:	00 00                	add    BYTE PTR [rax],al
  201ee8:	ff                   	(bad)  
  201ee9:	ff                   	(bad)  
  201eea:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201eed:	00 00                	add    BYTE PTR [rax],al
  201eef:	00 01                	add    BYTE PTR [rcx],al
  201ef1:	00 00                	add    BYTE PTR [rax],al
  201ef3:	00 00                	add    BYTE PTR [rax],al
  201ef5:	00 00                	add    BYTE PTR [rax],al
  201ef7:	00 f0                	add    al,dh
  201ef9:	ff                   	(bad)  
  201efa:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201efd:	00 00                	add    BYTE PTR [rax],al
  201eff:	00 98 05 00 00 00    	add    BYTE PTR [rax+0x5],bl
  201f05:	00 00                	add    BYTE PTR [rax],al
  201f07:	00 f9                	add    cl,bh
  201f09:	ff                   	(bad)  
  201f0a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201f0d:	00 00                	add    BYTE PTR [rax],al
  201f0f:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 201f15 <_DYNAMIC+0x19d>
	...

Disassembly of section .got:

0000000000201f68 <_GLOBAL_OFFSET_TABLE_>:
  201f68:	78 1d                	js     201f87 <_GLOBAL_OFFSET_TABLE_+0x1f>
  201f6a:	20 00                	and    BYTE PTR [rax],al
	...
  201f80:	26 09 00             	or     DWORD PTR es:[rax],eax
  201f83:	00 00                	add    BYTE PTR [rax],al
  201f85:	00 00                	add    BYTE PTR [rax],al
  201f87:	00 36                	add    BYTE PTR [rsi],dh
  201f89:	09 00                	or     DWORD PTR [rax],eax
  201f8b:	00 00                	add    BYTE PTR [rax],al
  201f8d:	00 00                	add    BYTE PTR [rax],al
  201f8f:	00 46 09             	add    BYTE PTR [rsi+0x9],al
  201f92:	00 00                	add    BYTE PTR [rax],al
  201f94:	00 00                	add    BYTE PTR [rax],al
  201f96:	00 00                	add    BYTE PTR [rax],al
  201f98:	56                   	push   rsi
  201f99:	09 00                	or     DWORD PTR [rax],eax
  201f9b:	00 00                	add    BYTE PTR [rax],al
  201f9d:	00 00                	add    BYTE PTR [rax],al
  201f9f:	00 66 09             	add    BYTE PTR [rsi+0x9],ah
  201fa2:	00 00                	add    BYTE PTR [rax],al
  201fa4:	00 00                	add    BYTE PTR [rax],al
  201fa6:	00 00                	add    BYTE PTR [rax],al
  201fa8:	76 09                	jbe    201fb3 <_GLOBAL_OFFSET_TABLE_+0x4b>
  201faa:	00 00                	add    BYTE PTR [rax],al
  201fac:	00 00                	add    BYTE PTR [rax],al
  201fae:	00 00                	add    BYTE PTR [rax],al
  201fb0:	86 09                	xchg   BYTE PTR [rcx],cl
  201fb2:	00 00                	add    BYTE PTR [rax],al
  201fb4:	00 00                	add    BYTE PTR [rax],al
  201fb6:	00 00                	add    BYTE PTR [rax],al
  201fb8:	96                   	xchg   esi,eax
  201fb9:	09 00                	or     DWORD PTR [rax],eax
  201fbb:	00 00                	add    BYTE PTR [rax],al
  201fbd:	00 00                	add    BYTE PTR [rax],al
  201fbf:	00 a6 09 00 00 00    	add    BYTE PTR [rsi+0x9],ah
  201fc5:	00 00                	add    BYTE PTR [rax],al
  201fc7:	00 b6 09 00 00 00    	add    BYTE PTR [rsi+0x9],dh
  201fcd:	00 00                	add    BYTE PTR [rax],al
  201fcf:	00 c6                	add    dh,al
  201fd1:	09 00                	or     DWORD PTR [rax],eax
	...

Disassembly of section .data:

0000000000202000 <__data_start>:
	...

0000000000202008 <__dso_handle>:
  202008:	08 20                	or     BYTE PTR [rax],ah
  20200a:	20 00                	and    BYTE PTR [rax],al
	...

0000000000202020 <candidates_name>:
  202020:	c8 11 00 00          	enter  0x11,0x0
  202024:	00 00                	add    BYTE PTR [rax],al
  202026:	00 00                	add    BYTE PTR [rax],al
  202028:	d0 11                	rcl    BYTE PTR [rcx],1
  20202a:	00 00                	add    BYTE PTR [rax],al
  20202c:	00 00                	add    BYTE PTR [rax],al
  20202e:	00 00                	add    BYTE PTR [rax],al
  202030:	d9 11                	fst    DWORD PTR [rcx]
  202032:	00 00                	add    BYTE PTR [rax],al
  202034:	00 00                	add    BYTE PTR [rax],al
  202036:	00 00                	add    BYTE PTR [rax],al
  202038:	e6 11                	out    0x11,al
  20203a:	00 00                	add    BYTE PTR [rax],al
  20203c:	00 00                	add    BYTE PTR [rax],al
  20203e:	00 00                	add    BYTE PTR [rax],al
  202040:	f1                   	icebp  
  202041:	11 00                	adc    DWORD PTR [rax],eax
  202043:	00 00                	add    BYTE PTR [rax],al
  202045:	00 00                	add    BYTE PTR [rax],al
  202047:	00 f7                	add    bh,dh
  202049:	11 00                	adc    DWORD PTR [rax],eax
  20204b:	00 00                	add    BYTE PTR [rax],al
  20204d:	00 00                	add    BYTE PTR [rax],al
  20204f:	00 fd                	add    ch,bh
  202051:	11 00                	adc    DWORD PTR [rax],eax
  202053:	00 00                	add    BYTE PTR [rax],al
  202055:	00 00                	add    BYTE PTR [rax],al
  202057:	00 06                	add    BYTE PTR [rsi],al
  202059:	12 00                	adc    al,BYTE PTR [rax]
  20205b:	00 00                	add    BYTE PTR [rax],al
  20205d:	00 00                	add    BYTE PTR [rax],al
  20205f:	00 10                	add    BYTE PTR [rax],dl
  202061:	12 00                	adc    al,BYTE PTR [rax]
  202063:	00 00                	add    BYTE PTR [rax],al
  202065:	00 00                	add    BYTE PTR [rax],al
  202067:	00 1a                	add    BYTE PTR [rdx],bl
  202069:	12 00                	adc    al,BYTE PTR [rax]
  20206b:	00 00                	add    BYTE PTR [rax],al
  20206d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .bss:

0000000000202080 <stdout@@GLIBC_2.2.5>:
	...

0000000000202090 <stdin@@GLIBC_2.2.5>:
	...

00000000002020a0 <stderr@@GLIBC_2.2.5>:
	...

00000000002020a8 <completed.7697>:
  2020a8:	00 00                	add    BYTE PTR [rax],al
	...

00000000002020ac <vote>:
	...

00000000002020c0 <candidates>:
	...

0000000000202160 <buf>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x878>
   a:	74 75                	je     81 <_init-0x86f>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 34 2e             	cs xor al,0x2e
  11:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627548 <_end+0x75425320>
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	74 75                	je     8f <_init-0x861>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  22:	31 29                	xor    DWORD PTR [rcx],ebp
  24:	20 37                	and    BYTE PTR [rdi],dh
  26:	2e 34 2e             	cs xor al,0x2e
  29:	30 00                	xor    BYTE PTR [rax],al
