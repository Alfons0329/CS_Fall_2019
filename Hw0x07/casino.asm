
casino:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	ins    BYTE PTR es:[rdi],dx
  40023a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  400241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  400246:	78 2d                	js     400275 <_init-0x42b>
  400248:	78 38                	js     400282 <_init-0x41e>
  40024a:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
  400250:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400251:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    al,0x0
  400256:	00 00                	add    BYTE PTR [rax],al
  400258:	10 00                	adc    BYTE PTR [rax],al
  40025a:	00 00                	add    BYTE PTR [rax],al
  40025c:	01 00                	add    DWORD PTR [rax],eax
  40025e:	00 00                	add    BYTE PTR [rax],al
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push rbp
  400263:	00 00                	add    BYTE PTR [rax],al
  400265:	00 00                	add    BYTE PTR [rax],al
  400267:	00 03                	add    BYTE PTR [rbx],al
  400269:	00 00                	add    BYTE PTR [rax],al
  40026b:	00 02                	add    BYTE PTR [rdx],al
  40026d:	00 00                	add    BYTE PTR [rax],al
  40026f:	00 00                	add    BYTE PTR [rax],al
  400271:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    al,0x0
  400276:	00 00                	add    BYTE PTR [rax],al
  400278:	14 00                	adc    al,0x0
  40027a:	00 00                	add    BYTE PTR [rax],al
  40027c:	03 00                	add    eax,DWORD PTR [rax]
  40027e:	00 00                	add    BYTE PTR [rax],al
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push rbp
  400283:	00 7f 5a             	add    BYTE PTR [rdi+0x5a],bh
  400286:	65 89 d7             	gs mov edi,edx
  400289:	dc 8e 8d 4a 36 86    	fmul   QWORD PTR [rsi-0x79c9b573]
  40028f:	74 a2                	je     400233 <_init-0x46d>
  400291:	ba 87 0b 68 0d       	mov    edx,0xd680b87
  400296:	f0 97                	lock xchg edi,eax

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    eax,DWORD PTR [rax]
  40029a:	00 00                	add    BYTE PTR [rax],al
  40029c:	0d 00 00 00 01       	or     eax,0x1000000
  4002a1:	00 00                	add    BYTE PTR [rax],al
  4002a3:	00 06                	add    BYTE PTR [rsi],al
  4002a5:	00 00                	add    BYTE PTR [rax],al
  4002a7:	00 00                	add    BYTE PTR [rax],al
  4002a9:	01 20                	add    DWORD PTR [rax],esp
  4002ab:	00 80 01 10 02 0d    	add    BYTE PTR [rax+0xd021001],al
  4002b1:	00 00                	add    BYTE PTR [rax],al
  4002b3:	00 0e                	add    BYTE PTR [rsi],cl
  4002b5:	00 00                	add    BYTE PTR [rax],al
  4002b7:	00 00                	add    BYTE PTR [rax],al
  4002b9:	00 00                	add    BYTE PTR [rax],al
  4002bb:	00 29                	add    BYTE PTR [rcx],ch
  4002bd:	1d 8c 1c 66 55       	sbb    eax,0x55661c8c
  4002c2:	61                   	(bad)  
  4002c3:	10 39                	adc    BYTE PTR [rcx],bh
  4002c5:	f2                   	repnz
  4002c6:	8b                   	.byte 0x8b
  4002c7:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000004002c8 <.dynsym>:
	...
  4002e0:	11 00                	adc    DWORD PTR [rax],eax
  4002e2:	00 00                	add    BYTE PTR [rax],al
  4002e4:	12 00                	adc    al,BYTE PTR [rax]
	...
  4002f6:	00 00                	add    BYTE PTR [rax],al
  4002f8:	1c 00                	sbb    al,0x0
  4002fa:	00 00                	add    BYTE PTR [rax],al
  4002fc:	12 00                	adc    al,BYTE PTR [rax]
	...
  40030e:	00 00                	add    BYTE PTR [rax],al
  400310:	26 00 00             	add    BYTE PTR es:[rax],al
  400313:	00 12                	add    BYTE PTR [rdx],dl
	...
  400325:	00 00                	add    BYTE PTR [rax],al
  400327:	00 3d 00 00 00 12    	add    BYTE PTR [rip+0x12000000],bh        # 1240032d <_end+0x11dfe225>
	...
  40033d:	00 00                	add    BYTE PTR [rax],al
  40033f:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
  400343:	00 12                	add    BYTE PTR [rdx],dl
	...
  400355:	00 00                	add    BYTE PTR [rax],al
  400357:	00 64 00 00          	add    BYTE PTR [rax+rax*1+0x0],ah
  40035b:	00 12                	add    BYTE PTR [rdx],dl
	...
  40036d:	00 00                	add    BYTE PTR [rax],al
  40036f:	00 0b                	add    BYTE PTR [rbx],cl
  400371:	00 00                	add    BYTE PTR [rax],al
  400373:	00 12                	add    BYTE PTR [rdx],dl
	...
  400385:	00 00                	add    BYTE PTR [rax],al
  400387:	00 8c 00 00 00 20 00 	add    BYTE PTR [rax+rax*1+0x200000],cl
	...
  40039e:	00 00                	add    BYTE PTR [rax],al
  4003a0:	21 00                	and    DWORD PTR [rax],eax
  4003a2:	00 00                	add    BYTE PTR [rax],al
  4003a4:	12 00                	adc    al,BYTE PTR [rax]
	...
  4003b6:	00 00                	add    BYTE PTR [rax],al
  4003b8:	5c                   	pop    rsp
  4003b9:	00 00                	add    BYTE PTR [rax],al
  4003bb:	00 12                	add    BYTE PTR [rdx],dl
	...
  4003cd:	00 00                	add    BYTE PTR [rax],al
  4003cf:	00 57 00             	add    BYTE PTR [rdi+0x0],dl
  4003d2:	00 00                	add    BYTE PTR [rax],al
  4003d4:	12 00                	adc    al,BYTE PTR [rax]
	...
  4003e6:	00 00                	add    BYTE PTR [rax],al
  4003e8:	0c 00                	or     al,0x0
  4003ea:	00 00                	add    BYTE PTR [rax],al
  4003ec:	12 00                	adc    al,BYTE PTR [rax]
	...
  4003fe:	00 00                	add    BYTE PTR [rax],al
  400400:	49 00 00             	rex.WB add BYTE PTR [r8],al
  400403:	00 11                	add    BYTE PTR [rcx],dl
  400405:	00 18                	add    BYTE PTR [rax],bl
  400407:	00 80 20 60 00 00    	add    BYTE PTR [rax+0x6020],al
  40040d:	00 00                	add    BYTE PTR [rax],al
  40040f:	00 08                	add    BYTE PTR [rax],cl
  400411:	00 00                	add    BYTE PTR [rax],al
  400413:	00 00                	add    BYTE PTR [rax],al
  400415:	00 00                	add    BYTE PTR [rax],al
  400417:	00 37                	add    BYTE PTR [rdi],dh
  400419:	00 00                	add    BYTE PTR [rax],al
  40041b:	00 11                	add    BYTE PTR [rcx],dl
  40041d:	00 18                	add    BYTE PTR [rax],bl
  40041f:	00 90 20 60 00 00    	add    BYTE PTR [rax+0x6020],dl
  400425:	00 00                	add    BYTE PTR [rax],al
  400427:	00 08                	add    BYTE PTR [rax],cl
  400429:	00 00                	add    BYTE PTR [rax],al
  40042b:	00 00                	add    BYTE PTR [rax],al
  40042d:	00 00                	add    BYTE PTR [rax],al
  40042f:	00 50 00             	add    BYTE PTR [rax+0x0],dl
  400432:	00 00                	add    BYTE PTR [rax],al
  400434:	11 00                	adc    DWORD PTR [rax],eax
  400436:	18 00                	sbb    BYTE PTR [rax],al
  400438:	a0 20 60 00 00 00 00 	movabs al,ds:0x800000000006020
  40043f:	00 08 
  400441:	00 00                	add    BYTE PTR [rax],al
  400443:	00 00                	add    BYTE PTR [rax],al
  400445:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

0000000000400448 <.dynstr>:
  400448:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  40044c:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  40044e:	73 6f                	jae    4004bf <_init-0x1e1>
  400450:	2e 36 00 73 72       	cs add BYTE PTR ss:[rbx+0x72],dh
  400455:	61                   	(bad)  
  400456:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400457:	64 00 5f 5f          	add    BYTE PTR fs:[rdi+0x5f],bl
  40045b:	72 65                	jb     4004c2 <_init-0x1de>
  40045d:	61                   	(bad)  
  40045e:	64 5f                	fs pop rdi
  400460:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
  400463:	00 70 75             	add    BYTE PTR [rax+0x75],dh
  400466:	74 73                	je     4004db <_init-0x1c5>
  400468:	00 74 69 6d          	add    BYTE PTR [rcx+rbp*2+0x6d],dh
  40046c:	65 00 5f 5f          	add    BYTE PTR gs:[rdi+0x5f],bl
  400470:	73 74                	jae    4004e6 <_init-0x1ba>
  400472:	61                   	(bad)  
  400473:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
  400476:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
  400479:	5f                   	pop    rdi
  40047a:	66 61                	data16 (bad) 
  40047c:	69 6c 00 73 74 64 69 	imul   ebp,DWORD PTR [rax+rax*1+0x73],0x6e696474
  400483:	6e 
  400484:	00 70 72             	add    BYTE PTR [rax+0x72],dh
  400487:	69 6e 74 66 00 72 65 	imul   ebp,DWORD PTR [rsi+0x74],0x65720066
  40048e:	61                   	(bad)  
  40048f:	64 00 73 74          	add    BYTE PTR fs:[rbx+0x74],dh
  400493:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
  400495:	75 74                	jne    40050b <_init-0x195>
  400497:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  40049a:	64 65 72 72          	fs gs jb 400510 <_init-0x190>
  40049e:	00 61 74             	add    BYTE PTR [rcx+0x74],ah
  4004a1:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4004a2:	69 00 73 65 74 76    	imul   eax,DWORD PTR [rax],0x76746573
  4004a8:	62                   	(bad)  
  4004a9:	75 66                	jne    400511 <_init-0x18f>
  4004ab:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
  4004ae:	6c                   	ins    BYTE PTR es:[rdi],dx
  4004af:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  4004b6:	72 74                	jb     40052c <_init-0x174>
  4004b8:	5f                   	pop    rdi
  4004b9:	6d                   	ins    DWORD PTR es:[rdi],dx
  4004ba:	61                   	(bad)  
  4004bb:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
  4004c2:	43 5f                	rex.XB pop r15
  4004c4:	32 2e                	xor    ch,BYTE PTR [rsi]
  4004c6:	34 00                	xor    al,0x0
  4004c8:	47                   	rex.RXB
  4004c9:	4c                   	rex.WR
  4004ca:	49                   	rex.WB
  4004cb:	42                   	rex.X
  4004cc:	43 5f                	rex.XB pop r15
  4004ce:	32 2e                	xor    ch,BYTE PTR [rsi]
  4004d0:	32 2e                	xor    ch,BYTE PTR [rsi]
  4004d2:	35 00 5f 5f 67       	xor    eax,0x675f5f00
  4004d7:	6d                   	ins    DWORD PTR es:[rdi],dx
  4004d8:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4004d9:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4004da:	5f                   	pop    rdi
  4004db:	73 74                	jae    400551 <_init-0x14f>
  4004dd:	61                   	(bad)  
  4004de:	72 74                	jb     400554 <_init-0x14c>
  4004e0:	5f                   	pop    rdi
  4004e1:	5f                   	pop    rdi
	...

