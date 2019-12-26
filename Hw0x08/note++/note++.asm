
note++:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	ins    BYTE PTR es:[rdi],dx
 23a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 246:	78 2d                	js     275 <_init-0x5b3>
 248:	78 38                	js     282 <_init-0x5a6>
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
 283:	00 16                	add    BYTE PTR [rsi],dl
 285:	0a 12                	or     dl,BYTE PTR [rdx]
 287:	f5                   	cmc    
 288:	ba 24 21 42 6f       	mov    edx,0x6f422124
 28d:	78 28                	js     2b7 <_init-0x571>
 28f:	e6 7f                	out    0x7f,al
 291:	03 30                	add    esi,DWORD PTR [rax]
 293:	f7                   	.byte 0xf7
 294:	b2 20                	mov    dl,0x20
 296:	0b                   	.byte 0xb
 297:	35                   	.byte 0x35

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
 2e0:	98                   	cwde   
 2e1:	00 00                	add    BYTE PTR [rax],al
 2e3:	00 12                	add    BYTE PTR [rdx],dl
	...
 2f5:	00 00                	add    BYTE PTR [rax],al
 2f7:	00 bd 00 00 00 20    	add    BYTE PTR [rbp+0x20000000],bh
	...
 30d:	00 00                	add    BYTE PTR [rax],al
 30f:	00 41 00             	add    BYTE PTR [rcx+0x0],al
 312:	00 00                	add    BYTE PTR [rax],al
 314:	12 00                	adc    al,BYTE PTR [rax]
	...
 326:	00 00                	add    BYTE PTR [rax],al
 328:	1a 00                	sbb    al,BYTE PTR [rax]
 32a:	00 00                	add    BYTE PTR [rax],al
 32c:	12 00                	adc    al,BYTE PTR [rax]
	...
 33e:	00 00                	add    BYTE PTR [rax],al
 340:	25 00 00 00 12       	and    eax,0x12000000
	...
 355:	00 00                	add    BYTE PTR [rax],al
 357:	00 2a                	add    BYTE PTR [rdx],ch
 359:	00 00                	add    BYTE PTR [rax],al
 35b:	00 12                	add    BYTE PTR [rdx],dl
	...
 36d:	00 00                	add    BYTE PTR [rax],al
 36f:	00 47 00             	add    BYTE PTR [rdi+0x0],al
 372:	00 00                	add    BYTE PTR [rax],al
 374:	12 00                	adc    al,BYTE PTR [rax]
	...
 386:	00 00                	add    BYTE PTR [rax],al
 388:	4e 00 00             	rex.WRX add BYTE PTR [rax],r8b
 38b:	00 12                	add    BYTE PTR [rdx],dl
	...
 39d:	00 00                	add    BYTE PTR [rax],al
 39f:	00 86 00 00 00 12    	add    BYTE PTR [rsi+0x12000000],al
	...
 3b5:	00 00                	add    BYTE PTR [rax],al
 3b7:	00 d9                	add    cl,bl
 3b9:	00 00                	add    BYTE PTR [rax],al
 3bb:	00 20                	add    BYTE PTR [rax],ah
	...
 3cd:	00 00                	add    BYTE PTR [rax],al
 3cf:	00 5c 00 00          	add    BYTE PTR [rax+rax*1+0x0],bl
 3d3:	00 12                	add    BYTE PTR [rdx],dl
	...
 3e5:	00 00                	add    BYTE PTR [rax],al
 3e7:	00 7e 00             	add    BYTE PTR [rsi+0x0],bh
 3ea:	00 00                	add    BYTE PTR [rax],al
 3ec:	12 00                	adc    al,BYTE PTR [rax]
	...
 3fe:	00 00                	add    BYTE PTR [rax],al
 400:	6a 00                	push   0x0
 402:	00 00                	add    BYTE PTR [rax],al
 404:	12 00                	adc    al,BYTE PTR [rax]
	...
 416:	00 00                	add    BYTE PTR [rax],al
 418:	0b 00                	or     eax,DWORD PTR [rax]
 41a:	00 00                	add    BYTE PTR [rax],al
 41c:	12 00                	adc    al,BYTE PTR [rax]
	...
 42e:	00 00                	add    BYTE PTR [rax],al
 430:	e8 00 00 00 20       	call   20000435 <_end+0x1fdfe155>
	...
 445:	00 00                	add    BYTE PTR [rax],al
 447:	00 6f 00             	add    BYTE PTR [rdi+0x0],ch
 44a:	00 00                	add    BYTE PTR [rax],al
 44c:	22 00                	and    al,BYTE PTR [rax]
	...
 45e:	00 00                	add    BYTE PTR [rax],al
 460:	55                   	push   rbp
 461:	00 00                	add    BYTE PTR [rax],al
 463:	00 11                	add    BYTE PTR [rcx],dl
 465:	00 18                	add    BYTE PTR [rax],bl
 467:	00 20                	add    BYTE PTR [rax],ah
 469:	20 20                	and    BYTE PTR [rax],ah
 46b:	00 00                	add    BYTE PTR [rax],al
 46d:	00 00                	add    BYTE PTR [rax],al
 46f:	00 08                	add    BYTE PTR [rax],cl
 471:	00 00                	add    BYTE PTR [rax],al
 473:	00 00                	add    BYTE PTR [rax],al
 475:	00 00                	add    BYTE PTR [rax],al
 477:	00 3b                	add    BYTE PTR [rbx],bh
 479:	00 00                	add    BYTE PTR [rax],al
 47b:	00 11                	add    BYTE PTR [rcx],dl
 47d:	00 18                	add    BYTE PTR [rax],bl
 47f:	00 30                	add    BYTE PTR [rax],dh
 481:	20 20                	and    BYTE PTR [rax],ah
 483:	00 00                	add    BYTE PTR [rax],al
 485:	00 00                	add    BYTE PTR [rax],al
 487:	00 08                	add    BYTE PTR [rax],cl
 489:	00 00                	add    BYTE PTR [rax],al
 48b:	00 00                	add    BYTE PTR [rax],al
 48d:	00 00                	add    BYTE PTR [rax],al
 48f:	00 63 00             	add    BYTE PTR [rbx+0x0],ah
 492:	00 00                	add    BYTE PTR [rax],al
 494:	11 00                	adc    DWORD PTR [rax],eax
 496:	18 00                	sbb    BYTE PTR [rax],al
 498:	40 20 20             	and    BYTE PTR [rax],spl
 49b:	00 00                	add    BYTE PTR [rax],al
 49d:	00 00                	add    BYTE PTR [rax],al
 49f:	00 08                	add    BYTE PTR [rax],cl
 4a1:	00 00                	add    BYTE PTR [rax],al
 4a3:	00 00                	add    BYTE PTR [rax],al
 4a5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

00000000000004a8 <.dynstr>:
 4a8:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 4ac:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 4ae:	73 6f                	jae    51f <_init-0x309>
 4b0:	2e 36 00 5f 5f       	cs add BYTE PTR ss:[rdi+0x5f],bl
 4b5:	69 73 6f 63 39 39 5f 	imul   esi,DWORD PTR [rbx+0x6f],0x5f393963
 4bc:	73 63                	jae    521 <_init-0x307>
 4be:	61                   	(bad)  
 4bf:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 4c0:	66 00 5f 5f          	data16 add BYTE PTR [rdi+0x5f],bl
 4c4:	72 65                	jb     52b <_init-0x2fd>
 4c6:	61                   	(bad)  
 4c7:	64 5f                	fs pop rdi
 4c9:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 4cc:	00 70 75             	add    BYTE PTR [rax+0x75],dh
 4cf:	74 73                	je     544 <_init-0x2e4>
 4d1:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 4d4:	73 74                	jae    54a <_init-0x2de>
 4d6:	61                   	(bad)  
 4d7:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 4da:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 4dd:	5f                   	pop    rdi
 4de:	66 61                	data16 (bad) 
 4e0:	69 6c 00 73 74 64 69 	imul   ebp,DWORD PTR [rax+rax*1+0x73],0x6e696474
 4e7:	6e 
 4e8:	00 5f 65             	add    BYTE PTR [rdi+0x65],bl
 4eb:	78 69                	js     556 <_init-0x2d2>
 4ed:	74 00                	je     4ef <_init-0x339>
 4ef:	70 72                	jo     563 <_init-0x2c5>
 4f1:	69 6e 74 66 00 6d 65 	imul   ebp,DWORD PTR [rsi+0x74],0x656d0066
 4f8:	6d                   	ins    DWORD PTR es:[rdi],dx
 4f9:	73 65                	jae    560 <_init-0x2c8>
 4fb:	74 00                	je     4fd <_init-0x32b>
 4fd:	73 74                	jae    573 <_init-0x2b5>
 4ff:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 501:	75 74                	jne    577 <_init-0x2b1>
 503:	00 6d 61             	add    BYTE PTR [rbp+0x61],ch
 506:	6c                   	ins    BYTE PTR es:[rdi],dx
 507:	6c                   	ins    BYTE PTR es:[rdi],dx
 508:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 509:	63 00                	movsxd eax,DWORD PTR [rax]
 50b:	73 74                	jae    581 <_init-0x2a7>
 50d:	64 65 72 72          	fs gs jb 583 <_init-0x2a5>
 511:	00 61 74             	add    BYTE PTR [rcx+0x74],ah
 514:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 515:	69 00 5f 5f 63 78    	imul   eax,DWORD PTR [rax],0x78635f5f
 51b:	61                   	(bad)  
 51c:	5f                   	pop    rdi
 51d:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 523:	7a 65                	jp     58a <_init-0x29e>
 525:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
 528:	74 76                	je     5a0 <_init-0x288>
 52a:	62                   	(bad)  
 52b:	75 66                	jne    593 <_init-0x295>
 52d:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 530:	6c                   	ins    BYTE PTR es:[rdi],dx
 531:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 538:	72 74                	jb     5ae <_init-0x27a>
 53a:	5f                   	pop    rdi
 53b:	6d                   	ins    DWORD PTR es:[rdi],dx
 53c:	61                   	(bad)  
 53d:	69 6e 00 66 72 65 65 	imul   ebp,DWORD PTR [rsi+0x0],0x65657266
 544:	00 47 4c             	add    BYTE PTR [rdi+0x4c],al
 547:	49                   	rex.WB
 548:	42                   	rex.X
 549:	43 5f                	rex.XB pop r15
 54b:	32 2e                	xor    ch,BYTE PTR [rsi]
 54d:	37                   	(bad)  
 54e:	00 47 4c             	add    BYTE PTR [rdi+0x4c],al
 551:	49                   	rex.WB
 552:	42                   	rex.X
 553:	43 5f                	rex.XB pop r15
 555:	32 2e                	xor    ch,BYTE PTR [rsi]
 557:	34 00                	xor    al,0x0
 559:	47                   	rex.RXB
 55a:	4c                   	rex.WR
 55b:	49                   	rex.WB
 55c:	42                   	rex.X
 55d:	43 5f                	rex.XB pop r15
 55f:	32 2e                	xor    ch,BYTE PTR [rsi]
 561:	32 2e                	xor    ch,BYTE PTR [rsi]
 563:	35 00 5f 49 54       	xor    eax,0x54495f00
 568:	4d 5f                	rex.WRB pop r15
 56a:	64 65 72 65          	fs gs jb 5d3 <_init-0x255>
 56e:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 575:	4d 
 576:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 578:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 579:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 57a:	65 54                	gs push rsp
 57c:	61                   	(bad)  
 57d:	62                   	(bad)  
 57e:	6c                   	ins    BYTE PTR es:[rdi],dx
 57f:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
 583:	67 6d                	ins    DWORD PTR es:[edi],dx
 585:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 586:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 587:	5f                   	pop    rdi
 588:	73 74                	jae    5fe <_init-0x22a>
 58a:	61                   	(bad)  
 58b:	72 74                	jb     601 <_init-0x227>
 58d:	5f                   	pop    rdi
 58e:	5f                   	pop    rdi
 58f:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 592:	54                   	push   rsp
 593:	4d 5f                	rex.WRB pop r15
 595:	72 65                	jb     5fc <_init-0x22c>
 597:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 59e:	4d 
 59f:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 5a1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 5a2:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 5a3:	65 54                	gs push rsp
 5a5:	61                   	(bad)  
 5a6:	62                   	.byte 0x62
 5a7:	6c                   	ins    BYTE PTR es:[rdi],dx
 5a8:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000005aa <.gnu.version>:
 5aa:	00 00                	add    BYTE PTR [rax],al
 5ac:	02 00                	add    al,BYTE PTR [rax]
 5ae:	00 00                	add    BYTE PTR [rax],al
 5b0:	02 00                	add    al,BYTE PTR [rax]
 5b2:	03 00                	add    eax,DWORD PTR [rax]
 5b4:	02 00                	add    al,BYTE PTR [rax]
 5b6:	03 00                	add    eax,DWORD PTR [rax]
 5b8:	02 00                	add    al,BYTE PTR [rax]
 5ba:	02 00                	add    al,BYTE PTR [rax]
 5bc:	02 00                	add    al,BYTE PTR [rax]
 5be:	00 00                	add    BYTE PTR [rax],al
 5c0:	02 00                	add    al,BYTE PTR [rax]
 5c2:	02 00                	add    al,BYTE PTR [rax]
 5c4:	02 00                	add    al,BYTE PTR [rax]
 5c6:	04 00                	add    al,0x0
 5c8:	00 00                	add    BYTE PTR [rax],al
 5ca:	02 00                	add    al,BYTE PTR [rax]
 5cc:	02 00                	add    al,BYTE PTR [rax]
 5ce:	02 00                	add    al,BYTE PTR [rax]
 5d0:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