Disassembly of section .gnu.version:

00000000004004e4 <.gnu.version>:
  4004e4:	00 00                	add    BYTE PTR [rax],al
  4004e6:	03 00                	add    eax,DWORD PTR [rax]
  4004e8:	02 00                	add    al,BYTE PTR [rax]
  4004ea:	03 00                	add    eax,DWORD PTR [rax]
  4004ec:	02 00                	add    al,BYTE PTR [rax]
  4004ee:	02 00                	add    al,BYTE PTR [rax]
  4004f0:	02 00                	add    al,BYTE PTR [rax]
  4004f2:	02 00                	add    al,BYTE PTR [rax]
  4004f4:	00 00                	add    BYTE PTR [rax],al
  4004f6:	02 00                	add    al,BYTE PTR [rax]
  4004f8:	02 00                	add    al,BYTE PTR [rax]
  4004fa:	02 00                	add    al,BYTE PTR [rax]
  4004fc:	02 00                	add    al,BYTE PTR [rax]
  4004fe:	02 00                	add    al,BYTE PTR [rax]
  400500:	02 00                	add    al,BYTE PTR [rax]
  400502:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000400508 <.gnu.version_r>:
  400508:	01 00                	add    DWORD PTR [rax],eax
  40050a:	02 00                	add    al,BYTE PTR [rax]
  40050c:	01 00                	add    DWORD PTR [rax],eax
  40050e:	00 00                	add    BYTE PTR [rax],al
  400510:	10 00                	adc    BYTE PTR [rax],al
  400512:	00 00                	add    BYTE PTR [rax],al
  400514:	00 00                	add    BYTE PTR [rax],al
  400516:	00 00                	add    BYTE PTR [rax],al
  400518:	14 69                	adc    al,0x69
  40051a:	69 0d 00 00 03 00 76 	imul   ecx,DWORD PTR [rip+0x30000],0x76        # 430524 <__FRAME_END__+0x2f5e0>
  400521:	00 00 00 
  400524:	10 00                	adc    BYTE PTR [rax],al
  400526:	00 00                	add    BYTE PTR [rax],al
  400528:	75 1a                	jne    400544 <_init-0x15c>
  40052a:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400530:	80 00 00             	add    BYTE PTR [rax],0x0
  400533:	00 00                	add    BYTE PTR [rax],al
  400535:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000400538 <.rela.dyn>:
  400538:	f0 1f                	lock (bad) 
  40053a:	60                   	(bad)  
  40053b:	00 00                	add    BYTE PTR [rax],al
  40053d:	00 00                	add    BYTE PTR [rax],al
  40053f:	00 06                	add    BYTE PTR [rsi],al
  400541:	00 00                	add    BYTE PTR [rax],al
  400543:	00 06                	add    BYTE PTR [rsi],al
	...
  40054d:	00 00                	add    BYTE PTR [rax],al
  40054f:	00 f8                	add    al,bh
  400551:	1f                   	(bad)  
  400552:	60                   	(bad)  
  400553:	00 00                	add    BYTE PTR [rax],al
  400555:	00 00                	add    BYTE PTR [rax],al
  400557:	00 06                	add    BYTE PTR [rsi],al
  400559:	00 00                	add    BYTE PTR [rax],al
  40055b:	00 08                	add    BYTE PTR [rax],cl
	...
  400565:	00 00                	add    BYTE PTR [rax],al
  400567:	00 80 20 60 00 00    	add    BYTE PTR [rax+0x6020],al
  40056d:	00 00                	add    BYTE PTR [rax],al
  40056f:	00 05 00 00 00 0d    	add    BYTE PTR [rip+0xd000000],al        # d400575 <_end+0xcdfe46d>
	...
  40057d:	00 00                	add    BYTE PTR [rax],al
  40057f:	00 90 20 60 00 00    	add    BYTE PTR [rax+0x6020],dl
  400585:	00 00                	add    BYTE PTR [rax],al
  400587:	00 05 00 00 00 0e    	add    BYTE PTR [rip+0xe000000],al        # e40058d <_end+0xddfe485>
	...
  400595:	00 00                	add    BYTE PTR [rax],al
  400597:	00 a0 20 60 00 00    	add    BYTE PTR [rax+0x6020],ah
  40059d:	00 00                	add    BYTE PTR [rax],al
  40059f:	00 05 00 00 00 0f    	add    BYTE PTR [rip+0xf000000],al        # f4005a5 <_end+0xedfe49d>
	...

Disassembly of section .rela.plt:

00000000004005b0 <.rela.plt>:
  4005b0:	18 20                	sbb    BYTE PTR [rax],ah
  4005b2:	60                   	(bad)  
  4005b3:	00 00                	add    BYTE PTR [rax],al
  4005b5:	00 00                	add    BYTE PTR [rax],al
  4005b7:	00 07                	add    BYTE PTR [rdi],al
  4005b9:	00 00                	add    BYTE PTR [rax],al
  4005bb:	00 01                	add    BYTE PTR [rcx],al
	...
  4005c5:	00 00                	add    BYTE PTR [rax],al
  4005c7:	00 20                	add    BYTE PTR [rax],ah
  4005c9:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  4005cc:	00 00                	add    BYTE PTR [rax],al
  4005ce:	00 00                	add    BYTE PTR [rax],al
  4005d0:	07                   	(bad)  
  4005d1:	00 00                	add    BYTE PTR [rax],al
  4005d3:	00 02                	add    BYTE PTR [rdx],al
	...
  4005dd:	00 00                	add    BYTE PTR [rax],al
  4005df:	00 28                	add    BYTE PTR [rax],ch
  4005e1:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  4005e4:	00 00                	add    BYTE PTR [rax],al
  4005e6:	00 00                	add    BYTE PTR [rax],al
  4005e8:	07                   	(bad)  
  4005e9:	00 00                	add    BYTE PTR [rax],al
  4005eb:	00 03                	add    BYTE PTR [rbx],al
	...
  4005f5:	00 00                	add    BYTE PTR [rax],al
  4005f7:	00 30                	add    BYTE PTR [rax],dh
  4005f9:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  4005fc:	00 00                	add    BYTE PTR [rax],al
  4005fe:	00 00                	add    BYTE PTR [rax],al
  400600:	07                   	(bad)  
  400601:	00 00                	add    BYTE PTR [rax],al
  400603:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
  40060e:	00 00                	add    BYTE PTR [rax],al
  400610:	38 20                	cmp    BYTE PTR [rax],ah
  400612:	60                   	(bad)  
  400613:	00 00                	add    BYTE PTR [rax],al
  400615:	00 00                	add    BYTE PTR [rax],al
  400617:	00 07                	add    BYTE PTR [rdi],al
  400619:	00 00                	add    BYTE PTR [rax],al
  40061b:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 400621 <_init-0x7f>
  400621:	00 00                	add    BYTE PTR [rax],al
  400623:	00 00                	add    BYTE PTR [rax],al
  400625:	00 00                	add    BYTE PTR [rax],al
  400627:	00 40 20             	add    BYTE PTR [rax+0x20],al
  40062a:	60                   	(bad)  
  40062b:	00 00                	add    BYTE PTR [rax],al
  40062d:	00 00                	add    BYTE PTR [rax],al
  40062f:	00 07                	add    BYTE PTR [rdi],al
  400631:	00 00                	add    BYTE PTR [rax],al
  400633:	00 07                	add    BYTE PTR [rdi],al
	...
  40063d:	00 00                	add    BYTE PTR [rax],al
  40063f:	00 48 20             	add    BYTE PTR [rax+0x20],cl
  400642:	60                   	(bad)  
  400643:	00 00                	add    BYTE PTR [rax],al
  400645:	00 00                	add    BYTE PTR [rax],al
  400647:	00 07                	add    BYTE PTR [rdi],al
  400649:	00 00                	add    BYTE PTR [rax],al
  40064b:	00 09                	add    BYTE PTR [rcx],cl
	...
  400655:	00 00                	add    BYTE PTR [rax],al
  400657:	00 50 20             	add    BYTE PTR [rax+0x20],dl
  40065a:	60                   	(bad)  
  40065b:	00 00                	add    BYTE PTR [rax],al
  40065d:	00 00                	add    BYTE PTR [rax],al
  40065f:	00 07                	add    BYTE PTR [rdi],al
  400661:	00 00                	add    BYTE PTR [rax],al
  400663:	00 0a                	add    BYTE PTR [rdx],cl
	...
  40066d:	00 00                	add    BYTE PTR [rax],al
  40066f:	00 58 20             	add    BYTE PTR [rax+0x20],bl
  400672:	60                   	(bad)  
  400673:	00 00                	add    BYTE PTR [rax],al
  400675:	00 00                	add    BYTE PTR [rax],al
  400677:	00 07                	add    BYTE PTR [rdi],al
  400679:	00 00                	add    BYTE PTR [rax],al
  40067b:	00 0b                	add    BYTE PTR [rbx],cl
	...
  400685:	00 00                	add    BYTE PTR [rax],al
  400687:	00 60 20             	add    BYTE PTR [rax+0x20],ah
  40068a:	60                   	(bad)  
  40068b:	00 00                	add    BYTE PTR [rax],al
  40068d:	00 00                	add    BYTE PTR [rax],al
  40068f:	00 07                	add    BYTE PTR [rdi],al
  400691:	00 00                	add    BYTE PTR [rax],al
  400693:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...

Disassembly of section .init:

00000000004006a0 <_init>:
  4006a0:	48 83 ec 08          	sub    rsp,0x8
  4006a4:	48 8b 05 4d 19 20 00 	mov    rax,QWORD PTR [rip+0x20194d]        # 601ff8 <__gmon_start__>
  4006ab:	48 85 c0             	test   rax,rax
  4006ae:	74 02                	je     4006b2 <_init+0x12>
  4006b0:	ff d0                	call   rax
  4006b2:	48 83 c4 08          	add    rsp,0x8
  4006b6:	c3                   	ret    

Disassembly of section .plt:

00000000004006c0 <.plt>:
  4006c0:	ff 35 42 19 20 00    	push   QWORD PTR [rip+0x201942]        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006c6:	ff 25 44 19 20 00    	jmp    QWORD PTR [rip+0x201944]        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006d0 <__read_chk@plt>:
  4006d0:	ff 25 42 19 20 00    	jmp    QWORD PTR [rip+0x201942]        # 602018 <__read_chk@GLIBC_2.4>
  4006d6:	68 00 00 00 00       	push   0x0
  4006db:	e9 e0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006e0 <puts@plt>:
  4006e0:	ff 25 3a 19 20 00    	jmp    QWORD PTR [rip+0x20193a]        # 602020 <puts@GLIBC_2.2.5>
  4006e6:	68 01 00 00 00       	push   0x1
  4006eb:	e9 d0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006f0 <__stack_chk_fail@plt>:
  4006f0:	ff 25 32 19 20 00    	jmp    QWORD PTR [rip+0x201932]        # 602028 <__stack_chk_fail@GLIBC_2.4>
  4006f6:	68 02 00 00 00       	push   0x2
  4006fb:	e9 c0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400700 <printf@plt>:
  400700:	ff 25 2a 19 20 00    	jmp    QWORD PTR [rip+0x20192a]        # 602030 <printf@GLIBC_2.2.5>
  400706:	68 03 00 00 00       	push   0x3
  40070b:	e9 b0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400710 <read@plt>:
  400710:	ff 25 22 19 20 00    	jmp    QWORD PTR [rip+0x201922]        # 602038 <read@GLIBC_2.2.5>
  400716:	68 04 00 00 00       	push   0x4
  40071b:	e9 a0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400720 <srand@plt>:
  400720:	ff 25 1a 19 20 00    	jmp    QWORD PTR [rip+0x20191a]        # 602040 <srand@GLIBC_2.2.5>
  400726:	68 05 00 00 00       	push   0x5
  40072b:	e9 90 ff ff ff       	jmp    4006c0 <.plt>

0000000000400730 <time@plt>:
  400730:	ff 25 12 19 20 00    	jmp    QWORD PTR [rip+0x201912]        # 602048 <time@GLIBC_2.2.5>
  400736:	68 06 00 00 00       	push   0x6
  40073b:	e9 80 ff ff ff       	jmp    4006c0 <.plt>

0000000000400740 <setvbuf@plt>:
  400740:	ff 25 0a 19 20 00    	jmp    QWORD PTR [rip+0x20190a]        # 602050 <setvbuf@GLIBC_2.2.5>
  400746:	68 07 00 00 00       	push   0x7
  40074b:	e9 70 ff ff ff       	jmp    4006c0 <.plt>

0000000000400750 <atoi@plt>:
  400750:	ff 25 02 19 20 00    	jmp    QWORD PTR [rip+0x201902]        # 602058 <atoi@GLIBC_2.2.5>
  400756:	68 08 00 00 00       	push   0x8
  40075b:	e9 60 ff ff ff       	jmp    4006c0 <.plt>

0000000000400760 <rand@plt>:
  400760:	ff 25 fa 18 20 00    	jmp    QWORD PTR [rip+0x2018fa]        # 602060 <rand@GLIBC_2.2.5>
  400766:	68 09 00 00 00       	push   0x9
  40076b:	e9 50 ff ff ff       	jmp    4006c0 <.plt>

Disassembly of section .text:

0000000000400770 <_start>:
  400770:	31 ed                	xor    ebp,ebp
  400772:	49 89 d1             	mov    r9,rdx
  400775:	5e                   	pop    rsi
  400776:	48 89 e2             	mov    rdx,rsp
  400779:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40077d:	50                   	push   rax
  40077e:	54                   	push   rsp
  40077f:	49 c7 c0 30 0c 40 00 	mov    r8,0x400c30
  400786:	48 c7 c1 c0 0b 40 00 	mov    rcx,0x400bc0
  40078d:	48 c7 c7 21 0b 40 00 	mov    rdi,0x400b21
  400794:	ff 15 56 18 20 00    	call   QWORD PTR [rip+0x201856]        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40079a:	f4                   	hlt    
  40079b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004007a0 <_dl_relocate_static_pie>:
  4007a0:	f3 c3                	repz ret 
  4007a2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4007a9:	00 00 00 
  4007ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004007b0 <deregister_tm_clones>:
  4007b0:	55                   	push   rbp
  4007b1:	b8 78 20 60 00       	mov    eax,0x602078
  4007b6:	48 3d 78 20 60 00    	cmp    rax,0x602078
  4007bc:	48 89 e5             	mov    rbp,rsp
  4007bf:	74 17                	je     4007d8 <deregister_tm_clones+0x28>
  4007c1:	b8 00 00 00 00       	mov    eax,0x0
  4007c6:	48 85 c0             	test   rax,rax
  4007c9:	74 0d                	je     4007d8 <deregister_tm_clones+0x28>
  4007cb:	5d                   	pop    rbp
  4007cc:	bf 78 20 60 00       	mov    edi,0x602078
  4007d1:	ff e0                	jmp    rax
  4007d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4007d8:	5d                   	pop    rbp
  4007d9:	c3                   	ret    
  4007da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004007e0 <register_tm_clones>:
  4007e0:	be 78 20 60 00       	mov    esi,0x602078
  4007e5:	55                   	push   rbp
  4007e6:	48 81 ee 78 20 60 00 	sub    rsi,0x602078
  4007ed:	48 89 e5             	mov    rbp,rsp
  4007f0:	48 c1 fe 03          	sar    rsi,0x3
  4007f4:	48 89 f0             	mov    rax,rsi
  4007f7:	48 c1 e8 3f          	shr    rax,0x3f
  4007fb:	48 01 c6             	add    rsi,rax
  4007fe:	48 d1 fe             	sar    rsi,1
  400801:	74 15                	je     400818 <register_tm_clones+0x38>
  400803:	b8 00 00 00 00       	mov    eax,0x0
  400808:	48 85 c0             	test   rax,rax
  40080b:	74 0b                	je     400818 <register_tm_clones+0x38>
  40080d:	5d                   	pop    rbp
  40080e:	bf 78 20 60 00       	mov    edi,0x602078
  400813:	ff e0                	jmp    rax
  400815:	0f 1f 00             	nop    DWORD PTR [rax]
  400818:	5d                   	pop    rbp
  400819:	c3                   	ret    
  40081a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400820 <__do_global_dtors_aux>:
  400820:	80 3d 81 18 20 00 00 	cmp    BYTE PTR [rip+0x201881],0x0        # 6020a8 <completed.7697>
  400827:	75 17                	jne    400840 <__do_global_dtors_aux+0x20>
  400829:	55                   	push   rbp
  40082a:	48 89 e5             	mov    rbp,rsp
  40082d:	e8 7e ff ff ff       	call   4007b0 <deregister_tm_clones>
  400832:	c6 05 6f 18 20 00 01 	mov    BYTE PTR [rip+0x20186f],0x1        # 6020a8 <completed.7697>
  400839:	5d                   	pop    rbp
  40083a:	c3                   	ret    
  40083b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400840:	f3 c3                	repz ret 
  400842:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400846:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40084d:	00 00 00 

0000000000400850 <frame_dummy>:
  400850:	55                   	push   rbp
  400851:	48 89 e5             	mov    rbp,rsp
  400854:	5d                   	pop    rbp
  400855:	eb 89                	jmp    4007e0 <register_tm_clones>

0000000000400857 <init>:
  400857:	55                   	push   rbp
  400858:	48 89 e5             	mov    rbp,rsp
  40085b:	48 8b 05 1e 18 20 00 	mov    rax,QWORD PTR [rip+0x20181e]        # 602080 <stdout@@GLIBC_2.2.5>
  400862:	b9 00 00 00 00       	mov    ecx,0x0
  400867:	ba 02 00 00 00       	mov    edx,0x2
  40086c:	be 00 00 00 00       	mov    esi,0x0
  400871:	48 89 c7             	mov    rdi,rax
  400874:	e8 c7 fe ff ff       	call   400740 <setvbuf@plt>
  400879:	48 8b 05 10 18 20 00 	mov    rax,QWORD PTR [rip+0x201810]        # 602090 <stdin@@GLIBC_2.2.5>
  400880:	b9 00 00 00 00       	mov    ecx,0x0
  400885:	ba 02 00 00 00       	mov    edx,0x2
  40088a:	be 00 00 00 00       	mov    esi,0x0
  40088f:	48 89 c7             	mov    rdi,rax
  400892:	e8 a9 fe ff ff       	call   400740 <setvbuf@plt>
  400897:	48 8b 05 02 18 20 00 	mov    rax,QWORD PTR [rip+0x201802]        # 6020a0 <stderr@@GLIBC_2.2.5>
  40089e:	b9 00 00 00 00       	mov    ecx,0x0
  4008a3:	ba 02 00 00 00       	mov    edx,0x2
  4008a8:	be 00 00 00 00       	mov    esi,0x0
  4008ad:	48 89 c7             	mov    rdi,rax
  4008b0:	e8 8b fe ff ff       	call   400740 <setvbuf@plt>
  4008b5:	bf 00 00 00 00       	mov    edi,0x0
  4008ba:	b8 00 00 00 00       	mov    eax,0x0
  4008bf:	e8 6c fe ff ff       	call   400730 <time@plt>
  4008c4:	89 05 36 18 20 00    	mov    DWORD PTR [rip+0x201836],eax        # 602100 <seed>
  4008ca:	90                   	nop
  4008cb:	5d                   	pop    rbp
  4008cc:	c3                   	ret    