00000000000005d8 <.gnu.version_r>:
 5d8:	01 00                	add    DWORD PTR [rax],eax
 5da:	03 00                	add    eax,DWORD PTR [rax]
 5dc:	01 00                	add    DWORD PTR [rax],eax
 5de:	00 00                	add    BYTE PTR [rax],al
 5e0:	10 00                	adc    BYTE PTR [rax],al
 5e2:	00 00                	add    BYTE PTR [rax],al
 5e4:	00 00                	add    BYTE PTR [rax],al
 5e6:	00 00                	add    BYTE PTR [rax],al
 5e8:	17                   	(bad)  
 5e9:	69 69 0d 00 00 04 00 	imul   ebp,DWORD PTR [rcx+0xd],0x40000
 5f0:	9d                   	popf   
 5f1:	00 00                	add    BYTE PTR [rax],al
 5f3:	00 10                	add    BYTE PTR [rax],dl
 5f5:	00 00                	add    BYTE PTR [rax],al
 5f7:	00 14 69             	add    BYTE PTR [rcx+rbp*2],dl
 5fa:	69 0d 00 00 03 00 a7 	imul   ecx,DWORD PTR [rip+0x30000],0xa7        # 30604 <__FRAME_END__+0x2f300>
 601:	00 00 00 
 604:	10 00                	adc    BYTE PTR [rax],al
 606:	00 00                	add    BYTE PTR [rax],al
 608:	75 1a                	jne    624 <_init-0x204>
 60a:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 610:	b1 00                	mov    cl,0x0
 612:	00 00                	add    BYTE PTR [rax],al
 614:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000000618 <.rela.dyn>:
 618:	68 1d 20 00 00       	push   0x201d
 61d:	00 00                	add    BYTE PTR [rax],al
 61f:	00 08                	add    BYTE PTR [rax],cl
 621:	00 00                	add    BYTE PTR [rax],al
 623:	00 00                	add    BYTE PTR [rax],al
 625:	00 00                	add    BYTE PTR [rax],al
 627:	00 10                	add    BYTE PTR [rax],dl
 629:	0a 00                	or     al,BYTE PTR [rax]
 62b:	00 00                	add    BYTE PTR [rax],al
 62d:	00 00                	add    BYTE PTR [rax],al
 62f:	00 70 1d             	add    BYTE PTR [rax+0x1d],dh
 632:	20 00                	and    BYTE PTR [rax],al
 634:	00 00                	add    BYTE PTR [rax],al
 636:	00 00                	add    BYTE PTR [rax],al
 638:	08 00                	or     BYTE PTR [rax],al
 63a:	00 00                	add    BYTE PTR [rax],al
 63c:	00 00                	add    BYTE PTR [rax],al
 63e:	00 00                	add    BYTE PTR [rax],al
 640:	d0 09                	ror    BYTE PTR [rcx],1
 642:	00 00                	add    BYTE PTR [rax],al
 644:	00 00                	add    BYTE PTR [rax],al
 646:	00 00                	add    BYTE PTR [rax],al
 648:	08 20                	or     BYTE PTR [rax],ah
 64a:	20 00                	and    BYTE PTR [rax],al
 64c:	00 00                	add    BYTE PTR [rax],al
 64e:	00 00                	add    BYTE PTR [rax],al
 650:	08 00                	or     BYTE PTR [rax],al
 652:	00 00                	add    BYTE PTR [rax],al
 654:	00 00                	add    BYTE PTR [rax],al
 656:	00 00                	add    BYTE PTR [rax],al
 658:	08 20                	or     BYTE PTR [rax],ah
 65a:	20 00                	and    BYTE PTR [rax],al
 65c:	00 00                	add    BYTE PTR [rax],al
 65e:	00 00                	add    BYTE PTR [rax],al
 660:	d8 1f                	fcomp  DWORD PTR [rdi]
 662:	20 00                	and    BYTE PTR [rax],al
 664:	00 00                	add    BYTE PTR [rax],al
 666:	00 00                	add    BYTE PTR [rax],al
 668:	06                   	(bad)  
 669:	00 00                	add    BYTE PTR [rax],al
 66b:	00 02                	add    BYTE PTR [rdx],al
	...
 675:	00 00                	add    BYTE PTR [rax],al
 677:	00 e0                	add    al,ah
 679:	1f                   	(bad)  
 67a:	20 00                	and    BYTE PTR [rax],al
 67c:	00 00                	add    BYTE PTR [rax],al
 67e:	00 00                	add    BYTE PTR [rax],al
 680:	06                   	(bad)  
 681:	00 00                	add    BYTE PTR [rax],al
 683:	00 09                	add    BYTE PTR [rcx],cl
	...
 68d:	00 00                	add    BYTE PTR [rax],al
 68f:	00 e8                	add    al,ch
 691:	1f                   	(bad)  
 692:	20 00                	and    BYTE PTR [rax],al
 694:	00 00                	add    BYTE PTR [rax],al
 696:	00 00                	add    BYTE PTR [rax],al
 698:	06                   	(bad)  
 699:	00 00                	add    BYTE PTR [rax],al
 69b:	00 0a                	add    BYTE PTR [rdx],cl
	...
 6a5:	00 00                	add    BYTE PTR [rax],al
 6a7:	00 f0                	add    al,dh
 6a9:	1f                   	(bad)  
 6aa:	20 00                	and    BYTE PTR [rax],al
 6ac:	00 00                	add    BYTE PTR [rax],al
 6ae:	00 00                	add    BYTE PTR [rax],al
 6b0:	06                   	(bad)  
 6b1:	00 00                	add    BYTE PTR [rax],al
 6b3:	00 0f                	add    BYTE PTR [rdi],cl
	...
 6bd:	00 00                	add    BYTE PTR [rax],al
 6bf:	00 f8                	add    al,bh
 6c1:	1f                   	(bad)  
 6c2:	20 00                	and    BYTE PTR [rax],al
 6c4:	00 00                	add    BYTE PTR [rax],al
 6c6:	00 00                	add    BYTE PTR [rax],al
 6c8:	06                   	(bad)  
 6c9:	00 00                	add    BYTE PTR [rax],al
 6cb:	00 10                	add    BYTE PTR [rax],dl
	...
 6d5:	00 00                	add    BYTE PTR [rax],al
 6d7:	00 20                	add    BYTE PTR [rax],ah
 6d9:	20 20                	and    BYTE PTR [rax],ah
 6db:	00 00                	add    BYTE PTR [rax],al
 6dd:	00 00                	add    BYTE PTR [rax],al
 6df:	00 05 00 00 00 11    	add    BYTE PTR [rip+0x11000000],al        # 110006e5 <_end+0x10dfe405>
	...
 6ed:	00 00                	add    BYTE PTR [rax],al
 6ef:	00 30                	add    BYTE PTR [rax],dh
 6f1:	20 20                	and    BYTE PTR [rax],ah
 6f3:	00 00                	add    BYTE PTR [rax],al
 6f5:	00 00                	add    BYTE PTR [rax],al
 6f7:	00 05 00 00 00 12    	add    BYTE PTR [rip+0x12000000],al        # 120006fd <_end+0x11dfe41d>
	...
 705:	00 00                	add    BYTE PTR [rax],al
 707:	00 40 20             	add    BYTE PTR [rax+0x20],al
 70a:	20 00                	and    BYTE PTR [rax],al
 70c:	00 00                	add    BYTE PTR [rax],al
 70e:	00 00                	add    BYTE PTR [rax],al
 710:	05 00 00 00 13       	add    eax,0x13000000
	...

Disassembly of section .rela.plt:

0000000000000720 <.rela.plt>:
 720:	80 1f 20             	sbb    BYTE PTR [rdi],0x20
 723:	00 00                	add    BYTE PTR [rax],al
 725:	00 00                	add    BYTE PTR [rax],al
 727:	00 07                	add    BYTE PTR [rdi],al
 729:	00 00                	add    BYTE PTR [rax],al
 72b:	00 01                	add    BYTE PTR [rcx],al
	...
 735:	00 00                	add    BYTE PTR [rax],al
 737:	00 88 1f 20 00 00    	add    BYTE PTR [rax+0x201f],cl
 73d:	00 00                	add    BYTE PTR [rax],al
 73f:	00 07                	add    BYTE PTR [rdi],al
 741:	00 00                	add    BYTE PTR [rax],al
 743:	00 03                	add    BYTE PTR [rbx],al
	...
 74d:	00 00                	add    BYTE PTR [rax],al
 74f:	00 90 1f 20 00 00    	add    BYTE PTR [rax+0x201f],dl
 755:	00 00                	add    BYTE PTR [rax],al
 757:	00 07                	add    BYTE PTR [rdi],al
 759:	00 00                	add    BYTE PTR [rax],al
 75b:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 766:	00 00                	add    BYTE PTR [rax],al
 768:	98                   	cwde   
 769:	1f                   	(bad)  
 76a:	20 00                	and    BYTE PTR [rax],al
 76c:	00 00                	add    BYTE PTR [rax],al
 76e:	00 00                	add    BYTE PTR [rax],al
 770:	07                   	(bad)  
 771:	00 00                	add    BYTE PTR [rax],al
 773:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 779 <_init-0xaf>
 779:	00 00                	add    BYTE PTR [rax],al
 77b:	00 00                	add    BYTE PTR [rax],al
 77d:	00 00                	add    BYTE PTR [rax],al
 77f:	00 a0 1f 20 00 00    	add    BYTE PTR [rax+0x201f],ah
 785:	00 00                	add    BYTE PTR [rax],al
 787:	00 07                	add    BYTE PTR [rdi],al
 789:	00 00                	add    BYTE PTR [rax],al
 78b:	00 06                	add    BYTE PTR [rsi],al
	...
 795:	00 00                	add    BYTE PTR [rax],al
 797:	00 a8 1f 20 00 00    	add    BYTE PTR [rax+0x201f],ch
 79d:	00 00                	add    BYTE PTR [rax],al
 79f:	00 07                	add    BYTE PTR [rdi],al
 7a1:	00 00                	add    BYTE PTR [rax],al
 7a3:	00 07                	add    BYTE PTR [rdi],al
	...
 7ad:	00 00                	add    BYTE PTR [rax],al
 7af:	00 b0 1f 20 00 00    	add    BYTE PTR [rax+0x201f],dh
 7b5:	00 00                	add    BYTE PTR [rax],al
 7b7:	00 07                	add    BYTE PTR [rdi],al
 7b9:	00 00                	add    BYTE PTR [rax],al
 7bb:	00 08                	add    BYTE PTR [rax],cl
	...
 7c5:	00 00                	add    BYTE PTR [rax],al
 7c7:	00 b8 1f 20 00 00    	add    BYTE PTR [rax+0x201f],bh
 7cd:	00 00                	add    BYTE PTR [rax],al
 7cf:	00 07                	add    BYTE PTR [rdi],al
 7d1:	00 00                	add    BYTE PTR [rax],al
 7d3:	00 0b                	add    BYTE PTR [rbx],cl
	...
 7dd:	00 00                	add    BYTE PTR [rax],al
 7df:	00 c0                	add    al,al
 7e1:	1f                   	(bad)  
 7e2:	20 00                	and    BYTE PTR [rax],al
 7e4:	00 00                	add    BYTE PTR [rax],al
 7e6:	00 00                	add    BYTE PTR [rax],al
 7e8:	07                   	(bad)  
 7e9:	00 00                	add    BYTE PTR [rax],al
 7eb:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...
 7f6:	00 00                	add    BYTE PTR [rax],al
 7f8:	c8 1f 20 00          	enter  0x201f,0x0
 7fc:	00 00                	add    BYTE PTR [rax],al
 7fe:	00 00                	add    BYTE PTR [rax],al
 800:	07                   	(bad)  
 801:	00 00                	add    BYTE PTR [rax],al
 803:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 809 <_init-0x1f>
 809:	00 00                	add    BYTE PTR [rax],al
 80b:	00 00                	add    BYTE PTR [rax],al
 80d:	00 00                	add    BYTE PTR [rax],al
 80f:	00 d0                	add    al,dl
 811:	1f                   	(bad)  
 812:	20 00                	and    BYTE PTR [rax],al
 814:	00 00                	add    BYTE PTR [rax],al
 816:	00 00                	add    BYTE PTR [rax],al
 818:	07                   	(bad)  
 819:	00 00                	add    BYTE PTR [rax],al
 81b:	00 0e                	add    BYTE PTR [rsi],cl
	...

Disassembly of section .init:

0000000000000828 <_init>:
 828:	48 83 ec 08          	sub    rsp,0x8
 82c:	48 8b 05 b5 17 20 00 	mov    rax,QWORD PTR [rip+0x2017b5]        # 201fe8 <_GLOBAL_OFFSET_TABLE_+0x80>
 833:	48 85 c0             	test   rax,rax
 836:	74 02                	je     83a <_init+0x12>
 838:	ff d0                	call   rax
 83a:	48 83 c4 08          	add    rsp,0x8
 83e:	c3                   	ret    

Disassembly of section .plt:

0000000000000840 <free@plt-0x10>:
 840:	ff 35 2a 17 20 00    	push   QWORD PTR [rip+0x20172a]        # 201f70 <_GLOBAL_OFFSET_TABLE_+0x8>
 846:	ff 25 2c 17 20 00    	jmp    QWORD PTR [rip+0x20172c]        # 201f78 <_GLOBAL_OFFSET_TABLE_+0x10>
 84c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000850 <free@plt>:
 850:	ff 25 2a 17 20 00    	jmp    QWORD PTR [rip+0x20172a]        # 201f80 <_GLOBAL_OFFSET_TABLE_+0x18>
 856:	68 00 00 00 00       	push   0x0
 85b:	e9 e0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000860 <_exit@plt>:
 860:	ff 25 22 17 20 00    	jmp    QWORD PTR [rip+0x201722]        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x20>
 866:	68 01 00 00 00       	push   0x1
 86b:	e9 d0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000870 <__read_chk@plt>:
 870:	ff 25 1a 17 20 00    	jmp    QWORD PTR [rip+0x20171a]        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x28>
 876:	68 02 00 00 00       	push   0x2
 87b:	e9 c0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000880 <puts@plt>:
 880:	ff 25 12 17 20 00    	jmp    QWORD PTR [rip+0x201712]        # 201f98 <_GLOBAL_OFFSET_TABLE_+0x30>
 886:	68 03 00 00 00       	push   0x3
 88b:	e9 b0 ff ff ff       	jmp    840 <_init+0x18>

0000000000000890 <__stack_chk_fail@plt>:
 890:	ff 25 0a 17 20 00    	jmp    QWORD PTR [rip+0x20170a]        # 201fa0 <_GLOBAL_OFFSET_TABLE_+0x38>
 896:	68 04 00 00 00       	push   0x4
 89b:	e9 a0 ff ff ff       	jmp    840 <_init+0x18>

00000000000008a0 <printf@plt>:
 8a0:	ff 25 02 17 20 00    	jmp    QWORD PTR [rip+0x201702]        # 201fa8 <_GLOBAL_OFFSET_TABLE_+0x40>
 8a6:	68 05 00 00 00       	push   0x5
 8ab:	e9 90 ff ff ff       	jmp    840 <_init+0x18>

00000000000008b0 <memset@plt>:
 8b0:	ff 25 fa 16 20 00    	jmp    QWORD PTR [rip+0x2016fa]        # 201fb0 <_GLOBAL_OFFSET_TABLE_+0x48>
 8b6:	68 06 00 00 00       	push   0x6
 8bb:	e9 80 ff ff ff       	jmp    840 <_init+0x18>

00000000000008c0 <malloc@plt>:
 8c0:	ff 25 f2 16 20 00    	jmp    QWORD PTR [rip+0x2016f2]        # 201fb8 <_GLOBAL_OFFSET_TABLE_+0x50>
 8c6:	68 07 00 00 00       	push   0x7
 8cb:	e9 70 ff ff ff       	jmp    840 <_init+0x18>

00000000000008d0 <setvbuf@plt>:
 8d0:	ff 25 ea 16 20 00    	jmp    QWORD PTR [rip+0x2016ea]        # 201fc0 <_GLOBAL_OFFSET_TABLE_+0x58>
 8d6:	68 08 00 00 00       	push   0x8
 8db:	e9 60 ff ff ff       	jmp    840 <_init+0x18>

00000000000008e0 <atoi@plt>:
 8e0:	ff 25 e2 16 20 00    	jmp    QWORD PTR [rip+0x2016e2]        # 201fc8 <_GLOBAL_OFFSET_TABLE_+0x60>
 8e6:	68 09 00 00 00       	push   0x9
 8eb:	e9 50 ff ff ff       	jmp    840 <_init+0x18>

00000000000008f0 <__isoc99_scanf@plt>:
 8f0:	ff 25 da 16 20 00    	jmp    QWORD PTR [rip+0x2016da]        # 201fd0 <_GLOBAL_OFFSET_TABLE_+0x68>
 8f6:	68 0a 00 00 00       	push   0xa
 8fb:	e9 40 ff ff ff       	jmp    840 <_init+0x18>

Disassembly of section .plt.got:

0000000000000900 <.plt.got>:
 900:	ff 25 f2 16 20 00    	jmp    QWORD PTR [rip+0x2016f2]        # 201ff8 <_GLOBAL_OFFSET_TABLE_+0x90>
 906:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000910 <_start>:
 910:	31 ed                	xor    ebp,ebp
 912:	49 89 d1             	mov    r9,rdx
 915:	5e                   	pop    rsi
 916:	48 89 e2             	mov    rdx,rsp
 919:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 91d:	50                   	push   rax
 91e:	54                   	push   rsp
 91f:	4c 8d 05 4a 06 00 00 	lea    r8,[rip+0x64a]        # f70 <__libc_csu_fini>
 926:	48 8d 0d d3 05 00 00 	lea    rcx,[rip+0x5d3]        # f00 <__libc_csu_init>
 92d:	48 8d 3d 5e 05 00 00 	lea    rdi,[rip+0x55e]        # e92 <main>
 934:	ff 15 a6 16 20 00    	call   QWORD PTR [rip+0x2016a6]        # 201fe0 <_GLOBAL_OFFSET_TABLE_+0x78>
 93a:	f4                   	hlt    
 93b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000940 <deregister_tm_clones>:
 940:	48 8d 3d c9 16 20 00 	lea    rdi,[rip+0x2016c9]        # 202010 <__TMC_END__>
 947:	55                   	push   rbp
 948:	48 8d 05 c1 16 20 00 	lea    rax,[rip+0x2016c1]        # 202010 <__TMC_END__>
 94f:	48 39 f8             	cmp    rax,rdi
 952:	48 89 e5             	mov    rbp,rsp
 955:	74 19                	je     970 <deregister_tm_clones+0x30>
 957:	48 8b 05 7a 16 20 00 	mov    rax,QWORD PTR [rip+0x20167a]        # 201fd8 <_GLOBAL_OFFSET_TABLE_+0x70>
 95e:	48 85 c0             	test   rax,rax
 961:	74 0d                	je     970 <deregister_tm_clones+0x30>
 963:	5d                   	pop    rbp
 964:	ff e0                	jmp    rax
 966:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 96d:	00 00 00 
 970:	5d                   	pop    rbp
 971:	c3                   	ret    
 972:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 976:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 97d:	00 00 00 

0000000000000980 <register_tm_clones>:
 980:	48 8d 3d 89 16 20 00 	lea    rdi,[rip+0x201689]        # 202010 <__TMC_END__>
 987:	48 8d 35 82 16 20 00 	lea    rsi,[rip+0x201682]        # 202010 <__TMC_END__>
 98e:	55                   	push   rbp
 98f:	48 29 fe             	sub    rsi,rdi
 992:	48 89 e5             	mov    rbp,rsp
 995:	48 c1 fe 03          	sar    rsi,0x3
 999:	48 89 f0             	mov    rax,rsi
 99c:	48 c1 e8 3f          	shr    rax,0x3f
 9a0:	48 01 c6             	add    rsi,rax
 9a3:	48 d1 fe             	sar    rsi,1
 9a6:	74 18                	je     9c0 <register_tm_clones+0x40>
 9a8:	48 8b 05 41 16 20 00 	mov    rax,QWORD PTR [rip+0x201641]        # 201ff0 <_GLOBAL_OFFSET_TABLE_+0x88>
 9af:	48 85 c0             	test   rax,rax
 9b2:	74 0c                	je     9c0 <register_tm_clones+0x40>
 9b4:	5d                   	pop    rbp
 9b5:	ff e0                	jmp    rax
 9b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 9be:	00 00 
 9c0:	5d                   	pop    rbp
 9c1:	c3                   	ret    
 9c2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 9c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 9cd:	00 00 00 

00000000000009d0 <__do_global_dtors_aux>:
 9d0:	80 3d 71 16 20 00 00 	cmp    BYTE PTR [rip+0x201671],0x0        # 202048 <completed.7697>
 9d7:	75 2f                	jne    a08 <__do_global_dtors_aux+0x38>
 9d9:	48 83 3d 17 16 20 00 	cmp    QWORD PTR [rip+0x201617],0x0        # 201ff8 <_GLOBAL_OFFSET_TABLE_+0x90>
 9e0:	00 
 9e1:	55                   	push   rbp
 9e2:	48 89 e5             	mov    rbp,rsp
 9e5:	74 0c                	je     9f3 <__do_global_dtors_aux+0x23>
 9e7:	48 8b 3d 1a 16 20 00 	mov    rdi,QWORD PTR [rip+0x20161a]        # 202008 <__dso_handle>
 9ee:	e8 0d ff ff ff       	call   900 <__isoc99_scanf@plt+0x10>
 9f3:	e8 48 ff ff ff       	call   940 <deregister_tm_clones>
 9f8:	c6 05 49 16 20 00 01 	mov    BYTE PTR [rip+0x201649],0x1        # 202048 <completed.7697>
 9ff:	5d                   	pop    rbp
 a00:	c3                   	ret    
 a01:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 a08:	f3 c3                	repz ret 
 a0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000a10 <frame_dummy>:
 a10:	55                   	push   rbp
 a11:	48 89 e5             	mov    rbp,rsp
 a14:	5d                   	pop    rbp
 a15:	e9 66 ff ff ff       	jmp    980 <register_tm_clones>

0000000000000a1a <init>:
 a1a:	55                   	push   rbp
 a1b:	48 89 e5             	mov    rbp,rsp
 a1e:	48 8b 05 fb 15 20 00 	mov    rax,QWORD PTR [rip+0x2015fb]        # 202020 <stdout@@GLIBC_2.2.5>
 a25:	b9 00 00 00 00       	mov    ecx,0x0
 a2a:	ba 02 00 00 00       	mov    edx,0x2
 a2f:	be 00 00 00 00       	mov    esi,0x0
 a34:	48 89 c7             	mov    rdi,rax
 a37:	e8 94 fe ff ff       	call   8d0 <setvbuf@plt>
 a3c:	48 8b 05 ed 15 20 00 	mov    rax,QWORD PTR [rip+0x2015ed]        # 202030 <stdin@@GLIBC_2.2.5>
 a43:	b9 00 00 00 00       	mov    ecx,0x0
 a48:	ba 02 00 00 00       	mov    edx,0x2
 a4d:	be 00 00 00 00       	mov    esi,0x0
 a52:	48 89 c7             	mov    rdi,rax
 a55:	e8 76 fe ff ff       	call   8d0 <setvbuf@plt>
 a5a:	48 8b 05 df 15 20 00 	mov    rax,QWORD PTR [rip+0x2015df]        # 202040 <stderr@@GLIBC_2.2.5>
 a61:	b9 00 00 00 00       	mov    ecx,0x0
 a66:	ba 02 00 00 00       	mov    edx,0x2
 a6b:	be 00 00 00 00       	mov    esi,0x0
 a70:	48 89 c7             	mov    rdi,rax
 a73:	e8 58 fe ff ff       	call   8d0 <setvbuf@plt>
 a78:	90                   	nop
 a79:	5d                   	pop    rbp
 a7a:	c3                   	ret    

0000000000000a7b <read_int>:
 a7b:	55                   	push   rbp
 a7c:	48 89 e5             	mov    rbp,rsp
 a7f:	48 83 ec 20          	sub    rsp,0x20
 a83:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 a8a:	00 00 
 a8c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 a90:	31 c0                	xor    eax,eax
 a92:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 a96:	b9 10 00 00 00       	mov    ecx,0x10
 a9b:	ba 0f 00 00 00       	mov    edx,0xf
 aa0:	48 89 c6             	mov    rsi,rax
 aa3:	bf 00 00 00 00       	mov    edi,0x0
 aa8:	b8 00 00 00 00       	mov    eax,0x0
 aad:	e8 be fd ff ff       	call   870 <__read_chk@plt>
 ab2:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 ab6:	48 89 c7             	mov    rdi,rax
 ab9:	e8 22 fe ff ff       	call   8e0 <atoi@plt>
 abe:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 ac2:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
 ac9:	00 00 
 acb:	74 05                	je     ad2 <read_int+0x57>
 acd:	e8 be fd ff ff       	call   890 <__stack_chk_fail@plt>
 ad2:	c9                   	leave  
 ad3:	c3                   	ret    

0000000000000ad4 <read_input>:
 ad4:	55                   	push   rbp
 ad5:	48 89 e5             	mov    rbp,rsp
 ad8:	48 83 ec 20          	sub    rsp,0x20
 adc:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 ae0:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 ae3:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
 ae6:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
 ae9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 aed:	48 89 c6             	mov    rsi,rax
 af0:	bf 00 00 00 00       	mov    edi,0x0
 af5:	b8 00 00 00 00       	mov    eax,0x0
 afa:	e8 71 fd ff ff       	call   870 <__read_chk@plt>
 aff:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
 b02:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
 b06:	7f 16                	jg     b1e <read_input+0x4a>
 b08:	48 8d 3d 79 04 00 00 	lea    rdi,[rip+0x479]        # f88 <_IO_stdin_used+0x8>
 b0f:	e8 6c fd ff ff       	call   880 <puts@plt>
 b14:	bf 01 00 00 00       	mov    edi,0x1
 b19:	e8 42 fd ff ff       	call   860 <_exit@plt>
 b1e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b21:	48 98                	cdqe   
 b23:	48 8d 50 ff          	lea    rdx,[rax-0x1]
 b27:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 b2b:	48 01 d0             	add    rax,rdx
 b2e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 b31:	3c 0a                	cmp    al,0xa
 b33:	75 13                	jne    b48 <read_input+0x74>
 b35:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b38:	48 98                	cdqe   
 b3a:	48 8d 50 ff          	lea    rdx,[rax-0x1]
 b3e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 b42:	48 01 d0             	add    rax,rdx
 b45:	c6 00 00             	mov    BYTE PTR [rax],0x0
 b48:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 b4b:	c9                   	leave  
 b4c:	c3                   	ret    

0000000000000b4d <add>:
 b4d:	55                   	push   rbp
 b4e:	48 89 e5             	mov    rbp,rsp
 b51:	48 83 ec 10          	sub    rsp,0x10
 b55:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
 b5c:	e9 5b 01 00 00       	jmp    cbc <add+0x16f>
 b61:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 b64:	48 98                	cdqe   
 b66:	48 c1 e0 06          	shl    rax,0x6
 b6a:	48 89 c2             	mov    rdx,rax
 b6d:	48 8d 05 f4 14 20 00 	lea    rax,[rip+0x2014f4]        # 202068 <notes+0x8>
 b74:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 b78:	48 85 c0             	test   rax,rax
 b7b:	74 1e                	je     b9b <add+0x4e>
 b7d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 b80:	48 98                	cdqe   
 b82:	48 c1 e0 06          	shl    rax,0x6
 b86:	48 89 c2             	mov    rdx,rax
 b89:	48 8d 05 d0 14 20 00 	lea    rax,[rip+0x2014d0]        # 202060 <notes>
 b90:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
 b93:	85 c0                	test   eax,eax
 b95:	0f 84 1d 01 00 00    	je     cb8 <add+0x16b>
 b9b:	48 8d 3d f1 03 00 00 	lea    rdi,[rip+0x3f1]        # f93 <_IO_stdin_used+0x13>
 ba2:	b8 00 00 00 00       	mov    eax,0x0
 ba7:	e8 f4 fc ff ff       	call   8a0 <printf@plt>
 bac:	b8 00 00 00 00       	mov    eax,0x0
 bb1:	e8 c5 fe ff ff       	call   a7b <read_int>
 bb6:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
 bb9:	83 7d fc 78          	cmp    DWORD PTR [rbp-0x4],0x78
 bbd:	76 11                	jbe    bd0 <add+0x83>
 bbf:	48 8d 3d d4 03 00 00 	lea    rdi,[rip+0x3d4]        # f9a <_IO_stdin_used+0x1a>
 bc6:	e8 b5 fc ff ff       	call   880 <puts@plt>
 bcb:	e9 02 01 00 00       	jmp    cd2 <add+0x185>
 bd0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 bd3:	48 89 c7             	mov    rdi,rax
 bd6:	e8 e5 fc ff ff       	call   8c0 <malloc@plt>
 bdb:	48 89 c1             	mov    rcx,rax
 bde:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 be1:	48 98                	cdqe   
 be3:	48 c1 e0 06          	shl    rax,0x6
 be7:	48 89 c2             	mov    rdx,rax
 bea:	48 8d 05 77 14 20 00 	lea    rax,[rip+0x201477]        # 202068 <notes+0x8>
 bf1:	48 89 0c 02          	mov    QWORD PTR [rdx+rax*1],rcx
 bf5:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
 bf8:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 bfb:	48 98                	cdqe   
 bfd:	48 c1 e0 06          	shl    rax,0x6
 c01:	48 89 c1             	mov    rcx,rax
 c04:	48 8d 05 5d 14 20 00 	lea    rax,[rip+0x20145d]        # 202068 <notes+0x8>
 c0b:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
 c0f:	be 00 00 00 00       	mov    esi,0x0
 c14:	48 89 c7             	mov    rdi,rax
 c17:	e8 94 fc ff ff       	call   8b0 <memset@plt>
 c1c:	48 8d 3d 80 03 00 00 	lea    rdi,[rip+0x380]        # fa3 <_IO_stdin_used+0x23>
 c23:	b8 00 00 00 00       	mov    eax,0x0
 c28:	e8 73 fc ff ff       	call   8a0 <printf@plt>
 c2d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 c30:	8d 50 ff             	lea    edx,[rax-0x1]
 c33:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 c36:	48 98                	cdqe   
 c38:	48 c1 e0 06          	shl    rax,0x6
 c3c:	48 89 c1             	mov    rcx,rax
 c3f:	48 8d 05 22 14 20 00 	lea    rax,[rip+0x201422]        # 202068 <notes+0x8>
 c46:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
 c4a:	89 d6                	mov    esi,edx
 c4c:	48 89 c7             	mov    rdi,rax
 c4f:	e8 80 fe ff ff       	call   ad4 <read_input>
 c54:	48 8d 3d 4f 03 00 00 	lea    rdi,[rip+0x34f]        # faa <_IO_stdin_used+0x2a>
 c5b:	b8 00 00 00 00       	mov    eax,0x0
 c60:	e8 3b fc ff ff       	call   8a0 <printf@plt>
 c65:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 c68:	48 98                	cdqe   
 c6a:	48 c1 e0 06          	shl    rax,0x6
 c6e:	48 8d 50 10          	lea    rdx,[rax+0x10]
 c72:	48 8d 05 e7 13 20 00 	lea    rax,[rip+0x2013e7]        # 202060 <notes>
 c79:	48 01 d0             	add    rax,rdx
 c7c:	48 89 c6             	mov    rsi,rax
 c7f:	48 8d 3d 3f 03 00 00 	lea    rdi,[rip+0x33f]        # fc5 <_IO_stdin_used+0x45>
 c86:	b8 00 00 00 00       	mov    eax,0x0
 c8b:	e8 60 fc ff ff       	call   8f0 <__isoc99_scanf@plt>
 c90:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 c93:	48 98                	cdqe   
 c95:	48 c1 e0 06          	shl    rax,0x6
 c99:	48 89 c2             	mov    rdx,rax
 c9c:	48 8d 05 bd 13 20 00 	lea    rax,[rip+0x2013bd]        # 202060 <notes>
 ca3:	c7 04 02 00 00 00 00 	mov    DWORD PTR [rdx+rax*1],0x0
 caa:	48 8d 3d 19 03 00 00 	lea    rdi,[rip+0x319]        # fca <_IO_stdin_used+0x4a>
 cb1:	e8 ca fb ff ff       	call   880 <puts@plt>
 cb6:	eb 1a                	jmp    cd2 <add+0x185>
 cb8:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
 cbc:	83 7d f8 09          	cmp    DWORD PTR [rbp-0x8],0x9
 cc0:	0f 8e 9b fe ff ff    	jle    b61 <add+0x14>
 cc6:	48 8d 3d 03 03 00 00 	lea    rdi,[rip+0x303]        # fd0 <_IO_stdin_used+0x50>
 ccd:	e8 ae fb ff ff       	call   880 <puts@plt>
 cd2:	c9                   	leave  
 cd3:	c3                   	ret    