00000000004008cd <read_int>:
  4008cd:	55                   	push   rbp
  4008ce:	48 89 e5             	mov    rbp,rsp
  4008d1:	48 83 ec 20          	sub    rsp,0x20
  4008d5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4008dc:	00 00 
  4008de:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4008e2:	31 c0                	xor    eax,eax
  4008e4:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4008e8:	b9 10 00 00 00       	mov    ecx,0x10
  4008ed:	ba 0f 00 00 00       	mov    edx,0xf
  4008f2:	48 89 c6             	mov    rsi,rax
  4008f5:	bf 00 00 00 00       	mov    edi,0x0
  4008fa:	b8 00 00 00 00       	mov    eax,0x0
  4008ff:	e8 cc fd ff ff       	call   4006d0 <__read_chk@plt>
  400904:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400908:	48 89 c7             	mov    rdi,rax
  40090b:	e8 40 fe ff ff       	call   400750 <atoi@plt>
  400910:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400914:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
  40091b:	00 00 
  40091d:	74 05                	je     400924 <read_int+0x57>
  40091f:	e8 cc fd ff ff       	call   4006f0 <__stack_chk_fail@plt>
  400924:	c9                   	leave  
  400925:	c3                   	ret    

0000000000400926 <welcome>:
  400926:	55                   	push   rbp
  400927:	48 89 e5             	mov    rbp,rsp
  40092a:	48 8d 3d 17 03 00 00 	lea    rdi,[rip+0x317]        # 400c48 <_IO_stdin_used+0x8>
  400931:	e8 aa fd ff ff       	call   4006e0 <puts@plt>
  400936:	48 8d 3d 22 03 00 00 	lea    rdi,[rip+0x322]        # 400c5f <_IO_stdin_used+0x1f>
  40093d:	e8 9e fd ff ff       	call   4006e0 <puts@plt>
  400942:	48 8d 3d ff 02 00 00 	lea    rdi,[rip+0x2ff]        # 400c48 <_IO_stdin_used+0x8>
  400949:	e8 92 fd ff ff       	call   4006e0 <puts@plt>
  40094e:	48 8d 3d 21 03 00 00 	lea    rdi,[rip+0x321]        # 400c76 <_IO_stdin_used+0x36>
  400955:	e8 86 fd ff ff       	call   4006e0 <puts@plt>
  40095a:	90                   	nop
  40095b:	5d                   	pop    rbp
  40095c:	c3                   	ret    

000000000040095d <casino>:
  40095d:	55                   	push   rbp
  40095e:	48 89 e5             	mov    rbp,rsp
  400961:	48 83 ec 20          	sub    rsp,0x20
  400965:	8b 05 95 17 20 00    	mov    eax,DWORD PTR [rip+0x201795]        # 602100 <seed>
  40096b:	89 c7                	mov    edi,eax
  40096d:	e8 ae fd ff ff       	call   400720 <srand@plt>
  400972:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  400979:	eb 3f                	jmp    4009ba <casino+0x5d>
  40097b:	e8 e0 fd ff ff       	call   400760 <rand@plt>
  400980:	89 c1                	mov    ecx,eax
  400982:	ba 1f 85 eb 51       	mov    edx,0x51eb851f
  400987:	89 c8                	mov    eax,ecx
  400989:	f7 ea                	imul   edx
  40098b:	c1 fa 05             	sar    edx,0x5
  40098e:	89 c8                	mov    eax,ecx
  400990:	c1 f8 1f             	sar    eax,0x1f
  400993:	29 c2                	sub    edx,eax
  400995:	89 d0                	mov    eax,edx
  400997:	6b c0 64             	imul   eax,eax,0x64
  40099a:	29 c1                	sub    ecx,eax
  40099c:	89 c8                	mov    eax,ecx
  40099e:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  4009a1:	48 63 d2             	movsxd rdx,edx
  4009a4:	48 8d 0c 95 00 00 00 	lea    rcx,[rdx*4+0x0]
  4009ab:	00 
  4009ac:	48 8d 15 fd 16 20 00 	lea    rdx,[rip+0x2016fd]        # 6020b0 <lottery>
  4009b3:	89 04 11             	mov    DWORD PTR [rcx+rdx*1],eax
  4009b6:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  4009ba:	83 7d ec 05          	cmp    DWORD PTR [rbp-0x14],0x5
  4009be:	7e bb                	jle    40097b <casino+0x1e>
  4009c0:	c7 45 f0 02 00 00 00 	mov    DWORD PTR [rbp-0x10],0x2
  4009c7:	e9 30 01 00 00       	jmp    400afc <casino+0x19f>
  4009cc:	48 8d 3d a4 02 00 00 	lea    rdi,[rip+0x2a4]        # 400c77 <_IO_stdin_used+0x37>
  4009d3:	b8 00 00 00 00       	mov    eax,0x0
  4009d8:	e8 23 fd ff ff       	call   400700 <printf@plt>
  4009dd:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  4009e4:	eb 3d                	jmp    400a23 <casino+0xc6>
  4009e6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4009e9:	89 c6                	mov    esi,eax
  4009eb:	48 8d 3d a0 02 00 00 	lea    rdi,[rip+0x2a0]        # 400c92 <_IO_stdin_used+0x52>
  4009f2:	b8 00 00 00 00       	mov    eax,0x0
  4009f7:	e8 04 fd ff ff       	call   400700 <printf@plt>
  4009fc:	b8 00 00 00 00       	mov    eax,0x0
  400a01:	e8 c7 fe ff ff       	call   4008cd <read_int>
  400a06:	89 c1                	mov    ecx,eax
  400a08:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  400a0b:	48 98                	cdqe   
  400a0d:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400a14:	00 
  400a15:	48 8d 05 b4 16 20 00 	lea    rax,[rip+0x2016b4]        # 6020d0 <guess>
  400a1c:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
  400a1f:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  400a23:	83 7d f4 05          	cmp    DWORD PTR [rbp-0xc],0x5
  400a27:	7e bd                	jle    4009e6 <casino+0x89>
  400a29:	48 8d 3d 78 02 00 00 	lea    rdi,[rip+0x278]        # 400ca8 <_IO_stdin_used+0x68>
  400a30:	b8 00 00 00 00       	mov    eax,0x0
  400a35:	e8 c6 fc ff ff       	call   400700 <printf@plt>
  400a3a:	b8 00 00 00 00       	mov    eax,0x0
  400a3f:	e8 89 fe ff ff       	call   4008cd <read_int>
  400a44:	83 f8 01             	cmp    eax,0x1
  400a47:	75 5a                	jne    400aa3 <casino+0x146>
  400a49:	48 8d 3d 7a 02 00 00 	lea    rdi,[rip+0x27a]        # 400cca <_IO_stdin_used+0x8a>
  400a50:	b8 00 00 00 00       	mov    eax,0x0
  400a55:	e8 a6 fc ff ff       	call   400700 <printf@plt>
  400a5a:	b8 00 00 00 00       	mov    eax,0x0
  400a5f:	e8 69 fe ff ff       	call   4008cd <read_int>
  400a64:	83 e8 01             	sub    eax,0x1
  400a67:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400a6a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400a6d:	89 c6                	mov    esi,eax
  400a6f:	48 8d 3d 1c 02 00 00 	lea    rdi,[rip+0x21c]        # 400c92 <_IO_stdin_used+0x52>
  400a76:	b8 00 00 00 00       	mov    eax,0x0
  400a7b:	e8 80 fc ff ff       	call   400700 <printf@plt>
  400a80:	b8 00 00 00 00       	mov    eax,0x0
  400a85:	e8 43 fe ff ff       	call   4008cd <read_int>
  400a8a:	89 c1                	mov    ecx,eax
  400a8c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400a8f:	48 98                	cdqe   
  400a91:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400a98:	00 
  400a99:	48 8d 05 30 16 20 00 	lea    rax,[rip+0x201630]        # 6020d0 <guess>
  400aa0:	89 0c 02             	mov    DWORD PTR [rdx+rax*1],ecx
  400aa3:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  400aaa:	eb 4a                	jmp    400af6 <casino+0x199>
  400aac:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400aaf:	48 98                	cdqe   
  400ab1:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400ab8:	00 
  400ab9:	48 8d 05 10 16 20 00 	lea    rax,[rip+0x201610]        # 6020d0 <guess>
  400ac0:	8b 14 02             	mov    edx,DWORD PTR [rdx+rax*1]
  400ac3:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400ac6:	48 98                	cdqe   
  400ac8:	48 8d 0c 85 00 00 00 	lea    rcx,[rax*4+0x0]
  400acf:	00 
  400ad0:	48 8d 05 d9 15 20 00 	lea    rax,[rip+0x2015d9]        # 6020b0 <lottery>
  400ad7:	8b 04 01             	mov    eax,DWORD PTR [rcx+rax*1]
  400ada:	39 c2                	cmp    edx,eax
  400adc:	74 02                	je     400ae0 <casino+0x183>
  400ade:	eb 1c                	jmp    400afc <casino+0x19f>
  400ae0:	83 7d f8 05          	cmp    DWORD PTR [rbp-0x8],0x5
  400ae4:	75 0c                	jne    400af2 <casino+0x195>
  400ae6:	48 8d 3d fb 01 00 00 	lea    rdi,[rip+0x1fb]        # 400ce8 <_IO_stdin_used+0xa8>
  400aed:	e8 ee fb ff ff       	call   4006e0 <puts@plt>
  400af2:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
  400af6:	83 7d f8 05          	cmp    DWORD PTR [rbp-0x8],0x5
  400afa:	7e b0                	jle    400aac <casino+0x14f>
  400afc:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  400aff:	8d 50 ff             	lea    edx,[rax-0x1]
  400b02:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
  400b05:	85 c0                	test   eax,eax
  400b07:	0f 85 bf fe ff ff    	jne    4009cc <casino+0x6f>
  400b0d:	48 8d 3d f7 01 00 00 	lea    rdi,[rip+0x1f7]        # 400d0b <_IO_stdin_used+0xcb>
  400b14:	b8 00 00 00 00       	mov    eax,0x0
  400b19:	e8 e2 fb ff ff       	call   400700 <printf@plt>
  400b1e:	90                   	nop
  400b1f:	c9                   	leave  
  400b20:	c3                   	ret    