0000000000000cd4 <list>:
 cd4:	55                   	push   rbp
 cd5:	48 89 e5             	mov    rbp,rsp
 cd8:	48 83 ec 10          	sub    rsp,0x10
 cdc:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
 ce3:	eb 7f                	jmp    d64 <list+0x90>
 ce5:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 ce8:	48 98                	cdqe   
 cea:	48 c1 e0 06          	shl    rax,0x6
 cee:	48 89 c2             	mov    rdx,rax
 cf1:	48 8d 05 70 13 20 00 	lea    rax,[rip+0x201370]        # 202068 <notes+0x8>
 cf8:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 cfc:	48 85 c0             	test   rax,rax
 cff:	74 5f                	je     d60 <list+0x8c>
 d01:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d04:	48 98                	cdqe   
 d06:	48 c1 e0 06          	shl    rax,0x6
 d0a:	48 89 c2             	mov    rdx,rax
 d0d:	48 8d 05 4c 13 20 00 	lea    rax,[rip+0x20134c]        # 202060 <notes>
 d14:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
 d17:	85 c0                	test   eax,eax
 d19:	75 45                	jne    d60 <list+0x8c>
 d1b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d1e:	48 98                	cdqe   
 d20:	48 c1 e0 06          	shl    rax,0x6
 d24:	48 8d 50 10          	lea    rdx,[rax+0x10]
 d28:	48 8d 05 31 13 20 00 	lea    rax,[rip+0x201331]        # 202060 <notes>
 d2f:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
 d33:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d36:	48 98                	cdqe   
 d38:	48 c1 e0 06          	shl    rax,0x6
 d3c:	48 89 c2             	mov    rdx,rax
 d3f:	48 8d 05 22 13 20 00 	lea    rax,[rip+0x201322]        # 202068 <notes+0x8>
 d46:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
 d4a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 d4d:	89 c6                	mov    esi,eax
 d4f:	48 8d 3d 82 02 00 00 	lea    rdi,[rip+0x282]        # fd8 <_IO_stdin_used+0x58>
 d56:	b8 00 00 00 00       	mov    eax,0x0
 d5b:	e8 40 fb ff ff       	call   8a0 <printf@plt>
 d60:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
 d64:	83 7d fc 09          	cmp    DWORD PTR [rbp-0x4],0x9
 d68:	0f 8e 77 ff ff ff    	jle    ce5 <list+0x11>
 d6e:	48 8d 3d 83 02 00 00 	lea    rdi,[rip+0x283]        # ff8 <_IO_stdin_used+0x78>
 d75:	e8 06 fb ff ff       	call   880 <puts@plt>
 d7a:	90                   	nop
 d7b:	c9                   	leave  
 d7c:	c3                   	ret    

0000000000000d7d <delete>:
 d7d:	55                   	push   rbp
 d7e:	48 89 e5             	mov    rbp,rsp
 d81:	48 83 ec 10          	sub    rsp,0x10
 d85:	48 8d 3d 74 02 00 00 	lea    rdi,[rip+0x274]        # 1000 <_IO_stdin_used+0x80>
 d8c:	b8 00 00 00 00       	mov    eax,0x0
 d91:	e8 0a fb ff ff       	call   8a0 <printf@plt>
 d96:	b8 00 00 00 00       	mov    eax,0x0
 d9b:	e8 db fc ff ff       	call   a7b <read_int>
 da0:	48 98                	cdqe   
 da2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 da6:	48 83 7d f8 09       	cmp    QWORD PTR [rbp-0x8],0x9
 dab:	76 11                	jbe    dbe <delete+0x41>
 dad:	48 8d 3d 76 02 00 00 	lea    rdi,[rip+0x276]        # 102a <_IO_stdin_used+0xaa>
 db4:	e8 c7 fa ff ff       	call   880 <puts@plt>
 db9:	e9 8f 00 00 00       	jmp    e4d <delete+0xd0>
 dbe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 dc2:	48 c1 e0 06          	shl    rax,0x6
 dc6:	48 89 c2             	mov    rdx,rax
 dc9:	48 8d 05 98 12 20 00 	lea    rax,[rip+0x201298]        # 202068 <notes+0x8>
 dd0:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 dd4:	48 85 c0             	test   rax,rax
 dd7:	75 0e                	jne    de7 <delete+0x6a>
 dd9:	48 8d 3d 59 02 00 00 	lea    rdi,[rip+0x259]        # 1039 <_IO_stdin_used+0xb9>
 de0:	e8 9b fa ff ff       	call   880 <puts@plt>
 de5:	eb 66                	jmp    e4d <delete+0xd0>
 de7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 deb:	48 c1 e0 06          	shl    rax,0x6
 def:	48 89 c2             	mov    rdx,rax
 df2:	48 8d 05 67 12 20 00 	lea    rax,[rip+0x201267]        # 202060 <notes>
 df9:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
 dfc:	85 c0                	test   eax,eax
 dfe:	74 16                	je     e16 <delete+0x99>
 e00:	48 8d 3d 40 02 00 00 	lea    rdi,[rip+0x240]        # 1047 <_IO_stdin_used+0xc7>
 e07:	e8 74 fa ff ff       	call   880 <puts@plt>
 e0c:	bf ff ff ff ff       	mov    edi,0xffffffff
 e11:	e8 4a fa ff ff       	call   860 <_exit@plt>
 e16:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 e1a:	48 c1 e0 06          	shl    rax,0x6
 e1e:	48 89 c2             	mov    rdx,rax
 e21:	48 8d 05 40 12 20 00 	lea    rax,[rip+0x201240]        # 202068 <notes+0x8>
 e28:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
 e2c:	48 89 c7             	mov    rdi,rax
 e2f:	e8 1c fa ff ff       	call   850 <free@plt>
 e34:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 e38:	48 c1 e0 06          	shl    rax,0x6
 e3c:	48 89 c2             	mov    rdx,rax
 e3f:	48 8d 05 1a 12 20 00 	lea    rax,[rip+0x20121a]        # 202060 <notes>
 e46:	c7 04 02 01 00 00 00 	mov    DWORD PTR [rdx+rax*1],0x1
 e4d:	c9                   	leave  
 e4e:	c3                   	ret    

0000000000000e4f <menu>:
 e4f:	55                   	push   rbp
 e50:	48 89 e5             	mov    rbp,rsp
 e53:	48 8d 3d 08 02 00 00 	lea    rdi,[rip+0x208]        # 1062 <_IO_stdin_used+0xe2>
 e5a:	e8 21 fa ff ff       	call   880 <puts@plt>
 e5f:	48 8d 3d 0a 02 00 00 	lea    rdi,[rip+0x20a]        # 1070 <_IO_stdin_used+0xf0>
 e66:	e8 15 fa ff ff       	call   880 <puts@plt>
 e6b:	48 8d 3d 0c 02 00 00 	lea    rdi,[rip+0x20c]        # 107e <_IO_stdin_used+0xfe>
 e72:	e8 09 fa ff ff       	call   880 <puts@plt>
 e77:	48 8d 3d 11 02 00 00 	lea    rdi,[rip+0x211]        # 108f <_IO_stdin_used+0x10f>
 e7e:	e8 fd f9 ff ff       	call   880 <puts@plt>
 e83:	48 8d 3d 0d 02 00 00 	lea    rdi,[rip+0x20d]        # 1097 <_IO_stdin_used+0x117>
 e8a:	e8 f1 f9 ff ff       	call   880 <puts@plt>
 e8f:	90                   	nop
 e90:	5d                   	pop    rbp
 e91:	c3                   	ret    

0000000000000e92 <main>:
 e92:	55                   	push   rbp
 e93:	48 89 e5             	mov    rbp,rsp
 e96:	48 83 ec 10          	sub    rsp,0x10
 e9a:	b8 00 00 00 00       	mov    eax,0x0
 e9f:	e8 76 fb ff ff       	call   a1a <init>
 ea4:	b8 00 00 00 00       	mov    eax,0x0
 ea9:	e8 a1 ff ff ff       	call   e4f <menu>
 eae:	b8 00 00 00 00       	mov    eax,0x0
 eb3:	e8 c3 fb ff ff       	call   a7b <read_int>
 eb8:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
 ebb:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 ebe:	83 f8 02             	cmp    eax,0x2
 ec1:	74 16                	je     ed9 <main+0x47>
 ec3:	83 f8 03             	cmp    eax,0x3
 ec6:	74 1d                	je     ee5 <main+0x53>
 ec8:	83 f8 01             	cmp    eax,0x1
 ecb:	75 24                	jne    ef1 <main+0x5f>
 ecd:	b8 00 00 00 00       	mov    eax,0x0
 ed2:	e8 76 fc ff ff       	call   b4d <add>
 ed7:	eb 25                	jmp    efe <main+0x6c>
 ed9:	b8 00 00 00 00       	mov    eax,0x0
 ede:	e8 f1 fd ff ff       	call   cd4 <list>
 ee3:	eb 19                	jmp    efe <main+0x6c>
 ee5:	b8 00 00 00 00       	mov    eax,0x0
 eea:	e8 8e fe ff ff       	call   d7d <delete>
 eef:	eb 0d                	jmp    efe <main+0x6c>
 ef1:	48 8d 3d a2 01 00 00 	lea    rdi,[rip+0x1a2]        # 109a <_IO_stdin_used+0x11a>
 ef8:	e8 83 f9 ff ff       	call   880 <puts@plt>
 efd:	90                   	nop
 efe:	eb a4                	jmp    ea4 <main+0x12>

0000000000000f00 <__libc_csu_init>:
 f00:	41 57                	push   r15
 f02:	41 56                	push   r14
 f04:	49 89 d7             	mov    r15,rdx
 f07:	41 55                	push   r13
 f09:	41 54                	push   r12
 f0b:	4c 8d 25 56 0e 20 00 	lea    r12,[rip+0x200e56]        # 201d68 <__frame_dummy_init_array_entry>
 f12:	55                   	push   rbp
 f13:	48 8d 2d 56 0e 20 00 	lea    rbp,[rip+0x200e56]        # 201d70 <__init_array_end>
 f1a:	53                   	push   rbx
 f1b:	41 89 fd             	mov    r13d,edi
 f1e:	49 89 f6             	mov    r14,rsi
 f21:	4c 29 e5             	sub    rbp,r12
 f24:	48 83 ec 08          	sub    rsp,0x8
 f28:	48 c1 fd 03          	sar    rbp,0x3
 f2c:	e8 f7 f8 ff ff       	call   828 <_init>
 f31:	48 85 ed             	test   rbp,rbp
 f34:	74 20                	je     f56 <__libc_csu_init+0x56>
 f36:	31 db                	xor    ebx,ebx
 f38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 f3f:	00 
 f40:	4c 89 fa             	mov    rdx,r15
 f43:	4c 89 f6             	mov    rsi,r14
 f46:	44 89 ef             	mov    edi,r13d
 f49:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 f4d:	48 83 c3 01          	add    rbx,0x1
 f51:	48 39 dd             	cmp    rbp,rbx
 f54:	75 ea                	jne    f40 <__libc_csu_init+0x40>
 f56:	48 83 c4 08          	add    rsp,0x8
 f5a:	5b                   	pop    rbx
 f5b:	5d                   	pop    rbp
 f5c:	41 5c                	pop    r12
 f5e:	41 5d                	pop    r13
 f60:	41 5e                	pop    r14
 f62:	41 5f                	pop    r15
 f64:	c3                   	ret    
 f65:	90                   	nop
 f66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 f6d:	00 00 00 

0000000000000f70 <__libc_csu_fini>:
 f70:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000000f74 <_fini>:
 f74:	48 83 ec 08          	sub    rsp,0x8
 f78:	48 83 c4 08          	add    rsp,0x8
 f7c:	c3                   	ret    

Disassembly of section .rodata:

0000000000000f80 <_IO_stdin_used>:
     f80:	01 00                	add    DWORD PTR [rax],eax
     f82:	02 00                	add    al,BYTE PTR [rax]
     f84:	00 00                	add    BYTE PTR [rax],al
     f86:	00 00                	add    BYTE PTR [rax],al
     f88:	72 65                	jb     fef <_IO_stdin_used+0x6f>
     f8a:	61                   	(bad)  
     f8b:	64 20 65 72          	and    BYTE PTR fs:[rbp+0x72],ah
     f8f:	72 6f                	jb     1000 <_IO_stdin_used+0x80>
     f91:	72 00                	jb     f93 <_IO_stdin_used+0x13>
     f93:	53                   	push   rbx
     f94:	69 7a 65 3a 20 00 54 	imul   edi,DWORD PTR [rdx+0x65],0x5400203a
     f9b:	6f                   	outs   dx,DWORD PTR ds:[rsi]
     f9c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
     f9d:	20 62 69             	and    BYTE PTR [rdx+0x69],ah
     fa0:	67 21 00             	and    DWORD PTR [eax],eax
     fa3:	4e 6f                	rex.WRX outs dx,DWORD PTR ds:[rsi]
     fa5:	74 65                	je     100c <_IO_stdin_used+0x8c>
     fa7:	3a 20                	cmp    ah,BYTE PTR [rax]
     fa9:	00 44 65 73          	add    BYTE PTR [rbp+riz*2+0x73],al
     fad:	63 72 69             	movsxd esi,DWORD PTR [rdx+0x69]
     fb0:	70 74                	jo     1026 <_IO_stdin_used+0xa6>
     fb2:	69 6f 6e 20 6f 66 20 	imul   ebp,DWORD PTR [rdi+0x6e],0x20666f20
     fb9:	74 68                	je     1023 <_IO_stdin_used+0xa3>
     fbb:	69 73 20 6e 6f 74 65 	imul   esi,DWORD PTR [rbx+0x20],0x65746f6e
     fc2:	3a 20                	cmp    ah,BYTE PTR [rax]
     fc4:	00 25 34 38 73 00    	add    BYTE PTR [rip+0x733834],ah        # 7347fe <_end+0x53251e>
     fca:	44 6f                	rex.R outs dx,DWORD PTR ds:[rsi]
     fcc:	6e                   	outs   dx,BYTE PTR ds:[rsi]
     fcd:	65 21 00             	and    DWORD PTR gs:[rax],eax
     fd0:	46 75 6c             	rex.RX jne 103f <_IO_stdin_used+0xbf>
     fd3:	6c                   	ins    BYTE PTR es:[rdi],dx
     fd4:	21 00                	and    DWORD PTR [rax],eax
     fd6:	00 00                	add    BYTE PTR [rax],al
     fd8:	4e 6f                	rex.WRX outs dx,DWORD PTR ds:[rsi]
     fda:	74 65                	je     1041 <_IO_stdin_used+0xc1>
     fdc:	20 25 64 3a 0a 20    	and    BYTE PTR [rip+0x200a3a64],ah        # 200a4a46 <_end+0x1fea2766>
     fe2:	20 44 61 74          	and    BYTE PTR [rcx+riz*2+0x74],al
     fe6:	61                   	(bad)  
     fe7:	3a 20                	cmp    ah,BYTE PTR [rax]
     fe9:	25 73 0a 20 20       	and    eax,0x20200a73
     fee:	44                   	rex.R
     fef:	65 73 63             	gs jae 1055 <_IO_stdin_used+0xd5>
     ff2:	3a 20                	cmp    ah,BYTE PTR [rax]
     ff4:	25 73 0a 00 00       	and    eax,0xa73
     ff9:	00 00                	add    BYTE PTR [rax],al
     ffb:	00 00                	add    BYTE PTR [rax],al
     ffd:	00 00                	add    BYTE PTR [rax],al
     fff:	00 57 68             	add    BYTE PTR [rdi+0x68],dl
    1002:	69 63 68 20 6e 6f 74 	imul   esp,DWORD PTR [rbx+0x68],0x746f6e20
    1009:	65 20 64 6f 20       	and    BYTE PTR gs:[rdi+rbp*2+0x20],ah
    100e:	79 6f                	jns    107f <_IO_stdin_used+0xff>
    1010:	75 20                	jne    1032 <_IO_stdin_used+0xb2>
    1012:	77 61                	ja     1075 <_IO_stdin_used+0xf5>
    1014:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1015:	74 20                	je     1037 <_IO_stdin_used+0xb7>
    1017:	74 6f                	je     1088 <_IO_stdin_used+0x108>
    1019:	20 64 65 6c          	and    BYTE PTR [rbp+riz*2+0x6c],ah
    101d:	65 74 65             	gs je  1085 <_IO_stdin_used+0x105>
    1020:	3f                   	(bad)  
    1021:	0a 49 6e             	or     cl,BYTE PTR [rcx+0x6e]
    1024:	64 65 78 3a          	fs gs js 1062 <_IO_stdin_used+0xe2>
    1028:	20 00                	and    BYTE PTR [rax],al
    102a:	49 6e                	rex.WB outs dx,BYTE PTR ds:[rsi]
    102c:	76 61                	jbe    108f <_IO_stdin_used+0x10f>
    102e:	6c                   	ins    BYTE PTR es:[rdi],dx
    102f:	69 64 20 69 6e 64 65 	imul   esp,DWORD PTR [rax+riz*1+0x69],0x7865646e
    1036:	78 
    1037:	2e 00 4e 6f          	add    BYTE PTR cs:[rsi+0x6f],cl
    103b:	20 73 75             	and    BYTE PTR [rbx+0x75],dh
    103e:	63 68 20             	movsxd ebp,DWORD PTR [rax+0x20]
    1041:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1042:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    1043:	74 65                	je     10aa <_IO_stdin_used+0x12a>
    1045:	21 00                	and    DWORD PTR [rax],eax
    1047:	44 6f                	rex.R outs dx,DWORD PTR ds:[rsi]
    1049:	75 62                	jne    10ad <__GNU_EH_FRAME_HDR+0x1>
    104b:	6c                   	ins    BYTE PTR es:[rdi],dx
    104c:	65 20 66 72          	and    BYTE PTR gs:[rsi+0x72],ah
    1050:	65 65 21 20          	gs and DWORD PTR gs:[rax],esp
    1054:	42 61                	rex.X (bad) 
    1056:	64 20 68 61          	and    BYTE PTR fs:[rax+0x61],ch
    105a:	63 6b 65             	movsxd ebp,DWORD PTR [rbx+0x65]
    105d:	72 20                	jb     107f <_IO_stdin_used+0xff>
    105f:	3a 28                	cmp    ch,BYTE PTR [rax]
    1061:	00 31                	add    BYTE PTR [rcx],dh
    1063:	2e 20 41 64          	and    BYTE PTR cs:[rcx+0x64],al
    1067:	64 20 61 20          	and    BYTE PTR fs:[rcx+0x20],ah
    106b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    106c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    106d:	74 65                	je     10d4 <__GNU_EH_FRAME_HDR+0x28>
    106f:	00 32                	add    BYTE PTR [rdx],dh
    1071:	2e 20 4c 69 73       	and    BYTE PTR cs:[rcx+rbp*2+0x73],cl
    1076:	74 20                	je     1098 <_IO_stdin_used+0x118>
    1078:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    1079:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    107a:	74 65                	je     10e1 <__GNU_EH_FRAME_HDR+0x35>
    107c:	73 00                	jae    107e <_IO_stdin_used+0xfe>
    107e:	33 2e                	xor    ebp,DWORD PTR [rsi]
    1080:	20 44 65 6c          	and    BYTE PTR [rbp+riz*2+0x6c],al
    1084:	65 74 65             	gs je  10ec <__GNU_EH_FRAME_HDR+0x40>
    1087:	20 61 20             	and    BYTE PTR [rcx+0x20],ah
    108a:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    108b:	6f                   	outs   dx,DWORD PTR ds:[rsi]
    108c:	74 65                	je     10f3 <__GNU_EH_FRAME_HDR+0x47>
    108e:	00 34 2e             	add    BYTE PTR [rsi+rbp*1],dh
    1091:	20 45 78             	and    BYTE PTR [rbp+0x78],al
    1094:	69 74 00 3e 20 00 49 	imul   esi,DWORD PTR [rax+rax*1+0x3e],0x6e490020
    109b:	6e 
    109c:	76 61                	jbe    10ff <__GNU_EH_FRAME_HDR+0x53>
    109e:	6c                   	ins    BYTE PTR es:[rdi],dx
    109f:	69 64 20 63 68 6f 69 	imul   esp,DWORD PTR [rax+riz*1+0x63],0x63696f68
    10a6:	63 
    10a7:	65                   	gs
    10a8:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