0000000000400b21 <main>:
  400b21:	55                   	push   rbp
  400b22:	48 89 e5             	mov    rbp,rsp
  400b25:	b8 00 00 00 00       	mov    eax,0x0
  400b2a:	e8 28 fd ff ff       	call   400857 <init>
  400b2f:	b8 00 00 00 00       	mov    eax,0x0
  400b34:	e8 ed fd ff ff       	call   400926 <welcome>
  400b39:	48 8d 3d dc 01 00 00 	lea    rdi,[rip+0x1dc]        # 400d1c <_IO_stdin_used+0xdc>
  400b40:	e8 9b fb ff ff       	call   4006e0 <puts@plt>
  400b45:	48 8d 3d e7 01 00 00 	lea    rdi,[rip+0x1e7]        # 400d33 <_IO_stdin_used+0xf3>
  400b4c:	b8 00 00 00 00       	mov    eax,0x0
  400b51:	e8 aa fb ff ff       	call   400700 <printf@plt>
  400b56:	ba 00 01 00 00       	mov    edx,0x100
  400b5b:	48 8d 35 8e 15 20 00 	lea    rsi,[rip+0x20158e]        # 6020f0 <name>
  400b62:	bf 00 00 00 00       	mov    edi,0x0
  400b67:	b8 00 00 00 00       	mov    eax,0x0
  400b6c:	e8 9f fb ff ff       	call   400710 <read@plt>
  400b71:	48 8d 3d c7 01 00 00 	lea    rdi,[rip+0x1c7]        # 400d3f <_IO_stdin_used+0xff>
  400b78:	b8 00 00 00 00       	mov    eax,0x0
  400b7d:	e8 7e fb ff ff       	call   400700 <printf@plt>
  400b82:	b8 00 00 00 00       	mov    eax,0x0
  400b87:	e8 41 fd ff ff       	call   4008cd <read_int>
  400b8c:	89 05 72 15 20 00    	mov    DWORD PTR [rip+0x201572],eax        # 602104 <age>
  400b92:	8b 05 6c 15 20 00    	mov    eax,DWORD PTR [rip+0x20156c]        # 602104 <age>
  400b98:	83 f8 13             	cmp    eax,0x13
  400b9b:	7f 0e                	jg     400bab <main+0x8a>
  400b9d:	48 8d 3d a6 01 00 00 	lea    rdi,[rip+0x1a6]        # 400d4a <_IO_stdin_used+0x10a>
  400ba4:	e8 37 fb ff ff       	call   4006e0 <puts@plt>
  400ba9:	eb 0a                	jmp    400bb5 <main+0x94>
  400bab:	b8 00 00 00 00       	mov    eax,0x0
  400bb0:	e8 a8 fd ff ff       	call   40095d <casino>
  400bb5:	b8 00 00 00 00       	mov    eax,0x0
  400bba:	5d                   	pop    rbp
  400bbb:	c3                   	ret    
  400bbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400bc0 <__libc_csu_init>:
  400bc0:	41 57                	push   r15
  400bc2:	41 56                	push   r14
  400bc4:	49 89 d7             	mov    r15,rdx
  400bc7:	41 55                	push   r13
  400bc9:	41 54                	push   r12
  400bcb:	4c 8d 25 3e 12 20 00 	lea    r12,[rip+0x20123e]        # 601e10 <__frame_dummy_init_array_entry>
  400bd2:	55                   	push   rbp
  400bd3:	48 8d 2d 3e 12 20 00 	lea    rbp,[rip+0x20123e]        # 601e18 <__init_array_end>
  400bda:	53                   	push   rbx
  400bdb:	41 89 fd             	mov    r13d,edi
  400bde:	49 89 f6             	mov    r14,rsi
  400be1:	4c 29 e5             	sub    rbp,r12
  400be4:	48 83 ec 08          	sub    rsp,0x8
  400be8:	48 c1 fd 03          	sar    rbp,0x3
  400bec:	e8 af fa ff ff       	call   4006a0 <_init>
  400bf1:	48 85 ed             	test   rbp,rbp
  400bf4:	74 20                	je     400c16 <__libc_csu_init+0x56>
  400bf6:	31 db                	xor    ebx,ebx
  400bf8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400bff:	00 
  400c00:	4c 89 fa             	mov    rdx,r15
  400c03:	4c 89 f6             	mov    rsi,r14
  400c06:	44 89 ef             	mov    edi,r13d
  400c09:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400c0d:	48 83 c3 01          	add    rbx,0x1
  400c11:	48 39 dd             	cmp    rbp,rbx
  400c14:	75 ea                	jne    400c00 <__libc_csu_init+0x40>
  400c16:	48 83 c4 08          	add    rsp,0x8
  400c1a:	5b                   	pop    rbx
  400c1b:	5d                   	pop    rbp
  400c1c:	41 5c                	pop    r12
  400c1e:	41 5d                	pop    r13
  400c20:	41 5e                	pop    r14
  400c22:	41 5f                	pop    r15
  400c24:	c3                   	ret    
  400c25:	90                   	nop
  400c26:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400c2d:	00 00 00 

0000000000400c30 <__libc_csu_fini>:
  400c30:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400c34 <_fini>:
  400c34:	48 83 ec 08          	sub    rsp,0x8
  400c38:	48 83 c4 08          	add    rsp,0x8
  400c3c:	c3                   	ret    

Disassembly of section .rodata:

0000000000400c40 <_IO_stdin_used>:
  400c40:	01 00                	add    DWORD PTR [rax],eax
  400c42:	02 00                	add    al,BYTE PTR [rax]
  400c44:	00 00                	add    BYTE PTR [rax],al
  400c46:	00 00                	add    BYTE PTR [rax],al
  400c48:	2b 2d 2d 2d 2d 2d    	sub    ebp,DWORD PTR [rip+0x2d2d2d2d]        # 2d6d397b <_end+0x2d0d1873>
  400c4e:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
  400c53:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
  400c58:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
  400c5d:	2b 00                	sub    eax,DWORD PTR [rax]
  400c5f:	7c 20                	jl     400c81 <_IO_stdin_used+0x41>
  400c61:	20 20                	and    BYTE PTR [rax],ah
  400c63:	20 20                	and    BYTE PTR [rax],ah
  400c65:	20 20                	and    BYTE PTR [rax],ah
  400c67:	43 61                	rex.XB (bad) 
  400c69:	73 69                	jae    400cd4 <_IO_stdin_used+0x94>
  400c6b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400c6c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400c6d:	20 20                	and    BYTE PTR [rax],ah
  400c6f:	20 20                	and    BYTE PTR [rax],ah
  400c71:	20 20                	and    BYTE PTR [rax],ah
  400c73:	20 7c 00 00          	and    BYTE PTR [rax+rax*1+0x0],bh
  400c77:	0a 24 24             	or     ah,BYTE PTR [rsp]
  400c7a:	24 24                	and    al,0x24
  400c7c:	24 24                	and    al,0x24
  400c7e:	24 20                	and    al,0x20
  400c80:	4c 6f                	rex.WR outs dx,DWORD PTR ds:[rsi]
  400c82:	74 74                	je     400cf8 <_IO_stdin_used+0xb8>
  400c84:	65 72 79             	gs jb  400d00 <_IO_stdin_used+0xc0>
  400c87:	20 24 24             	and    BYTE PTR [rsp],ah
  400c8a:	24 24                	and    al,0x24
  400c8c:	24 24                	and    al,0x24
  400c8e:	24 0a                	and    al,0xa
  400c90:	20 00                	and    BYTE PTR [rax],al
  400c92:	43 68 6f 73 65 20    	rex.XB push 0x2065736f
  400c98:	74 68                	je     400d02 <_IO_stdin_used+0xc2>
  400c9a:	65 20 6e 75          	and    BYTE PTR gs:[rsi+0x75],ch
  400c9e:	6d                   	ins    DWORD PTR es:[rdi],dx
  400c9f:	62                   	(bad)  
  400ca0:	65 72 20             	gs jb  400cc3 <_IO_stdin_used+0x83>
  400ca3:	25 64 3a 20 00       	and    eax,0x203a64
  400ca8:	43 68 61 6e 67 65    	rex.XB push 0x65676e61
  400cae:	20 74 68 65          	and    BYTE PTR [rax+rbp*2+0x65],dh
  400cb2:	20 6e 75             	and    BYTE PTR [rsi+0x75],ch
  400cb5:	6d                   	ins    DWORD PTR es:[rdi],dx
  400cb6:	62                   	(bad)  
  400cb7:	65 72 3f             	gs jb  400cf9 <_IO_stdin_used+0xb9>
  400cba:	20 5b 31             	and    BYTE PTR [rbx+0x31],bl
  400cbd:	3a 79 65             	cmp    bh,BYTE PTR [rcx+0x65]
  400cc0:	73 20                	jae    400ce2 <_IO_stdin_used+0xa2>
  400cc2:	30 3a                	xor    BYTE PTR [rdx],bh
  400cc4:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400cc5:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400cc6:	5d                   	pop    rbp
  400cc7:	3a 20                	cmp    ah,BYTE PTR [rax]
  400cc9:	00 57 68             	add    BYTE PTR [rdi+0x68],dl
  400ccc:	69 63 68 20 6e 75 6d 	imul   esp,DWORD PTR [rbx+0x68],0x6d756e20
  400cd3:	62                   	(bad)  
  400cd4:	65 72 20             	gs jb  400cf7 <_IO_stdin_used+0xb7>
  400cd7:	5b                   	pop    rbx
  400cd8:	31 20                	xor    DWORD PTR [rax],esp
  400cda:	7e 20                	jle    400cfc <_IO_stdin_used+0xbc>
  400cdc:	36 5d                	ss pop rbp
  400cde:	3a 20                	cmp    ah,BYTE PTR [rax]
	...
  400ce8:	59                   	pop    rcx
  400ce9:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400cea:	75 20                	jne    400d0c <_IO_stdin_used+0xcc>
  400cec:	77 69                	ja     400d57 <_IO_stdin_used+0x117>
  400cee:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400cef:	21 20                	and    DWORD PTR [rax],esp
  400cf1:	48 61                	rex.W (bad) 
  400cf3:	63 6b 65             	movsxd ebp,DWORD PTR [rbx+0x65]
  400cf6:	72 20                	jb     400d18 <_IO_stdin_used+0xd8>
  400cf8:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
  400cfa:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400cfb:	27                   	(bad)  
  400cfc:	74 20                	je     400d1e <_IO_stdin_used+0xde>
  400cfe:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400cff:	65 65 64 20 6c 75 63 	gs gs and BYTE PTR fs:[rbp+rsi*2+0x63],ch
  400d06:	6b 20 3a             	imul   esp,DWORD PTR [rax],0x3a
  400d09:	50                   	push   rax
  400d0a:	00 59 6f             	add    BYTE PTR [rcx+0x6f],bl
  400d0d:	75 20                	jne    400d2f <_IO_stdin_used+0xef>
  400d0f:	6c                   	ins    BYTE PTR es:[rdi],dx
  400d10:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400d11:	73 65                	jae    400d78 <__GNU_EH_FRAME_HDR+0x10>
  400d13:	2e 0a 42 79          	or     al,BYTE PTR cs:[rdx+0x79]
  400d17:	65 7e 0a             	gs jle 400d24 <_IO_stdin_used+0xe4>
  400d1a:	20 00                	and    BYTE PTR [rax],al
  400d1c:	53                   	push   rbx
  400d1d:	68 6f 77 20 6d       	push   0x6d20776f
  400d22:	65 20 79 6f          	and    BYTE PTR gs:[rcx+0x6f],bh
  400d26:	75 72                	jne    400d9a <__GNU_EH_FRAME_HDR+0x32>
  400d28:	20 70 61             	and    BYTE PTR [rax+0x61],dh
  400d2b:	73 73                	jae    400da0 <__GNU_EH_FRAME_HDR+0x38>
  400d2d:	70 6f                	jo     400d9e <__GNU_EH_FRAME_HDR+0x36>
  400d2f:	72 74                	jb     400da5 <__GNU_EH_FRAME_HDR+0x3d>
  400d31:	2e 00 59 6f          	add    BYTE PTR cs:[rcx+0x6f],bl
  400d35:	75 72                	jne    400da9 <__GNU_EH_FRAME_HDR+0x41>
  400d37:	20 6e 61             	and    BYTE PTR [rsi+0x61],ch
  400d3a:	6d                   	ins    DWORD PTR es:[rdi],dx
  400d3b:	65 3a 20             	cmp    ah,BYTE PTR gs:[rax]
  400d3e:	00 59 6f             	add    BYTE PTR [rcx+0x6f],bl
  400d41:	75 72                	jne    400db5 <__GNU_EH_FRAME_HDR+0x4d>
  400d43:	20 61 67             	and    BYTE PTR [rcx+0x67],ah
  400d46:	65 3a 20             	cmp    ah,BYTE PTR gs:[rax]
  400d49:	00 59 6f             	add    BYTE PTR [rcx+0x6f],bl
  400d4c:	75 20                	jne    400d6e <__GNU_EH_FRAME_HDR+0x6>
  400d4e:	63 61 6e             	movsxd esp,DWORD PTR [rcx+0x6e]
  400d51:	20 6e 6f             	and    BYTE PTR [rsi+0x6f],ch
  400d54:	74 20                	je     400d76 <__GNU_EH_FRAME_HDR+0xe>
  400d56:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  400d58:	74 65                	je     400dbf <__GNU_EH_FRAME_HDR+0x57>
  400d5a:	72 20                	jb     400d7c <__GNU_EH_FRAME_HDR+0x14>
  400d5c:	74 68                	je     400dc6 <__GNU_EH_FRAME_HDR+0x5e>
  400d5e:	65 20 63 61          	and    BYTE PTR gs:[rbx+0x61],ah
  400d62:	73 69                	jae    400dcd <__GNU_EH_FRAME_HDR+0x65>
  400d64:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400d65:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400d66:	21 00                	and    DWORD PTR [rax],eax

Disassembly of section .eh_frame_hdr:

0000000000400d68 <__GNU_EH_FRAME_HDR>:
  400d68:	01 1b                	add    DWORD PTR [rbx],ebx
  400d6a:	03 3b                	add    edi,DWORD PTR [rbx]
  400d6c:	5c                   	pop    rsp
  400d6d:	00 00                	add    BYTE PTR [rax],al
  400d6f:	00 0a                	add    BYTE PTR [rdx],cl
  400d71:	00 00                	add    BYTE PTR [rax],al
  400d73:	00 58 f9             	add    BYTE PTR [rax-0x7],bl
  400d76:	ff                   	(bad)  
  400d77:	ff                   	(bad)  
  400d78:	b8 00 00 00 08       	mov    eax,0x8000000
  400d7d:	fa                   	cli    
  400d7e:	ff                   	(bad)  
  400d7f:	ff                   	(bad)  
  400d80:	78 00                	js     400d82 <__GNU_EH_FRAME_HDR+0x1a>
  400d82:	00 00                	add    BYTE PTR [rax],al
  400d84:	38 fa                	cmp    dl,bh
  400d86:	ff                   	(bad)  
  400d87:	ff a4 00 00 00 ef fa 	jmp    QWORD PTR [rax+rax*1-0x5110000]
  400d8e:	ff                   	(bad)  
  400d8f:	ff e0                	jmp    rax
  400d91:	00 00                	add    BYTE PTR [rax],al
  400d93:	00 65 fb             	add    BYTE PTR [rbp-0x5],ah
  400d96:	ff                   	(bad)  
  400d97:	ff 00                	inc    DWORD PTR [rax]
  400d99:	01 00                	add    DWORD PTR [rax],eax
  400d9b:	00 be fb ff ff 20    	add    BYTE PTR [rsi+0x20fffffb],bh
  400da1:	01 00                	add    DWORD PTR [rax],eax
  400da3:	00 f5                	add    ch,dh
  400da5:	fb                   	sti    
  400da6:	ff                   	(bad)  
  400da7:	ff 40 01             	inc    DWORD PTR [rax+0x1]
  400daa:	00 00                	add    BYTE PTR [rax],al
  400dac:	b9 fd ff ff 60       	mov    ecx,0x60fffffd
  400db1:	01 00                	add    DWORD PTR [rax],eax
  400db3:	00 58 fe             	add    BYTE PTR [rax-0x2],bl
  400db6:	ff                   	(bad)  
  400db7:	ff 80 01 00 00 c8    	inc    DWORD PTR [rax-0x37ffffff]
  400dbd:	fe                   	(bad)  
  400dbe:	ff                   	(bad)  
  400dbf:	ff c8                	dec    eax
  400dc1:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .eh_frame:

0000000000400dc8 <__FRAME_END__-0x17c>:
  400dc8:	14 00                	adc    al,0x0
  400dca:	00 00                	add    BYTE PTR [rax],al
  400dcc:	00 00                	add    BYTE PTR [rax],al
  400dce:	00 00                	add    BYTE PTR [rax],al
  400dd0:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  400dd3:	00 01                	add    BYTE PTR [rcx],al
  400dd5:	78 10                	js     400de7 <__GNU_EH_FRAME_HDR+0x7f>
  400dd7:	01 1b                	add    DWORD PTR [rbx],ebx
  400dd9:	0c 07                	or     al,0x7
  400ddb:	08 90 01 07 10 10    	or     BYTE PTR [rax+0x10100701],dl
  400de1:	00 00                	add    BYTE PTR [rax],al
  400de3:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400de6:	00 00                	add    BYTE PTR [rax],al
  400de8:	88 f9                	mov    cl,bh
  400dea:	ff                   	(bad)  
  400deb:	ff 2b                	jmp    FWORD PTR [rbx]
  400ded:	00 00                	add    BYTE PTR [rax],al
  400def:	00 00                	add    BYTE PTR [rax],al
  400df1:	00 00                	add    BYTE PTR [rax],al
  400df3:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  400df6:	00 00                	add    BYTE PTR [rax],al
  400df8:	00 00                	add    BYTE PTR [rax],al
  400dfa:	00 00                	add    BYTE PTR [rax],al
  400dfc:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  400dff:	00 01                	add    BYTE PTR [rcx],al
  400e01:	78 10                	js     400e13 <__GNU_EH_FRAME_HDR+0xab>
  400e03:	01 1b                	add    DWORD PTR [rbx],ebx
  400e05:	0c 07                	or     al,0x7
  400e07:	08 90 01 00 00 10    	or     BYTE PTR [rax+0x10000001],dl
  400e0d:	00 00                	add    BYTE PTR [rax],al
  400e0f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400e12:	00 00                	add    BYTE PTR [rax],al
  400e14:	8c f9                	mov    ecx,?
  400e16:	ff                   	(bad)  
  400e17:	ff 02                	inc    DWORD PTR [rdx]
  400e19:	00 00                	add    BYTE PTR [rax],al
  400e1b:	00 00                	add    BYTE PTR [rax],al
  400e1d:	00 00                	add    BYTE PTR [rax],al
  400e1f:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  400e22:	00 00                	add    BYTE PTR [rax],al
  400e24:	30 00                	xor    BYTE PTR [rax],al
  400e26:	00 00                	add    BYTE PTR [rax],al
  400e28:	98                   	cwde   
  400e29:	f8                   	clc    
  400e2a:	ff                   	(bad)  
  400e2b:	ff b0 00 00 00 00    	push   QWORD PTR [rax+0x0]
  400e31:	0e                   	(bad)  
  400e32:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
  400e35:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
  400e38:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
  400e3b:	80 00 3f             	add    BYTE PTR [rax],0x3f
  400e3e:	1a 3b                	sbb    bh,BYTE PTR [rbx]
  400e40:	2a 33                	sub    dh,BYTE PTR [rbx]
  400e42:	24 22                	and    al,0x22
  400e44:	00 00                	add    BYTE PTR [rax],al
  400e46:	00 00                	add    BYTE PTR [rax],al
  400e48:	1c 00                	sbb    al,0x0
  400e4a:	00 00                	add    BYTE PTR [rax],al
  400e4c:	58                   	pop    rax
  400e4d:	00 00                	add    BYTE PTR [rax],al
  400e4f:	00 07                	add    BYTE PTR [rdi],al
  400e51:	fa                   	cli    
  400e52:	ff                   	(bad)  
  400e53:	ff 76 00             	push   QWORD PTR [rsi+0x0]
  400e56:	00 00                	add    BYTE PTR [rax],al
  400e58:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  400e5b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400e61:	02 71 0c             	add    dh,BYTE PTR [rcx+0xc]
  400e64:	07                   	(bad)  
  400e65:	08 00                	or     BYTE PTR [rax],al
  400e67:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400e6a:	00 00                	add    BYTE PTR [rax],al
  400e6c:	78 00                	js     400e6e <__GNU_EH_FRAME_HDR+0x106>
  400e6e:	00 00                	add    BYTE PTR [rax],al
  400e70:	5d                   	pop    rbp
  400e71:	fa                   	cli    
  400e72:	ff                   	(bad)  
  400e73:	ff 59 00             	call   FWORD PTR [rcx+0x0]
  400e76:	00 00                	add    BYTE PTR [rax],al
  400e78:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  400e7b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400e81:	02 54 0c 07          	add    dl,BYTE PTR [rsp+rcx*1+0x7]
  400e85:	08 00                	or     BYTE PTR [rax],al
  400e87:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400e8a:	00 00                	add    BYTE PTR [rax],al
  400e8c:	98                   	cwde   
  400e8d:	00 00                	add    BYTE PTR [rax],al
  400e8f:	00 96 fa ff ff 37    	add    BYTE PTR [rsi+0x37fffffa],dl
  400e95:	00 00                	add    BYTE PTR [rax],al
  400e97:	00 00                	add    BYTE PTR [rax],al
  400e99:	41 0e                	rex.B (bad) 
  400e9b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400ea1:	72 0c                	jb     400eaf <__GNU_EH_FRAME_HDR+0x147>
  400ea3:	07                   	(bad)  
  400ea4:	08 00                	or     BYTE PTR [rax],al
  400ea6:	00 00                	add    BYTE PTR [rax],al
  400ea8:	1c 00                	sbb    al,0x0
  400eaa:	00 00                	add    BYTE PTR [rax],al
  400eac:	b8 00 00 00 ad       	mov    eax,0xad000000
  400eb1:	fa                   	cli    
  400eb2:	ff                   	(bad)  
  400eb3:	ff c4                	inc    esp
  400eb5:	01 00                	add    DWORD PTR [rax],eax
  400eb7:	00 00                	add    BYTE PTR [rax],al
  400eb9:	41 0e                	rex.B (bad) 
  400ebb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400ec1:	03 bf 01 0c 07 08    	add    edi,DWORD PTR [rdi+0x8070c01]
  400ec7:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400eca:	00 00                	add    BYTE PTR [rax],al
  400ecc:	d8 00                	fadd   DWORD PTR [rax]
  400ece:	00 00                	add    BYTE PTR [rax],al
  400ed0:	51                   	push   rcx
  400ed1:	fc                   	cld    
  400ed2:	ff                   	(bad)  
  400ed3:	ff 9b 00 00 00 00    	call   FWORD PTR [rbx+0x0]
  400ed9:	41 0e                	rex.B (bad) 
  400edb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400ee1:	02 96 0c 07 08 00    	add    dl,BYTE PTR [rsi+0x8070c]
  400ee7:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
  400eeb:	00 f8                	add    al,bh
  400eed:	00 00                	add    BYTE PTR [rax],al
  400eef:	00 d0                	add    al,dl
  400ef1:	fc                   	cld    
  400ef2:	ff                   	(bad)  
  400ef3:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
  400ef6:	00 00                	add    BYTE PTR [rax],al
  400ef8:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
  400efb:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
  400f01:	8e 03                	mov    es,WORD PTR [rbx]
  400f03:	45 0e                	rex.RB (bad) 
  400f05:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
  400f0b:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86701d59 <_end+0xffffffff860ffc51>
  400f11:	06                   	(bad)  
  400f12:	48 0e                	rex.W (bad) 
  400f14:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
  400f1a:	72 0e                	jb     400f2a <__GNU_EH_FRAME_HDR+0x1c2>
  400f1c:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
  400f1f:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
  400f22:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
  400f25:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
  400f28:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
  400f2b:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
  400f2e:	08 00                	or     BYTE PTR [rax],al
  400f30:	10 00                	adc    BYTE PTR [rax],al
  400f32:	00 00                	add    BYTE PTR [rax],al
  400f34:	40 01 00             	rex add DWORD PTR [rax],eax
  400f37:	00 f8                	add    al,bh
  400f39:	fc                   	cld    
  400f3a:	ff                   	(bad)  
  400f3b:	ff 02                	inc    DWORD PTR [rdx]
  400f3d:	00 00                	add    BYTE PTR [rax],al
  400f3f:	00 00                	add    BYTE PTR [rax],al
  400f41:	00 00                	add    BYTE PTR [rax],al
	...