00000000000010ac <__GNU_EH_FRAME_HDR>:
    10ac:	01 1b                	add    DWORD PTR [rbx],ebx
    10ae:	03 3b                	add    edi,DWORD PTR [rbx]
    10b0:	70 00                	jo     10b2 <__GNU_EH_FRAME_HDR+0x6>
    10b2:	00 00                	add    BYTE PTR [rax],al
    10b4:	0d 00 00 00 94       	or     eax,0x94000000
    10b9:	f7 ff                	idiv   edi
    10bb:	ff                   	(bad)  
    10bc:	bc 00 00 00 54       	mov    esp,0x54000000
    10c1:	f8                   	clc    
    10c2:	ff                   	(bad)  
    10c3:	ff e4                	jmp    rsp
    10c5:	00 00                	add    BYTE PTR [rax],al
    10c7:	00 64 f8 ff          	add    BYTE PTR [rax+rdi*8-0x1],ah
    10cb:	ff 8c 00 00 00 6e f9 	dec    DWORD PTR [rax+rax*1-0x6920000]
    10d2:	ff                   	(bad)  
    10d3:	ff                   	(bad)  
    10d4:	fc                   	cld    
    10d5:	00 00                	add    BYTE PTR [rax],al
    10d7:	00 cf                	add    bh,cl
    10d9:	f9                   	stc    
    10da:	ff                   	(bad)  
    10db:	ff 1c 01             	call   FWORD PTR [rcx+rax*1]
    10de:	00 00                	add    BYTE PTR [rax],al
    10e0:	28 fa                	sub    dl,bh
    10e2:	ff                   	(bad)  
    10e3:	ff                   	(bad)  
    10e4:	3c 01                	cmp    al,0x1
    10e6:	00 00                	add    BYTE PTR [rax],al
    10e8:	a1 fa ff ff 5c 01 00 	movabs eax,ds:0x280000015cfffffa
    10ef:	00 28 
    10f1:	fc                   	cld    
    10f2:	ff                   	(bad)  
    10f3:	ff                   	(bad)  
    10f4:	7c 01                	jl     10f7 <__GNU_EH_FRAME_HDR+0x4b>
    10f6:	00 00                	add    BYTE PTR [rax],al
    10f8:	d1 fc                	sar    esp,1
    10fa:	ff                   	(bad)  
    10fb:	ff 9c 01 00 00 a3 fd 	call   FWORD PTR [rcx+rax*1-0x25d0000]
    1102:	ff                   	(bad)  
    1103:	ff                   	(bad)  
    1104:	bc 01 00 00 e6       	mov    esp,0xe6000001
    1109:	fd                   	std    
    110a:	ff                   	(bad)  
    110b:	ff                   	(bad)  
    110c:	dc 01                	fadd   QWORD PTR [rcx]
    110e:	00 00                	add    BYTE PTR [rax],al
    1110:	54                   	push   rsp
    1111:	fe                   	(bad)  
    1112:	ff                   	(bad)  
    1113:	ff                   	(bad)  
    1114:	fc                   	cld    
    1115:	01 00                	add    DWORD PTR [rax],eax
    1117:	00 c4                	add    ah,al
    1119:	fe                   	(bad)  
    111a:	ff                   	(bad)  
    111b:	ff 44 02 00          	inc    DWORD PTR [rdx+rax*1+0x0]
	...

Disassembly of section .eh_frame:

0000000000001120 <__FRAME_END__-0x1e4>:
    1120:	14 00                	adc    al,0x0
    1122:	00 00                	add    BYTE PTR [rax],al
    1124:	00 00                	add    BYTE PTR [rax],al
    1126:	00 00                	add    BYTE PTR [rax],al
    1128:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    112b:	00 01                	add    BYTE PTR [rcx],al
    112d:	78 10                	js     113f <__GNU_EH_FRAME_HDR+0x93>
    112f:	01 1b                	add    DWORD PTR [rbx],ebx
    1131:	0c 07                	or     al,0x7
    1133:	08 90 01 07 10 14    	or     BYTE PTR [rax+0x14100701],dl
    1139:	00 00                	add    BYTE PTR [rax],al
    113b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    113e:	00 00                	add    BYTE PTR [rax],al
    1140:	d0                   	(bad)  
    1141:	f7 ff                	idiv   edi
    1143:	ff 2b                	jmp    FWORD PTR [rbx]
	...
    114d:	00 00                	add    BYTE PTR [rax],al
    114f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    1152:	00 00                	add    BYTE PTR [rax],al
    1154:	00 00                	add    BYTE PTR [rax],al
    1156:	00 00                	add    BYTE PTR [rax],al
    1158:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    115b:	00 01                	add    BYTE PTR [rcx],al
    115d:	78 10                	js     116f <__GNU_EH_FRAME_HDR+0xc3>
    115f:	01 1b                	add    DWORD PTR [rbx],ebx
    1161:	0c 07                	or     al,0x7
    1163:	08 90 01 00 00 24    	or     BYTE PTR [rax+0x24000001],dl
    1169:	00 00                	add    BYTE PTR [rax],al
    116b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    116e:	00 00                	add    BYTE PTR [rax],al
    1170:	d0                   	(bad)  
    1171:	f6 ff                	idiv   bh
    1173:	ff c0                	inc    eax
    1175:	00 00                	add    BYTE PTR [rax],al
    1177:	00 00                	add    BYTE PTR [rax],al
    1179:	0e                   	(bad)  
    117a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
    117d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
    1180:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
    1183:	80 00 3f             	add    BYTE PTR [rax],0x3f
    1186:	1a 3b                	sbb    bh,BYTE PTR [rbx]
    1188:	2a 33                	sub    dh,BYTE PTR [rbx]
    118a:	24 22                	and    al,0x22
    118c:	00 00                	add    BYTE PTR [rax],al
    118e:	00 00                	add    BYTE PTR [rax],al
    1190:	14 00                	adc    al,0x0
    1192:	00 00                	add    BYTE PTR [rax],al
    1194:	44 00 00             	add    BYTE PTR [rax],r8b
    1197:	00 68 f7             	add    BYTE PTR [rax-0x9],ch
    119a:	ff                   	(bad)  
    119b:	ff 08                	dec    DWORD PTR [rax]
	...
    11a5:	00 00                	add    BYTE PTR [rax],al
    11a7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    11aa:	00 00                	add    BYTE PTR [rax],al
    11ac:	5c                   	pop    rsp
    11ad:	00 00                	add    BYTE PTR [rax],al
    11af:	00 6a f8             	add    BYTE PTR [rdx-0x8],ch
    11b2:	ff                   	(bad)  
    11b3:	ff 61 00             	jmp    QWORD PTR [rcx+0x0]
    11b6:	00 00                	add    BYTE PTR [rax],al
    11b8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    11bb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    11c1:	02 5c 0c 07          	add    bl,BYTE PTR [rsp+rcx*1+0x7]
    11c5:	08 00                	or     BYTE PTR [rax],al
    11c7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    11ca:	00 00                	add    BYTE PTR [rax],al
    11cc:	7c 00                	jl     11ce <__GNU_EH_FRAME_HDR+0x122>
    11ce:	00 00                	add    BYTE PTR [rax],al
    11d0:	ab                   	stos   DWORD PTR es:[rdi],eax
    11d1:	f8                   	clc    
    11d2:	ff                   	(bad)  
    11d3:	ff 59 00             	call   FWORD PTR [rcx+0x0]
    11d6:	00 00                	add    BYTE PTR [rax],al
    11d8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    11db:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    11e1:	02 54 0c 07          	add    dl,BYTE PTR [rsp+rcx*1+0x7]
    11e5:	08 00                	or     BYTE PTR [rax],al
    11e7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    11ea:	00 00                	add    BYTE PTR [rax],al
    11ec:	9c                   	pushf  
    11ed:	00 00                	add    BYTE PTR [rax],al
    11ef:	00 e4                	add    ah,ah
    11f1:	f8                   	clc    
    11f2:	ff                   	(bad)  
    11f3:	ff                   	(bad)  
    11f4:	79 00                	jns    11f6 <__GNU_EH_FRAME_HDR+0x14a>
    11f6:	00 00                	add    BYTE PTR [rax],al
    11f8:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    11fb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1201:	02 74 0c 07          	add    dh,BYTE PTR [rsp+rcx*1+0x7]
    1205:	08 00                	or     BYTE PTR [rax],al
    1207:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    120a:	00 00                	add    BYTE PTR [rax],al
    120c:	bc 00 00 00 3d       	mov    esp,0x3d000000
    1211:	f9                   	stc    
    1212:	ff                   	(bad)  
    1213:	ff 87 01 00 00 00    	inc    DWORD PTR [rdi+0x1]
    1219:	41 0e                	rex.B (bad) 
    121b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1221:	03 82 01 0c 07 08    	add    eax,DWORD PTR [rdx+0x8070c01]
    1227:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    122a:	00 00                	add    BYTE PTR [rax],al
    122c:	dc 00                	fadd   QWORD PTR [rax]
    122e:	00 00                	add    BYTE PTR [rax],al
    1230:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    1231:	fa                   	cli    
    1232:	ff                   	(bad)  
    1233:	ff a9 00 00 00 00    	jmp    FWORD PTR [rcx+0x0]
    1239:	41 0e                	rex.B (bad) 
    123b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1241:	02 a4 0c 07 08 00 00 	add    ah,BYTE PTR [rsp+rcx*1+0x807]
    1248:	1c 00                	sbb    al,0x0
    124a:	00 00                	add    BYTE PTR [rax],al
    124c:	fc                   	cld    
    124d:	00 00                	add    BYTE PTR [rax],al
    124f:	00 2d fb ff ff d2    	add    BYTE PTR [rip+0xffffffffd2fffffb],ch        # ffffffffd3001250 <_end+0xffffffffd2dfef70>
    1255:	00 00                	add    BYTE PTR [rax],al
    1257:	00 00                	add    BYTE PTR [rax],al
    1259:	41 0e                	rex.B (bad) 
    125b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1261:	02 cd                	add    cl,ch
    1263:	0c 07                	or     al,0x7
    1265:	08 00                	or     BYTE PTR [rax],al
    1267:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    126a:	00 00                	add    BYTE PTR [rax],al
    126c:	1c 01                	sbb    al,0x1
    126e:	00 00                	add    BYTE PTR [rax],al
    1270:	df fb                	(bad)  
    1272:	ff                   	(bad)  
    1273:	ff 43 00             	inc    DWORD PTR [rbx+0x0]
    1276:	00 00                	add    BYTE PTR [rax],al
    1278:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    127b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    1281:	7e 0c                	jle    128f <__GNU_EH_FRAME_HDR+0x1e3>
    1283:	07                   	(bad)  
    1284:	08 00                	or     BYTE PTR [rax],al
    1286:	00 00                	add    BYTE PTR [rax],al
    1288:	1c 00                	sbb    al,0x0
    128a:	00 00                	add    BYTE PTR [rax],al
    128c:	3c 01                	cmp    al,0x1
    128e:	00 00                	add    BYTE PTR [rax],al
    1290:	02 fc                	add    bh,ah
    1292:	ff                   	(bad)  
    1293:	ff 6e 00             	jmp    FWORD PTR [rsi+0x0]
    1296:	00 00                	add    BYTE PTR [rax],al
    1298:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    129b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    12a1:	00 00                	add    BYTE PTR [rax],al
    12a3:	00 00                	add    BYTE PTR [rax],al
    12a5:	00 00                	add    BYTE PTR [rax],al
    12a7:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
    12ab:	00 5c 01 00          	add    BYTE PTR [rcx+rax*1+0x0],bl
    12af:	00 50 fc             	add    BYTE PTR [rax-0x4],dl
    12b2:	ff                   	(bad)  
    12b3:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
    12b6:	00 00                	add    BYTE PTR [rax],al
    12b8:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
    12bb:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
    12c1:	8e 03                	mov    es,WORD PTR [rbx]
    12c3:	45 0e                	rex.RB (bad) 
    12c5:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
    12cb:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86302119 <_end+0xffffffff860ffe39>
    12d1:	06                   	(bad)  
    12d2:	48 0e                	rex.W (bad) 
    12d4:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
    12da:	72 0e                	jb     12ea <__GNU_EH_FRAME_HDR+0x23e>
    12dc:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
    12df:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
    12e2:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
    12e5:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    12e8:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    12eb:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    12ee:	08 00                	or     BYTE PTR [rax],al
    12f0:	10 00                	adc    BYTE PTR [rax],al
    12f2:	00 00                	add    BYTE PTR [rax],al
    12f4:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
    12f5:	01 00                	add    DWORD PTR [rax],eax
    12f7:	00 78 fc             	add    BYTE PTR [rax-0x4],bh
    12fa:	ff                   	(bad)  
    12fb:	ff 02                	inc    DWORD PTR [rdx]
    12fd:	00 00                	add    BYTE PTR [rax],al
    12ff:	00 00                	add    BYTE PTR [rax],al
    1301:	00 00                	add    BYTE PTR [rax],al
	...

0000000000001304 <__FRAME_END__>:
    1304:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000201d68 <__frame_dummy_init_array_entry>:
  201d68:	10 0a                	adc    BYTE PTR [rdx],cl
  201d6a:	00 00                	add    BYTE PTR [rax],al
  201d6c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000201d70 <__do_global_dtors_aux_fini_array_entry>:
  201d70:	d0 09                	ror    BYTE PTR [rcx],1
  201d72:	00 00                	add    BYTE PTR [rax],al
  201d74:	00 00                	add    BYTE PTR [rax],al
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
  201d90:	28 08                	sub    BYTE PTR [rax],cl
  201d92:	00 00                	add    BYTE PTR [rax],al
  201d94:	00 00                	add    BYTE PTR [rax],al
  201d96:	00 00                	add    BYTE PTR [rax],al
  201d98:	0d 00 00 00 00       	or     eax,0x0
  201d9d:	00 00                	add    BYTE PTR [rax],al
  201d9f:	00 74 0f 00          	add    BYTE PTR [rdi+rcx*1+0x0],dh
  201da3:	00 00                	add    BYTE PTR [rax],al
  201da5:	00 00                	add    BYTE PTR [rax],al
  201da7:	00 19                	add    BYTE PTR [rcx],bl
  201da9:	00 00                	add    BYTE PTR [rax],al
  201dab:	00 00                	add    BYTE PTR [rax],al
  201dad:	00 00                	add    BYTE PTR [rax],al
  201daf:	00 68 1d             	add    BYTE PTR [rax+0x1d],ch
  201db2:	20 00                	and    BYTE PTR [rax],al
  201db4:	00 00                	add    BYTE PTR [rax],al
  201db6:	00 00                	add    BYTE PTR [rax],al
  201db8:	1b 00                	sbb    eax,DWORD PTR [rax]
  201dba:	00 00                	add    BYTE PTR [rax],al
  201dbc:	00 00                	add    BYTE PTR [rax],al
  201dbe:	00 00                	add    BYTE PTR [rax],al
  201dc0:	08 00                	or     BYTE PTR [rax],al
  201dc2:	00 00                	add    BYTE PTR [rax],al
  201dc4:	00 00                	add    BYTE PTR [rax],al
  201dc6:	00 00                	add    BYTE PTR [rax],al
  201dc8:	1a 00                	sbb    al,BYTE PTR [rax]
  201dca:	00 00                	add    BYTE PTR [rax],al
  201dcc:	00 00                	add    BYTE PTR [rax],al
  201dce:	00 00                	add    BYTE PTR [rax],al
  201dd0:	70 1d                	jo     201def <_DYNAMIC+0x77>
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
  201e1f:	00 02                	add    BYTE PTR [rdx],al
  201e21:	01 00                	add    DWORD PTR [rax],eax
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
  201e7f:	00 20                	add    BYTE PTR [rax],ah
  201e81:	07                   	(bad)  
  201e82:	00 00                	add    BYTE PTR [rax],al
  201e84:	00 00                	add    BYTE PTR [rax],al
  201e86:	00 00                	add    BYTE PTR [rax],al
  201e88:	07                   	(bad)  
  201e89:	00 00                	add    BYTE PTR [rax],al
  201e8b:	00 00                	add    BYTE PTR [rax],al
  201e8d:	00 00                	add    BYTE PTR [rax],al
  201e8f:	00 18                	add    BYTE PTR [rax],bl
  201e91:	06                   	(bad)  
  201e92:	00 00                	add    BYTE PTR [rax],al
  201e94:	00 00                	add    BYTE PTR [rax],al
  201e96:	00 00                	add    BYTE PTR [rax],al
  201e98:	08 00                	or     BYTE PTR [rax],al
  201e9a:	00 00                	add    BYTE PTR [rax],al
  201e9c:	00 00                	add    BYTE PTR [rax],al
  201e9e:	00 00                	add    BYTE PTR [rax],al
  201ea0:	08 01                	or     BYTE PTR [rcx],al
  201ea2:	00 00                	add    BYTE PTR [rax],al
  201ea4:	00 00                	add    BYTE PTR [rax],al
  201ea6:	00 00                	add    BYTE PTR [rax],al
  201ea8:	09 00                	or     DWORD PTR [rax],eax
  201eaa:	00 00                	add    BYTE PTR [rax],al
  201eac:	00 00                	add    BYTE PTR [rax],al
  201eae:	00 00                	add    BYTE PTR [rax],al
  201eb0:	18 00                	sbb    BYTE PTR [rax],al
  201eb2:	00 00                	add    BYTE PTR [rax],al
  201eb4:	00 00                	add    BYTE PTR [rax],al
  201eb6:	00 00                	add    BYTE PTR [rax],al
  201eb8:	1e                   	(bad)  
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
  201edf:	00 d8                	add    al,bl
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
  201eff:	00 aa 05 00 00 00    	add    BYTE PTR [rdx+0x5],ch
  201f05:	00 00                	add    BYTE PTR [rax],al
  201f07:	00 f9                	add    cl,bh
  201f09:	ff                   	(bad)  
  201f0a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  201f0d:	00 00                	add    BYTE PTR [rax],al
  201f0f:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .got:

0000000000201f68 <_GLOBAL_OFFSET_TABLE_>:
  201f68:	78 1d                	js     201f87 <_GLOBAL_OFFSET_TABLE_+0x1f>
  201f6a:	20 00                	and    BYTE PTR [rax],al
	...
  201f80:	56                   	push   rsi
  201f81:	08 00                	or     BYTE PTR [rax],al
  201f83:	00 00                	add    BYTE PTR [rax],al
  201f85:	00 00                	add    BYTE PTR [rax],al
  201f87:	00 66 08             	add    BYTE PTR [rsi+0x8],ah
  201f8a:	00 00                	add    BYTE PTR [rax],al
  201f8c:	00 00                	add    BYTE PTR [rax],al
  201f8e:	00 00                	add    BYTE PTR [rax],al
  201f90:	76 08                	jbe    201f9a <_GLOBAL_OFFSET_TABLE_+0x32>
  201f92:	00 00                	add    BYTE PTR [rax],al
  201f94:	00 00                	add    BYTE PTR [rax],al
  201f96:	00 00                	add    BYTE PTR [rax],al
  201f98:	86 08                	xchg   BYTE PTR [rax],cl
  201f9a:	00 00                	add    BYTE PTR [rax],al
  201f9c:	00 00                	add    BYTE PTR [rax],al
  201f9e:	00 00                	add    BYTE PTR [rax],al
  201fa0:	96                   	xchg   esi,eax
  201fa1:	08 00                	or     BYTE PTR [rax],al
  201fa3:	00 00                	add    BYTE PTR [rax],al
  201fa5:	00 00                	add    BYTE PTR [rax],al
  201fa7:	00 a6 08 00 00 00    	add    BYTE PTR [rsi+0x8],ah
  201fad:	00 00                	add    BYTE PTR [rax],al
  201faf:	00 b6 08 00 00 00    	add    BYTE PTR [rsi+0x8],dh
  201fb5:	00 00                	add    BYTE PTR [rax],al
  201fb7:	00 c6                	add    dh,al
  201fb9:	08 00                	or     BYTE PTR [rax],al
  201fbb:	00 00                	add    BYTE PTR [rax],al
  201fbd:	00 00                	add    BYTE PTR [rax],al
  201fbf:	00 d6                	add    dh,dl
  201fc1:	08 00                	or     BYTE PTR [rax],al
  201fc3:	00 00                	add    BYTE PTR [rax],al
  201fc5:	00 00                	add    BYTE PTR [rax],al
  201fc7:	00 e6                	add    dh,ah
  201fc9:	08 00                	or     BYTE PTR [rax],al
  201fcb:	00 00                	add    BYTE PTR [rax],al
  201fcd:	00 00                	add    BYTE PTR [rax],al
  201fcf:	00 f6                	add    dh,dh
  201fd1:	08 00                	or     BYTE PTR [rax],al
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

0000000000202060 <notes>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x7b0>
   a:	74 75                	je     81 <_init-0x7a7>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 34 2e             	cs xor al,0x2e
  11:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627548 <_end+0x75425268>
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	74 75                	je     8f <_init-0x799>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  22:	31 29                	xor    DWORD PTR [rcx],ebp
  24:	20 37                	and    BYTE PTR [rdi],dh
  26:	2e 34 2e             	cs xor al,0x2e
  29:	30 00                	xor    BYTE PTR [rax],al