0000000000400f44 <__FRAME_END__>:
  400f44:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000601e10 <__frame_dummy_init_array_entry>:
  601e10:	50                   	push   rax
  601e11:	08 40 00             	or     BYTE PTR [rax+0x0],al
  601e14:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000601e18 <__do_global_dtors_aux_fini_array_entry>:
  601e18:	20 08                	and    BYTE PTR [rax],cl
  601e1a:	40 00 00             	add    BYTE PTR [rax],al
  601e1d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000601e20 <_DYNAMIC>:
  601e20:	01 00                	add    DWORD PTR [rax],eax
  601e22:	00 00                	add    BYTE PTR [rax],al
  601e24:	00 00                	add    BYTE PTR [rax],al
  601e26:	00 00                	add    BYTE PTR [rax],al
  601e28:	01 00                	add    DWORD PTR [rax],eax
  601e2a:	00 00                	add    BYTE PTR [rax],al
  601e2c:	00 00                	add    BYTE PTR [rax],al
  601e2e:	00 00                	add    BYTE PTR [rax],al
  601e30:	0c 00                	or     al,0x0
  601e32:	00 00                	add    BYTE PTR [rax],al
  601e34:	00 00                	add    BYTE PTR [rax],al
  601e36:	00 00                	add    BYTE PTR [rax],al
  601e38:	a0 06 40 00 00 00 00 	movabs al,ds:0xd00000000004006
  601e3f:	00 0d 
  601e41:	00 00                	add    BYTE PTR [rax],al
  601e43:	00 00                	add    BYTE PTR [rax],al
  601e45:	00 00                	add    BYTE PTR [rax],al
  601e47:	00 34 0c             	add    BYTE PTR [rsp+rcx*1],dh
  601e4a:	40 00 00             	add    BYTE PTR [rax],al
  601e4d:	00 00                	add    BYTE PTR [rax],al
  601e4f:	00 19                	add    BYTE PTR [rcx],bl
  601e51:	00 00                	add    BYTE PTR [rax],al
  601e53:	00 00                	add    BYTE PTR [rax],al
  601e55:	00 00                	add    BYTE PTR [rax],al
  601e57:	00 10                	add    BYTE PTR [rax],dl
  601e59:	1e                   	(bad)  
  601e5a:	60                   	(bad)  
  601e5b:	00 00                	add    BYTE PTR [rax],al
  601e5d:	00 00                	add    BYTE PTR [rax],al
  601e5f:	00 1b                	add    BYTE PTR [rbx],bl
  601e61:	00 00                	add    BYTE PTR [rax],al
  601e63:	00 00                	add    BYTE PTR [rax],al
  601e65:	00 00                	add    BYTE PTR [rax],al
  601e67:	00 08                	add    BYTE PTR [rax],cl
  601e69:	00 00                	add    BYTE PTR [rax],al
  601e6b:	00 00                	add    BYTE PTR [rax],al
  601e6d:	00 00                	add    BYTE PTR [rax],al
  601e6f:	00 1a                	add    BYTE PTR [rdx],bl
  601e71:	00 00                	add    BYTE PTR [rax],al
  601e73:	00 00                	add    BYTE PTR [rax],al
  601e75:	00 00                	add    BYTE PTR [rax],al
  601e77:	00 18                	add    BYTE PTR [rax],bl
  601e79:	1e                   	(bad)  
  601e7a:	60                   	(bad)  
  601e7b:	00 00                	add    BYTE PTR [rax],al
  601e7d:	00 00                	add    BYTE PTR [rax],al
  601e7f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  601e82:	00 00                	add    BYTE PTR [rax],al
  601e84:	00 00                	add    BYTE PTR [rax],al
  601e86:	00 00                	add    BYTE PTR [rax],al
  601e88:	08 00                	or     BYTE PTR [rax],al
  601e8a:	00 00                	add    BYTE PTR [rax],al
  601e8c:	00 00                	add    BYTE PTR [rax],al
  601e8e:	00 00                	add    BYTE PTR [rax],al
  601e90:	f5                   	cmc    
  601e91:	fe                   	(bad)  
  601e92:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601e95:	00 00                	add    BYTE PTR [rax],al
  601e97:	00 98 02 40 00 00    	add    BYTE PTR [rax+0x4002],bl
  601e9d:	00 00                	add    BYTE PTR [rax],al
  601e9f:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 601ea5 <_DYNAMIC+0x85>
  601ea5:	00 00                	add    BYTE PTR [rax],al
  601ea7:	00 48 04             	add    BYTE PTR [rax+0x4],cl
  601eaa:	40 00 00             	add    BYTE PTR [rax],al
  601ead:	00 00                	add    BYTE PTR [rax],al
  601eaf:	00 06                	add    BYTE PTR [rsi],al
  601eb1:	00 00                	add    BYTE PTR [rax],al
  601eb3:	00 00                	add    BYTE PTR [rax],al
  601eb5:	00 00                	add    BYTE PTR [rax],al
  601eb7:	00 c8                	add    al,cl
  601eb9:	02 40 00             	add    al,BYTE PTR [rax+0x0]
  601ebc:	00 00                	add    BYTE PTR [rax],al
  601ebe:	00 00                	add    BYTE PTR [rax],al
  601ec0:	0a 00                	or     al,BYTE PTR [rax]
  601ec2:	00 00                	add    BYTE PTR [rax],al
  601ec4:	00 00                	add    BYTE PTR [rax],al
  601ec6:	00 00                	add    BYTE PTR [rax],al
  601ec8:	9b                   	fwait
  601ec9:	00 00                	add    BYTE PTR [rax],al
  601ecb:	00 00                	add    BYTE PTR [rax],al
  601ecd:	00 00                	add    BYTE PTR [rax],al
  601ecf:	00 0b                	add    BYTE PTR [rbx],cl
  601ed1:	00 00                	add    BYTE PTR [rax],al
  601ed3:	00 00                	add    BYTE PTR [rax],al
  601ed5:	00 00                	add    BYTE PTR [rax],al
  601ed7:	00 18                	add    BYTE PTR [rax],bl
  601ed9:	00 00                	add    BYTE PTR [rax],al
  601edb:	00 00                	add    BYTE PTR [rax],al
  601edd:	00 00                	add    BYTE PTR [rax],al
  601edf:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 601ee5 <_DYNAMIC+0xc5>
	...
  601eed:	00 00                	add    BYTE PTR [rax],al
  601eef:	00 03                	add    BYTE PTR [rbx],al
	...
  601ef9:	20 60 00             	and    BYTE PTR [rax+0x0],ah
  601efc:	00 00                	add    BYTE PTR [rax],al
  601efe:	00 00                	add    BYTE PTR [rax],al
  601f00:	02 00                	add    al,BYTE PTR [rax]
  601f02:	00 00                	add    BYTE PTR [rax],al
  601f04:	00 00                	add    BYTE PTR [rax],al
  601f06:	00 00                	add    BYTE PTR [rax],al
  601f08:	f0 00 00             	lock add BYTE PTR [rax],al
  601f0b:	00 00                	add    BYTE PTR [rax],al
  601f0d:	00 00                	add    BYTE PTR [rax],al
  601f0f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  601f12:	00 00                	add    BYTE PTR [rax],al
  601f14:	00 00                	add    BYTE PTR [rax],al
  601f16:	00 00                	add    BYTE PTR [rax],al
  601f18:	07                   	(bad)  
  601f19:	00 00                	add    BYTE PTR [rax],al
  601f1b:	00 00                	add    BYTE PTR [rax],al
  601f1d:	00 00                	add    BYTE PTR [rax],al
  601f1f:	00 17                	add    BYTE PTR [rdi],dl
  601f21:	00 00                	add    BYTE PTR [rax],al
  601f23:	00 00                	add    BYTE PTR [rax],al
  601f25:	00 00                	add    BYTE PTR [rax],al
  601f27:	00 b0 05 40 00 00    	add    BYTE PTR [rax+0x4005],dh
  601f2d:	00 00                	add    BYTE PTR [rax],al
  601f2f:	00 07                	add    BYTE PTR [rdi],al
  601f31:	00 00                	add    BYTE PTR [rax],al
  601f33:	00 00                	add    BYTE PTR [rax],al
  601f35:	00 00                	add    BYTE PTR [rax],al
  601f37:	00 38                	add    BYTE PTR [rax],bh
  601f39:	05 40 00 00 00       	add    eax,0x40
  601f3e:	00 00                	add    BYTE PTR [rax],al
  601f40:	08 00                	or     BYTE PTR [rax],al
  601f42:	00 00                	add    BYTE PTR [rax],al
  601f44:	00 00                	add    BYTE PTR [rax],al
  601f46:	00 00                	add    BYTE PTR [rax],al
  601f48:	78 00                	js     601f4a <_DYNAMIC+0x12a>
  601f4a:	00 00                	add    BYTE PTR [rax],al
  601f4c:	00 00                	add    BYTE PTR [rax],al
  601f4e:	00 00                	add    BYTE PTR [rax],al
  601f50:	09 00                	or     DWORD PTR [rax],eax
  601f52:	00 00                	add    BYTE PTR [rax],al
  601f54:	00 00                	add    BYTE PTR [rax],al
  601f56:	00 00                	add    BYTE PTR [rax],al
  601f58:	18 00                	sbb    BYTE PTR [rax],al
  601f5a:	00 00                	add    BYTE PTR [rax],al
  601f5c:	00 00                	add    BYTE PTR [rax],al
  601f5e:	00 00                	add    BYTE PTR [rax],al
  601f60:	fe                   	(bad)  
  601f61:	ff                   	(bad)  
  601f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601f65:	00 00                	add    BYTE PTR [rax],al
  601f67:	00 08                	add    BYTE PTR [rax],cl
  601f69:	05 40 00 00 00       	add    eax,0x40
  601f6e:	00 00                	add    BYTE PTR [rax],al
  601f70:	ff                   	(bad)  
  601f71:	ff                   	(bad)  
  601f72:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601f75:	00 00                	add    BYTE PTR [rax],al
  601f77:	00 01                	add    BYTE PTR [rcx],al
  601f79:	00 00                	add    BYTE PTR [rax],al
  601f7b:	00 00                	add    BYTE PTR [rax],al
  601f7d:	00 00                	add    BYTE PTR [rax],al
  601f7f:	00 f0                	add    al,dh
  601f81:	ff                   	(bad)  
  601f82:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  601f85:	00 00                	add    BYTE PTR [rax],al
  601f87:	00 e4                	add    ah,ah
  601f89:	04 40                	add    al,0x40
	...

Disassembly of section .got:

0000000000601ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000602000 <_GLOBAL_OFFSET_TABLE_>:
  602000:	20 1e                	and    BYTE PTR [rsi],bl
  602002:	60                   	(bad)  
	...
  602017:	00 d6                	add    dh,dl
  602019:	06                   	(bad)  
  60201a:	40 00 00             	add    BYTE PTR [rax],al
  60201d:	00 00                	add    BYTE PTR [rax],al
  60201f:	00 e6                	add    dh,ah
  602021:	06                   	(bad)  
  602022:	40 00 00             	add    BYTE PTR [rax],al
  602025:	00 00                	add    BYTE PTR [rax],al
  602027:	00 f6                	add    dh,dh
  602029:	06                   	(bad)  
  60202a:	40 00 00             	add    BYTE PTR [rax],al
  60202d:	00 00                	add    BYTE PTR [rax],al
  60202f:	00 06                	add    BYTE PTR [rsi],al
  602031:	07                   	(bad)  
  602032:	40 00 00             	add    BYTE PTR [rax],al
  602035:	00 00                	add    BYTE PTR [rax],al
  602037:	00 16                	add    BYTE PTR [rsi],dl
  602039:	07                   	(bad)  
  60203a:	40 00 00             	add    BYTE PTR [rax],al
  60203d:	00 00                	add    BYTE PTR [rax],al
  60203f:	00 26                	add    BYTE PTR [rsi],ah
  602041:	07                   	(bad)  
  602042:	40 00 00             	add    BYTE PTR [rax],al
  602045:	00 00                	add    BYTE PTR [rax],al
  602047:	00 36                	add    BYTE PTR [rsi],dh
  602049:	07                   	(bad)  
  60204a:	40 00 00             	add    BYTE PTR [rax],al
  60204d:	00 00                	add    BYTE PTR [rax],al
  60204f:	00 46 07             	add    BYTE PTR [rsi+0x7],al
  602052:	40 00 00             	add    BYTE PTR [rax],al
  602055:	00 00                	add    BYTE PTR [rax],al
  602057:	00 56 07             	add    BYTE PTR [rsi+0x7],dl
  60205a:	40 00 00             	add    BYTE PTR [rax],al
  60205d:	00 00                	add    BYTE PTR [rax],al
  60205f:	00 66 07             	add    BYTE PTR [rsi+0x7],ah
  602062:	40 00 00             	add    BYTE PTR [rax],al
  602065:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

0000000000602068 <__data_start>:
	...

0000000000602070 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000602080 <stdout@@GLIBC_2.2.5>:
	...

0000000000602090 <stdin@@GLIBC_2.2.5>:
	...

00000000006020a0 <stderr@@GLIBC_2.2.5>:
	...

00000000006020a8 <completed.7697>:
	...

00000000006020b0 <lottery>:
	...

00000000006020d0 <guess>:
	...

00000000006020f0 <name>:
	...

0000000000602100 <seed>:
  602100:	00 00                	add    BYTE PTR [rax],al
	...

0000000000602104 <age>:
  602104:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x400628>
   a:	74 75                	je     81 <_init-0x40061f>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 34 2e             	cs xor al,0x2e
  11:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627548 <_end+0x75025440>
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	74 75                	je     8f <_init-0x400611>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  22:	31 29                	xor    DWORD PTR [rcx],ebp
  24:	20 37                	and    BYTE PTR [rdi],dh
  26:	2e 34 2e             	cs xor al,0x2e
  29:	30 00                	xor    BYTE PTR [rax],al
