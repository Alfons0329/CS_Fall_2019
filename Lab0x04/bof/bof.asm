
bof:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	ins    BYTE PTR es:[rdi],dx
  40023a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  400241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  400246:	78 2d                	js     400275 <_init-0x2bb>
  400248:	78 38                	js     400282 <_init-0x2ae>
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
  400283:	00 c8                	add    al,cl
  400285:	03 89 c4 92 81 40    	add    ecx,DWORD PTR [rcx+0x408192c4]
  40028b:	12 76 d9             	adc    dh,BYTE PTR [rsi-0x27]
  40028e:	2d dd 4f 5d 80       	sub    eax,0x805d4fdd
  400293:	a9 df 0d 09 79       	test   eax,0x79090ddf

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    eax,DWORD PTR [rax]
  40029a:	00 00                	add    BYTE PTR [rax],al
  40029c:	07                   	(bad)  
  40029d:	00 00                	add    BYTE PTR [rax],al
  40029f:	00 01                	add    BYTE PTR [rcx],al
  4002a1:	00 00                	add    BYTE PTR [rax],al
  4002a3:	00 06                	add    BYTE PTR [rsi],al
  4002a5:	00 00                	add    BYTE PTR [rax],al
  4002a7:	00 00                	add    BYTE PTR [rax],al
  4002a9:	01 20                	add    DWORD PTR [rax],esp
  4002ab:	00 80 01 10 02 07    	add    BYTE PTR [rax+0x7021001],al
  4002b1:	00 00                	add    BYTE PTR [rax],al
  4002b3:	00 08                	add    BYTE PTR [rax],cl
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
  4002e0:	10 00                	adc    BYTE PTR [rax],al
  4002e2:	00 00                	add    BYTE PTR [rax],al
  4002e4:	12 00                	adc    al,BYTE PTR [rax]
	...
  4002f6:	00 00                	add    BYTE PTR [rax],al
  4002f8:	29 00                	sub    DWORD PTR [rax],eax
  4002fa:	00 00                	add    BYTE PTR [rax],al
  4002fc:	12 00                	adc    al,BYTE PTR [rax]
	...
  40030e:	00 00                	add    BYTE PTR [rax],al
  400310:	38 00                	cmp    BYTE PTR [rax],al
  400312:	00 00                	add    BYTE PTR [rax],al
  400314:	12 00                	adc    al,BYTE PTR [rax]
	...
  400326:	00 00                	add    BYTE PTR [rax],al
  400328:	56                   	push   rsi
  400329:	00 00                	add    BYTE PTR [rax],al
  40032b:	00 20                	add    BYTE PTR [rax],ah
	...
  40033d:	00 00                	add    BYTE PTR [rax],al
  40033f:	00 0b                	add    BYTE PTR [rbx],cl
  400341:	00 00                	add    BYTE PTR [rax],al
  400343:	00 12                	add    BYTE PTR [rdx],dl
	...
  400355:	00 00                	add    BYTE PTR [rax],al
  400357:	00 30                	add    BYTE PTR [rax],dh
  400359:	00 00                	add    BYTE PTR [rax],al
  40035b:	00 12                	add    BYTE PTR [rdx],dl
	...
  40036d:	00 00                	add    BYTE PTR [rax],al
  40036f:	00 1b                	add    BYTE PTR [rbx],bl
  400371:	00 00                	add    BYTE PTR [rax],al
  400373:	00 11                	add    BYTE PTR [rcx],dl
  400375:	00 18                	add    BYTE PTR [rax],bl
  400377:	00 60 10             	add    BYTE PTR [rax+0x10],ah
  40037a:	60                   	(bad)  
  40037b:	00 00                	add    BYTE PTR [rax],al
  40037d:	00 00                	add    BYTE PTR [rax],al
  40037f:	00 08                	add    BYTE PTR [rax],cl
  400381:	00 00                	add    BYTE PTR [rax],al
  400383:	00 00                	add    BYTE PTR [rax],al
  400385:	00 00                	add    BYTE PTR [rax],al
  400387:	00 15 00 00 00 11    	add    BYTE PTR [rip+0x11000000],dl        # 1140038d <_end+0x10dff2fd>
  40038d:	00 18                	add    BYTE PTR [rax],bl
  40038f:	00 70 10             	add    BYTE PTR [rax+0x10],dh
  400392:	60                   	(bad)  
  400393:	00 00                	add    BYTE PTR [rax],al
  400395:	00 00                	add    BYTE PTR [rax],al
  400397:	00 08                	add    BYTE PTR [rax],cl
  400399:	00 00                	add    BYTE PTR [rax],al
  40039b:	00 00                	add    BYTE PTR [rax],al
  40039d:	00 00                	add    BYTE PTR [rax],al
  40039f:	00 22                	add    BYTE PTR [rdx],ah
  4003a1:	00 00                	add    BYTE PTR [rax],al
  4003a3:	00 11                	add    BYTE PTR [rcx],dl
  4003a5:	00 18                	add    BYTE PTR [rax],bl
  4003a7:	00 80 10 60 00 00    	add    BYTE PTR [rax+0x6010],al
  4003ad:	00 00                	add    BYTE PTR [rax],al
  4003af:	00 08                	add    BYTE PTR [rax],cl
  4003b1:	00 00                	add    BYTE PTR [rax],al
  4003b3:	00 00                	add    BYTE PTR [rax],al
  4003b5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

00000000004003b8 <.dynstr>:
  4003b8:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  4003bc:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  4003be:	73 6f                	jae    40042f <_init-0x101>
  4003c0:	2e 36 00 67 65       	cs add BYTE PTR ss:[rdi+0x65],ah
  4003c5:	74 73                	je     40043a <_init-0xf6>
  4003c7:	00 70 75             	add    BYTE PTR [rax+0x75],dh
  4003ca:	74 73                	je     40043f <_init-0xf1>
  4003cc:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  4003cf:	64 69 6e 00 73 74 64 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x6f647473
  4003d6:	6f 
  4003d7:	75 74                	jne    40044d <_init-0xe3>
  4003d9:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  4003dc:	64 65 72 72          	fs gs jb 400452 <_init-0xde>
  4003e0:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
  4003e3:	73 74                	jae    400459 <_init-0xd7>
  4003e5:	65 6d                	gs ins DWORD PTR es:[rdi],dx
  4003e7:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
  4003ea:	74 76                	je     400462 <_init-0xce>
  4003ec:	62                   	(bad)  
  4003ed:	75 66                	jne    400455 <_init-0xdb>
  4003ef:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
  4003f2:	6c                   	ins    BYTE PTR es:[rdi],dx
  4003f3:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  4003fa:	72 74                	jb     400470 <_init-0xc0>
  4003fc:	5f                   	pop    rdi
  4003fd:	6d                   	ins    DWORD PTR es:[rdi],dx
  4003fe:	61                   	(bad)  
  4003ff:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
  400406:	43 5f                	rex.XB pop r15
  400408:	32 2e                	xor    ch,BYTE PTR [rsi]
  40040a:	32 2e                	xor    ch,BYTE PTR [rsi]
  40040c:	35 00 5f 5f 67       	xor    eax,0x675f5f00
  400411:	6d                   	ins    DWORD PTR es:[rdi],dx
  400412:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  400413:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  400414:	5f                   	pop    rdi
  400415:	73 74                	jae    40048b <_init-0xa5>
  400417:	61                   	(bad)  
  400418:	72 74                	jb     40048e <_init-0xa2>
  40041a:	5f                   	pop    rdi
  40041b:	5f                   	pop    rdi
	...

Disassembly of section .gnu.version:

000000000040041e <.gnu.version>:
  40041e:	00 00                	add    BYTE PTR [rax],al
  400420:	02 00                	add    al,BYTE PTR [rax]
  400422:	02 00                	add    al,BYTE PTR [rax]
  400424:	02 00                	add    al,BYTE PTR [rax]
  400426:	00 00                	add    BYTE PTR [rax],al
  400428:	02 00                	add    al,BYTE PTR [rax]
  40042a:	02 00                	add    al,BYTE PTR [rax]
  40042c:	02 00                	add    al,BYTE PTR [rax]
  40042e:	02 00                	add    al,BYTE PTR [rax]
  400430:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000400438 <.gnu.version_r>:
  400438:	01 00                	add    DWORD PTR [rax],eax
  40043a:	01 00                	add    DWORD PTR [rax],eax
  40043c:	01 00                	add    DWORD PTR [rax],eax
  40043e:	00 00                	add    BYTE PTR [rax],al
  400440:	10 00                	adc    BYTE PTR [rax],al
  400442:	00 00                	add    BYTE PTR [rax],al
  400444:	00 00                	add    BYTE PTR [rax],al
  400446:	00 00                	add    BYTE PTR [rax],al
  400448:	75 1a                	jne    400464 <_init-0xcc>
  40044a:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400450:	4a 00 00             	rex.WX add BYTE PTR [rax],al
  400453:	00 00                	add    BYTE PTR [rax],al
  400455:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000400458 <.rela.dyn>:
  400458:	f0 0f 60 00          	lock punpcklbw mm0,DWORD PTR [rax]
  40045c:	00 00                	add    BYTE PTR [rax],al
  40045e:	00 00                	add    BYTE PTR [rax],al
  400460:	06                   	(bad)  
  400461:	00 00                	add    BYTE PTR [rax],al
  400463:	00 03                	add    BYTE PTR [rbx],al
	...
  40046d:	00 00                	add    BYTE PTR [rax],al
  40046f:	00 f8                	add    al,bh
  400471:	0f 60 00             	punpcklbw mm0,DWORD PTR [rax]
  400474:	00 00                	add    BYTE PTR [rax],al
  400476:	00 00                	add    BYTE PTR [rax],al
  400478:	06                   	(bad)  
  400479:	00 00                	add    BYTE PTR [rax],al
  40047b:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
  400486:	00 00                	add    BYTE PTR [rax],al
  400488:	60                   	(bad)  
  400489:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  40048c:	00 00                	add    BYTE PTR [rax],al
  40048e:	00 00                	add    BYTE PTR [rax],al
  400490:	05 00 00 00 07       	add    eax,0x7000000
	...
  40049d:	00 00                	add    BYTE PTR [rax],al
  40049f:	00 70 10             	add    BYTE PTR [rax+0x10],dh
  4004a2:	60                   	(bad)  
  4004a3:	00 00                	add    BYTE PTR [rax],al
  4004a5:	00 00                	add    BYTE PTR [rax],al
  4004a7:	00 05 00 00 00 08    	add    BYTE PTR [rip+0x8000000],al        # 84004ad <_end+0x7dff41d>
	...
  4004b5:	00 00                	add    BYTE PTR [rax],al
  4004b7:	00 80 10 60 00 00    	add    BYTE PTR [rax+0x6010],al
  4004bd:	00 00                	add    BYTE PTR [rax],al
  4004bf:	00 05 00 00 00 09    	add    BYTE PTR [rip+0x9000000],al        # 94004c5 <_end+0x8dff435>
	...

Disassembly of section .rela.plt:

00000000004004d0 <.rela.plt>:
  4004d0:	18 10                	sbb    BYTE PTR [rax],dl
  4004d2:	60                   	(bad)  
  4004d3:	00 00                	add    BYTE PTR [rax],al
  4004d5:	00 00                	add    BYTE PTR [rax],al
  4004d7:	00 07                	add    BYTE PTR [rdi],al
  4004d9:	00 00                	add    BYTE PTR [rax],al
  4004db:	00 01                	add    BYTE PTR [rcx],al
	...
  4004e5:	00 00                	add    BYTE PTR [rax],al
  4004e7:	00 20                	add    BYTE PTR [rax],ah
  4004e9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4004ec:	00 00                	add    BYTE PTR [rax],al
  4004ee:	00 00                	add    BYTE PTR [rax],al
  4004f0:	07                   	(bad)  
  4004f1:	00 00                	add    BYTE PTR [rax],al
  4004f3:	00 02                	add    BYTE PTR [rdx],al
	...
  4004fd:	00 00                	add    BYTE PTR [rax],al
  4004ff:	00 28                	add    BYTE PTR [rax],ch
  400501:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  400504:	00 00                	add    BYTE PTR [rax],al
  400506:	00 00                	add    BYTE PTR [rax],al
  400508:	07                   	(bad)  
  400509:	00 00                	add    BYTE PTR [rax],al
  40050b:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 400511 <_init-0x1f>
  400511:	00 00                	add    BYTE PTR [rax],al
  400513:	00 00                	add    BYTE PTR [rax],al
  400515:	00 00                	add    BYTE PTR [rax],al
  400517:	00 30                	add    BYTE PTR [rax],dh
  400519:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  40051c:	00 00                	add    BYTE PTR [rax],al
  40051e:	00 00                	add    BYTE PTR [rax],al
  400520:	07                   	(bad)  
  400521:	00 00                	add    BYTE PTR [rax],al
  400523:	00 06                	add    BYTE PTR [rsi],al
	...

Disassembly of section .init:

0000000000400530 <_init>:
  400530:	48 83 ec 08          	sub    rsp,0x8
  400534:	48 8b 05 bd 0a 20 00 	mov    rax,QWORD PTR [rip+0x200abd]        # 600ff8 <_DYNAMIC+0x1d8>
  40053b:	48 85 c0             	test   rax,rax
  40053e:	74 02                	je     400542 <_init+0x12>
  400540:	ff d0                	call   rax
  400542:	48 83 c4 08          	add    rsp,0x8
  400546:	c3                   	ret    

Disassembly of section .plt:

0000000000400550 <puts@plt-0x10>:
  400550:	ff 35 b2 0a 20 00    	push   QWORD PTR [rip+0x200ab2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400556:	ff 25 b4 0a 20 00    	jmp    QWORD PTR [rip+0x200ab4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40055c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400560 <puts@plt>:
  400560:	ff 25 b2 0a 20 00    	jmp    QWORD PTR [rip+0x200ab2]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400566:	68 00 00 00 00       	push   0x0
  40056b:	e9 e0 ff ff ff       	jmp    400550 <_init+0x20>

0000000000400570 <system@plt>:
  400570:	ff 25 aa 0a 20 00    	jmp    QWORD PTR [rip+0x200aaa]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400576:	68 01 00 00 00       	push   0x1
  40057b:	e9 d0 ff ff ff       	jmp    400550 <_init+0x20>

0000000000400580 <gets@plt>:
  400580:	ff 25 a2 0a 20 00    	jmp    QWORD PTR [rip+0x200aa2]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400586:	68 02 00 00 00       	push   0x2
  40058b:	e9 c0 ff ff ff       	jmp    400550 <_init+0x20>

0000000000400590 <setvbuf@plt>:
  400590:	ff 25 9a 0a 20 00    	jmp    QWORD PTR [rip+0x200a9a]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400596:	68 03 00 00 00       	push   0x3
  40059b:	e9 b0 ff ff ff       	jmp    400550 <_init+0x20>

Disassembly of section .text:

00000000004005a0 <_start>:
  4005a0:	31 ed                	xor    ebp,ebp
  4005a2:	49 89 d1             	mov    r9,rdx
  4005a5:	5e                   	pop    rsi
  4005a6:	48 89 e2             	mov    rdx,rsp
  4005a9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4005ad:	50                   	push   rax
  4005ae:	54                   	push   rsp
  4005af:	49 c7 c0 90 07 40 00 	mov    r8,0x400790
  4005b6:	48 c7 c1 20 07 40 00 	mov    rcx,0x400720
  4005bd:	48 c7 c7 9a 06 40 00 	mov    rdi,0x40069a
  4005c4:	ff 15 26 0a 20 00    	call   QWORD PTR [rip+0x200a26]        # 600ff0 <_DYNAMIC+0x1d0>
  4005ca:	f4                   	hlt    
  4005cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004005d0 <_dl_relocate_static_pie>:
  4005d0:	f3 c3                	repz ret 
  4005d2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4005d9:	00 00 00 
  4005dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004005e0 <deregister_tm_clones>:
  4005e0:	55                   	push   rbp
  4005e1:	b8 48 10 60 00       	mov    eax,0x601048
  4005e6:	48 3d 48 10 60 00    	cmp    rax,0x601048
  4005ec:	48 89 e5             	mov    rbp,rsp
  4005ef:	74 17                	je     400608 <deregister_tm_clones+0x28>
  4005f1:	b8 00 00 00 00       	mov    eax,0x0
  4005f6:	48 85 c0             	test   rax,rax
  4005f9:	74 0d                	je     400608 <deregister_tm_clones+0x28>
  4005fb:	5d                   	pop    rbp
  4005fc:	bf 48 10 60 00       	mov    edi,0x601048
  400601:	ff e0                	jmp    rax
  400603:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400608:	5d                   	pop    rbp
  400609:	c3                   	ret    
  40060a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400610 <register_tm_clones>:
  400610:	be 48 10 60 00       	mov    esi,0x601048
  400615:	55                   	push   rbp
  400616:	48 81 ee 48 10 60 00 	sub    rsi,0x601048
  40061d:	48 89 e5             	mov    rbp,rsp
  400620:	48 c1 fe 03          	sar    rsi,0x3
  400624:	48 89 f0             	mov    rax,rsi
  400627:	48 c1 e8 3f          	shr    rax,0x3f
  40062b:	48 01 c6             	add    rsi,rax
  40062e:	48 d1 fe             	sar    rsi,1
  400631:	74 15                	je     400648 <register_tm_clones+0x38>
  400633:	b8 00 00 00 00       	mov    eax,0x0
  400638:	48 85 c0             	test   rax,rax
  40063b:	74 0b                	je     400648 <register_tm_clones+0x38>
  40063d:	5d                   	pop    rbp
  40063e:	bf 48 10 60 00       	mov    edi,0x601048
  400643:	ff e0                	jmp    rax
  400645:	0f 1f 00             	nop    DWORD PTR [rax]
  400648:	5d                   	pop    rbp
  400649:	c3                   	ret    
  40064a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400650 <__do_global_dtors_aux>:
  400650:	80 3d 31 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a31],0x0        # 601088 <completed.7697>
  400657:	75 17                	jne    400670 <__do_global_dtors_aux+0x20>
  400659:	55                   	push   rbp
  40065a:	48 89 e5             	mov    rbp,rsp
  40065d:	e8 7e ff ff ff       	call   4005e0 <deregister_tm_clones>
  400662:	c6 05 1f 0a 20 00 01 	mov    BYTE PTR [rip+0x200a1f],0x1        # 601088 <completed.7697>
  400669:	5d                   	pop    rbp
  40066a:	c3                   	ret    
  40066b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400670:	f3 c3                	repz ret 
  400672:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400676:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40067d:	00 00 00 

0000000000400680 <frame_dummy>:
  400680:	55                   	push   rbp
  400681:	48 89 e5             	mov    rbp,rsp
  400684:	5d                   	pop    rbp
  400685:	eb 89                	jmp    400610 <register_tm_clones>

0000000000400687 <try_to_call_me>:
  400687:	55                   	push   rbp
  400688:	48 89 e5             	mov    rbp,rsp
  40068b:	48 8d 3d 12 01 00 00 	lea    rdi,[rip+0x112]        # 4007a4 <_IO_stdin_used+0x4>
  400692:	e8 d9 fe ff ff       	call   400570 <system@plt>
  400697:	90                   	nop
  400698:	5d                   	pop    rbp
  400699:	c3                   	ret    

000000000040069a <main>:
  40069a:	55                   	push   rbp
  40069b:	48 89 e5             	mov    rbp,rsp
  40069e:	48 83 ec 30          	sub    rsp,0x30
  4006a2:	48 8b 05 b7 09 20 00 	mov    rax,QWORD PTR [rip+0x2009b7]        # 601060 <stdout@@GLIBC_2.2.5>
  4006a9:	b9 00 00 00 00       	mov    ecx,0x0
  4006ae:	ba 02 00 00 00       	mov    edx,0x2
  4006b3:	be 00 00 00 00       	mov    esi,0x0
  4006b8:	48 89 c7             	mov    rdi,rax
  4006bb:	e8 d0 fe ff ff       	call   400590 <setvbuf@plt>
  4006c0:	48 8b 05 a9 09 20 00 	mov    rax,QWORD PTR [rip+0x2009a9]        # 601070 <stdin@@GLIBC_2.2.5>
  4006c7:	b9 00 00 00 00       	mov    ecx,0x0
  4006cc:	ba 02 00 00 00       	mov    edx,0x2
  4006d1:	be 00 00 00 00       	mov    esi,0x0
  4006d6:	48 89 c7             	mov    rdi,rax
  4006d9:	e8 b2 fe ff ff       	call   400590 <setvbuf@plt>
  4006de:	48 8b 05 9b 09 20 00 	mov    rax,QWORD PTR [rip+0x20099b]        # 601080 <stderr@@GLIBC_2.2.5>
  4006e5:	b9 00 00 00 00       	mov    ecx,0x0
  4006ea:	ba 02 00 00 00       	mov    edx,0x2
  4006ef:	be 00 00 00 00       	mov    esi,0x0
  4006f4:	48 89 c7             	mov    rdi,rax
  4006f7:	e8 94 fe ff ff       	call   400590 <setvbuf@plt>
  4006fc:	48 8d 3d a4 00 00 00 	lea    rdi,[rip+0xa4]        # 4007a7 <_IO_stdin_used+0x7>
  400703:	e8 58 fe ff ff       	call   400560 <puts@plt>
  400708:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40070c:	48 89 c7             	mov    rdi,rax
  40070f:	b8 00 00 00 00       	mov    eax,0x0
  400714:	e8 67 fe ff ff       	call   400580 <gets@plt>
  400719:	b8 00 00 00 00       	mov    eax,0x0
  40071e:	c9                   	leave  
  40071f:	c3                   	ret    

0000000000400720 <__libc_csu_init>:
  400720:	41 57                	push   r15
  400722:	41 56                	push   r14
  400724:	49 89 d7             	mov    r15,rdx
  400727:	41 55                	push   r13
  400729:	41 54                	push   r12
  40072b:	4c 8d 25 de 06 20 00 	lea    r12,[rip+0x2006de]        # 600e10 <__frame_dummy_init_array_entry>
  400732:	55                   	push   rbp
  400733:	48 8d 2d de 06 20 00 	lea    rbp,[rip+0x2006de]        # 600e18 <__init_array_end>
  40073a:	53                   	push   rbx
  40073b:	41 89 fd             	mov    r13d,edi
  40073e:	49 89 f6             	mov    r14,rsi
  400741:	4c 29 e5             	sub    rbp,r12
  400744:	48 83 ec 08          	sub    rsp,0x8
  400748:	48 c1 fd 03          	sar    rbp,0x3
  40074c:	e8 df fd ff ff       	call   400530 <_init>
  400751:	48 85 ed             	test   rbp,rbp
  400754:	74 20                	je     400776 <__libc_csu_init+0x56>
  400756:	31 db                	xor    ebx,ebx
  400758:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40075f:	00 
  400760:	4c 89 fa             	mov    rdx,r15
  400763:	4c 89 f6             	mov    rsi,r14
  400766:	44 89 ef             	mov    edi,r13d
  400769:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40076d:	48 83 c3 01          	add    rbx,0x1
  400771:	48 39 dd             	cmp    rbp,rbx
  400774:	75 ea                	jne    400760 <__libc_csu_init+0x40>
  400776:	48 83 c4 08          	add    rsp,0x8
  40077a:	5b                   	pop    rbx
  40077b:	5d                   	pop    rbp
  40077c:	41 5c                	pop    r12
  40077e:	41 5d                	pop    r13
  400780:	41 5e                	pop    r14
  400782:	41 5f                	pop    r15
  400784:	c3                   	ret    
  400785:	90                   	nop
  400786:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40078d:	00 00 00 

0000000000400790 <__libc_csu_fini>:
  400790:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400794 <_fini>:
  400794:	48 83 ec 08          	sub    rsp,0x8
  400798:	48 83 c4 08          	add    rsp,0x8
  40079c:	c3                   	ret    

Disassembly of section .rodata:

00000000004007a0 <_IO_stdin_used>:
  4007a0:	01 00                	add    DWORD PTR [rax],eax
  4007a2:	02 00                	add    al,BYTE PTR [rax]
  4007a4:	73 68                	jae    40080e <__GNU_EH_FRAME_HDR+0x4e>
  4007a6:	00 57 65             	add    BYTE PTR [rdi+0x65],dl
  4007a9:	6c                   	ins    BYTE PTR es:[rdi],dx
  4007aa:	63 6f 6d             	movsxd ebp,DWORD PTR [rdi+0x6d]
  4007ad:	65 20 74 6f 20       	and    BYTE PTR gs:[rdi+rbp*2+0x20],dh
  4007b2:	45                   	rex.RB
  4007b3:	44 55                	rex.R push rbp
  4007b5:	20 43 54             	and    BYTE PTR [rbx+0x54],al
  4007b8:	46 20 32             	rex.RX and BYTE PTR [rdx],r14b
  4007bb:	30 31                	xor    BYTE PTR [rcx],dh
  4007bd:	39 2e                	cmp    DWORD PTR [rsi],ebp
	...

Disassembly of section .eh_frame_hdr:

00000000004007c0 <__GNU_EH_FRAME_HDR>:
  4007c0:	01 1b                	add    DWORD PTR [rbx],ebx
  4007c2:	03 3b                	add    edi,DWORD PTR [rbx]
  4007c4:	44 00 00             	add    BYTE PTR [rax],r8b
  4007c7:	00 07                	add    BYTE PTR [rdi],al
  4007c9:	00 00                	add    BYTE PTR [rax],al
  4007cb:	00 90 fd ff ff a0    	add    BYTE PTR [rax-0x5f000003],dl
  4007d1:	00 00                	add    BYTE PTR [rax],al
  4007d3:	00 e0                	add    al,ah
  4007d5:	fd                   	std    
  4007d6:	ff                   	(bad)  
  4007d7:	ff 60 00             	jmp    QWORD PTR [rax+0x0]
  4007da:	00 00                	add    BYTE PTR [rax],al
  4007dc:	10 fe                	adc    dh,bh
  4007de:	ff                   	(bad)  
  4007df:	ff 8c 00 00 00 c7 fe 	dec    DWORD PTR [rax+rax*1-0x1390000]
  4007e6:	ff                   	(bad)  
  4007e7:	ff c8                	dec    eax
  4007e9:	00 00                	add    BYTE PTR [rax],al
  4007eb:	00 da                	add    dl,bl
  4007ed:	fe                   	(bad)  
  4007ee:	ff                   	(bad)  
  4007ef:	ff                   	(bad)  
  4007f0:	e8 00 00 00 60       	call   604007f5 <_end+0x5fdff765>
  4007f5:	ff                   	(bad)  
  4007f6:	ff                   	(bad)  
  4007f7:	ff 08                	dec    DWORD PTR [rax]
  4007f9:	01 00                	add    DWORD PTR [rax],eax
  4007fb:	00 d0                	add    al,dl
  4007fd:	ff                   	(bad)  
  4007fe:	ff                   	(bad)  
  4007ff:	ff 50 01             	call   QWORD PTR [rax+0x1]
	...

Disassembly of section .eh_frame:

0000000000400808 <__FRAME_END__-0x11c>:
  400808:	14 00                	adc    al,0x0
  40080a:	00 00                	add    BYTE PTR [rax],al
  40080c:	00 00                	add    BYTE PTR [rax],al
  40080e:	00 00                	add    BYTE PTR [rax],al
  400810:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  400813:	00 01                	add    BYTE PTR [rcx],al
  400815:	78 10                	js     400827 <__GNU_EH_FRAME_HDR+0x67>
  400817:	01 1b                	add    DWORD PTR [rbx],ebx
  400819:	0c 07                	or     al,0x7
  40081b:	08 90 01 07 10 10    	or     BYTE PTR [rax+0x10100701],dl
  400821:	00 00                	add    BYTE PTR [rax],al
  400823:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400826:	00 00                	add    BYTE PTR [rax],al
  400828:	78 fd                	js     400827 <__GNU_EH_FRAME_HDR+0x67>
  40082a:	ff                   	(bad)  
  40082b:	ff 2b                	jmp    FWORD PTR [rbx]
  40082d:	00 00                	add    BYTE PTR [rax],al
  40082f:	00 00                	add    BYTE PTR [rax],al
  400831:	00 00                	add    BYTE PTR [rax],al
  400833:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  400836:	00 00                	add    BYTE PTR [rax],al
  400838:	00 00                	add    BYTE PTR [rax],al
  40083a:	00 00                	add    BYTE PTR [rax],al
  40083c:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  40083f:	00 01                	add    BYTE PTR [rcx],al
  400841:	78 10                	js     400853 <__GNU_EH_FRAME_HDR+0x93>
  400843:	01 1b                	add    DWORD PTR [rbx],ebx
  400845:	0c 07                	or     al,0x7
  400847:	08 90 01 00 00 10    	or     BYTE PTR [rax+0x10000001],dl
  40084d:	00 00                	add    BYTE PTR [rax],al
  40084f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400852:	00 00                	add    BYTE PTR [rax],al
  400854:	7c fd                	jl     400853 <__GNU_EH_FRAME_HDR+0x93>
  400856:	ff                   	(bad)  
  400857:	ff 02                	inc    DWORD PTR [rdx]
  400859:	00 00                	add    BYTE PTR [rax],al
  40085b:	00 00                	add    BYTE PTR [rax],al
  40085d:	00 00                	add    BYTE PTR [rax],al
  40085f:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  400862:	00 00                	add    BYTE PTR [rax],al
  400864:	30 00                	xor    BYTE PTR [rax],al
  400866:	00 00                	add    BYTE PTR [rax],al
  400868:	e8 fc ff ff 50       	call   51400869 <_end+0x50dff7d9>
  40086d:	00 00                	add    BYTE PTR [rax],al
  40086f:	00 00                	add    BYTE PTR [rax],al
  400871:	0e                   	(bad)  
  400872:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
  400875:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
  400878:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
  40087b:	80 00 3f             	add    BYTE PTR [rax],0x3f
  40087e:	1a 3b                	sbb    bh,BYTE PTR [rbx]
  400880:	2a 33                	sub    dh,BYTE PTR [rbx]
  400882:	24 22                	and    al,0x22
  400884:	00 00                	add    BYTE PTR [rax],al
  400886:	00 00                	add    BYTE PTR [rax],al
  400888:	1c 00                	sbb    al,0x0
  40088a:	00 00                	add    BYTE PTR [rax],al
  40088c:	58                   	pop    rax
  40088d:	00 00                	add    BYTE PTR [rax],al
  40088f:	00 f7                	add    bh,dh
  400891:	fd                   	std    
  400892:	ff                   	(bad)  
  400893:	ff 13                	call   QWORD PTR [rbx]
  400895:	00 00                	add    BYTE PTR [rax],al
  400897:	00 00                	add    BYTE PTR [rax],al
  400899:	41 0e                	rex.B (bad) 
  40089b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  4008a1:	4e 0c 07             	rex.WRX or al,0x7
  4008a4:	08 00                	or     BYTE PTR [rax],al
  4008a6:	00 00                	add    BYTE PTR [rax],al
  4008a8:	1c 00                	sbb    al,0x0
  4008aa:	00 00                	add    BYTE PTR [rax],al
  4008ac:	78 00                	js     4008ae <__GNU_EH_FRAME_HDR+0xee>
  4008ae:	00 00                	add    BYTE PTR [rax],al
  4008b0:	ea                   	(bad)  
  4008b1:	fd                   	std    
  4008b2:	ff                   	(bad)  
  4008b3:	ff 86 00 00 00 00    	inc    DWORD PTR [rsi+0x0]
  4008b9:	41 0e                	rex.B (bad) 
  4008bb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  4008c1:	02 81 0c 07 08 00    	add    al,BYTE PTR [rcx+0x8070c]
  4008c7:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
  4008cb:	00 98 00 00 00 50    	add    BYTE PTR [rax+0x50000000],bl
  4008d1:	fe                   	(bad)  
  4008d2:	ff                   	(bad)  
  4008d3:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
  4008d6:	00 00                	add    BYTE PTR [rax],al
  4008d8:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
  4008db:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
  4008e1:	8e 03                	mov    es,WORD PTR [rbx]
  4008e3:	45 0e                	rex.RB (bad) 
  4008e5:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
  4008eb:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff86701739 <_end+0xffffffff861006a9>
  4008f1:	06                   	(bad)  
  4008f2:	48 0e                	rex.W (bad) 
  4008f4:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
  4008fa:	72 0e                	jb     40090a <__GNU_EH_FRAME_HDR+0x14a>
  4008fc:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
  4008ff:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
  400902:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
  400905:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
  400908:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
  40090b:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
  40090e:	08 00                	or     BYTE PTR [rax],al
  400910:	10 00                	adc    BYTE PTR [rax],al
  400912:	00 00                	add    BYTE PTR [rax],al
  400914:	e0 00                	loopne 400916 <__GNU_EH_FRAME_HDR+0x156>
  400916:	00 00                	add    BYTE PTR [rax],al
  400918:	78 fe                	js     400918 <__GNU_EH_FRAME_HDR+0x158>
  40091a:	ff                   	(bad)  
  40091b:	ff 02                	inc    DWORD PTR [rdx]
  40091d:	00 00                	add    BYTE PTR [rax],al
  40091f:	00 00                	add    BYTE PTR [rax],al
  400921:	00 00                	add    BYTE PTR [rax],al
	...

0000000000400924 <__FRAME_END__>:
  400924:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	80 06 40             	add    BYTE PTR [rsi],0x40
  600e13:	00 00                	add    BYTE PTR [rax],al
  600e15:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	50                   	push   rax
  600e19:	06                   	(bad)  
  600e1a:	40 00 00             	add    BYTE PTR [rax],al
  600e1d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000600e20 <_DYNAMIC>:
  600e20:	01 00                	add    DWORD PTR [rax],eax
  600e22:	00 00                	add    BYTE PTR [rax],al
  600e24:	00 00                	add    BYTE PTR [rax],al
  600e26:	00 00                	add    BYTE PTR [rax],al
  600e28:	01 00                	add    DWORD PTR [rax],eax
  600e2a:	00 00                	add    BYTE PTR [rax],al
  600e2c:	00 00                	add    BYTE PTR [rax],al
  600e2e:	00 00                	add    BYTE PTR [rax],al
  600e30:	0c 00                	or     al,0x0
  600e32:	00 00                	add    BYTE PTR [rax],al
  600e34:	00 00                	add    BYTE PTR [rax],al
  600e36:	00 00                	add    BYTE PTR [rax],al
  600e38:	30 05 40 00 00 00    	xor    BYTE PTR [rip+0x40],al        # 600e7e <_DYNAMIC+0x5e>
  600e3e:	00 00                	add    BYTE PTR [rax],al
  600e40:	0d 00 00 00 00       	or     eax,0x0
  600e45:	00 00                	add    BYTE PTR [rax],al
  600e47:	00 94 07 40 00 00 00 	add    BYTE PTR [rdi+rax*1+0x40],dl
  600e4e:	00 00                	add    BYTE PTR [rax],al
  600e50:	19 00                	sbb    DWORD PTR [rax],eax
  600e52:	00 00                	add    BYTE PTR [rax],al
  600e54:	00 00                	add    BYTE PTR [rax],al
  600e56:	00 00                	add    BYTE PTR [rax],al
  600e58:	10 0e                	adc    BYTE PTR [rsi],cl
  600e5a:	60                   	(bad)  
  600e5b:	00 00                	add    BYTE PTR [rax],al
  600e5d:	00 00                	add    BYTE PTR [rax],al
  600e5f:	00 1b                	add    BYTE PTR [rbx],bl
  600e61:	00 00                	add    BYTE PTR [rax],al
  600e63:	00 00                	add    BYTE PTR [rax],al
  600e65:	00 00                	add    BYTE PTR [rax],al
  600e67:	00 08                	add    BYTE PTR [rax],cl
  600e69:	00 00                	add    BYTE PTR [rax],al
  600e6b:	00 00                	add    BYTE PTR [rax],al
  600e6d:	00 00                	add    BYTE PTR [rax],al
  600e6f:	00 1a                	add    BYTE PTR [rdx],bl
  600e71:	00 00                	add    BYTE PTR [rax],al
  600e73:	00 00                	add    BYTE PTR [rax],al
  600e75:	00 00                	add    BYTE PTR [rax],al
  600e77:	00 18                	add    BYTE PTR [rax],bl
  600e79:	0e                   	(bad)  
  600e7a:	60                   	(bad)  
  600e7b:	00 00                	add    BYTE PTR [rax],al
  600e7d:	00 00                	add    BYTE PTR [rax],al
  600e7f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  600e82:	00 00                	add    BYTE PTR [rax],al
  600e84:	00 00                	add    BYTE PTR [rax],al
  600e86:	00 00                	add    BYTE PTR [rax],al
  600e88:	08 00                	or     BYTE PTR [rax],al
  600e8a:	00 00                	add    BYTE PTR [rax],al
  600e8c:	00 00                	add    BYTE PTR [rax],al
  600e8e:	00 00                	add    BYTE PTR [rax],al
  600e90:	f5                   	cmc    
  600e91:	fe                   	(bad)  
  600e92:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600e95:	00 00                	add    BYTE PTR [rax],al
  600e97:	00 98 02 40 00 00    	add    BYTE PTR [rax+0x4002],bl
  600e9d:	00 00                	add    BYTE PTR [rax],al
  600e9f:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 600ea5 <_DYNAMIC+0x85>
  600ea5:	00 00                	add    BYTE PTR [rax],al
  600ea7:	00 b8 03 40 00 00    	add    BYTE PTR [rax+0x4003],bh
  600ead:	00 00                	add    BYTE PTR [rax],al
  600eaf:	00 06                	add    BYTE PTR [rsi],al
  600eb1:	00 00                	add    BYTE PTR [rax],al
  600eb3:	00 00                	add    BYTE PTR [rax],al
  600eb5:	00 00                	add    BYTE PTR [rax],al
  600eb7:	00 c8                	add    al,cl
  600eb9:	02 40 00             	add    al,BYTE PTR [rax+0x0]
  600ebc:	00 00                	add    BYTE PTR [rax],al
  600ebe:	00 00                	add    BYTE PTR [rax],al
  600ec0:	0a 00                	or     al,BYTE PTR [rax]
  600ec2:	00 00                	add    BYTE PTR [rax],al
  600ec4:	00 00                	add    BYTE PTR [rax],al
  600ec6:	00 00                	add    BYTE PTR [rax],al
  600ec8:	65 00 00             	add    BYTE PTR gs:[rax],al
  600ecb:	00 00                	add    BYTE PTR [rax],al
  600ecd:	00 00                	add    BYTE PTR [rax],al
  600ecf:	00 0b                	add    BYTE PTR [rbx],cl
  600ed1:	00 00                	add    BYTE PTR [rax],al
  600ed3:	00 00                	add    BYTE PTR [rax],al
  600ed5:	00 00                	add    BYTE PTR [rax],al
  600ed7:	00 18                	add    BYTE PTR [rax],bl
  600ed9:	00 00                	add    BYTE PTR [rax],al
  600edb:	00 00                	add    BYTE PTR [rax],al
  600edd:	00 00                	add    BYTE PTR [rax],al
  600edf:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 600ee5 <_DYNAMIC+0xc5>
	...
  600eed:	00 00                	add    BYTE PTR [rax],al
  600eef:	00 03                	add    BYTE PTR [rbx],al
	...
  600ef9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  600efc:	00 00                	add    BYTE PTR [rax],al
  600efe:	00 00                	add    BYTE PTR [rax],al
  600f00:	02 00                	add    al,BYTE PTR [rax]
  600f02:	00 00                	add    BYTE PTR [rax],al
  600f04:	00 00                	add    BYTE PTR [rax],al
  600f06:	00 00                	add    BYTE PTR [rax],al
  600f08:	60                   	(bad)  
  600f09:	00 00                	add    BYTE PTR [rax],al
  600f0b:	00 00                	add    BYTE PTR [rax],al
  600f0d:	00 00                	add    BYTE PTR [rax],al
  600f0f:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  600f12:	00 00                	add    BYTE PTR [rax],al
  600f14:	00 00                	add    BYTE PTR [rax],al
  600f16:	00 00                	add    BYTE PTR [rax],al
  600f18:	07                   	(bad)  
  600f19:	00 00                	add    BYTE PTR [rax],al
  600f1b:	00 00                	add    BYTE PTR [rax],al
  600f1d:	00 00                	add    BYTE PTR [rax],al
  600f1f:	00 17                	add    BYTE PTR [rdi],dl
  600f21:	00 00                	add    BYTE PTR [rax],al
  600f23:	00 00                	add    BYTE PTR [rax],al
  600f25:	00 00                	add    BYTE PTR [rax],al
  600f27:	00 d0                	add    al,dl
  600f29:	04 40                	add    al,0x40
  600f2b:	00 00                	add    BYTE PTR [rax],al
  600f2d:	00 00                	add    BYTE PTR [rax],al
  600f2f:	00 07                	add    BYTE PTR [rdi],al
  600f31:	00 00                	add    BYTE PTR [rax],al
  600f33:	00 00                	add    BYTE PTR [rax],al
  600f35:	00 00                	add    BYTE PTR [rax],al
  600f37:	00 58 04             	add    BYTE PTR [rax+0x4],bl
  600f3a:	40 00 00             	add    BYTE PTR [rax],al
  600f3d:	00 00                	add    BYTE PTR [rax],al
  600f3f:	00 08                	add    BYTE PTR [rax],cl
  600f41:	00 00                	add    BYTE PTR [rax],al
  600f43:	00 00                	add    BYTE PTR [rax],al
  600f45:	00 00                	add    BYTE PTR [rax],al
  600f47:	00 78 00             	add    BYTE PTR [rax+0x0],bh
  600f4a:	00 00                	add    BYTE PTR [rax],al
  600f4c:	00 00                	add    BYTE PTR [rax],al
  600f4e:	00 00                	add    BYTE PTR [rax],al
  600f50:	09 00                	or     DWORD PTR [rax],eax
  600f52:	00 00                	add    BYTE PTR [rax],al
  600f54:	00 00                	add    BYTE PTR [rax],al
  600f56:	00 00                	add    BYTE PTR [rax],al
  600f58:	18 00                	sbb    BYTE PTR [rax],al
  600f5a:	00 00                	add    BYTE PTR [rax],al
  600f5c:	00 00                	add    BYTE PTR [rax],al
  600f5e:	00 00                	add    BYTE PTR [rax],al
  600f60:	fe                   	(bad)  
  600f61:	ff                   	(bad)  
  600f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f65:	00 00                	add    BYTE PTR [rax],al
  600f67:	00 38                	add    BYTE PTR [rax],bh
  600f69:	04 40                	add    al,0x40
  600f6b:	00 00                	add    BYTE PTR [rax],al
  600f6d:	00 00                	add    BYTE PTR [rax],al
  600f6f:	00 ff                	add    bh,bh
  600f71:	ff                   	(bad)  
  600f72:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f75:	00 00                	add    BYTE PTR [rax],al
  600f77:	00 01                	add    BYTE PTR [rcx],al
  600f79:	00 00                	add    BYTE PTR [rax],al
  600f7b:	00 00                	add    BYTE PTR [rax],al
  600f7d:	00 00                	add    BYTE PTR [rax],al
  600f7f:	00 f0                	add    al,dh
  600f81:	ff                   	(bad)  
  600f82:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
  600f85:	00 00                	add    BYTE PTR [rax],al
  600f87:	00 1e                	add    BYTE PTR [rsi],bl
  600f89:	04 40                	add    al,0x40
	...

Disassembly of section .got:

0000000000600ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	20 0e                	and    BYTE PTR [rsi],cl
  601002:	60                   	(bad)  
	...
  601017:	00 66 05             	add    BYTE PTR [rsi+0x5],ah
  60101a:	40 00 00             	add    BYTE PTR [rax],al
  60101d:	00 00                	add    BYTE PTR [rax],al
  60101f:	00 76 05             	add    BYTE PTR [rsi+0x5],dh
  601022:	40 00 00             	add    BYTE PTR [rax],al
  601025:	00 00                	add    BYTE PTR [rax],al
  601027:	00 86 05 40 00 00    	add    BYTE PTR [rsi+0x4005],al
  60102d:	00 00                	add    BYTE PTR [rax],al
  60102f:	00 96 05 40 00 00    	add    BYTE PTR [rsi+0x4005],dl
  601035:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

0000000000601038 <__data_start>:
	...

0000000000601040 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601060 <stdout@@GLIBC_2.2.5>:
	...

0000000000601070 <stdin@@GLIBC_2.2.5>:
	...

0000000000601080 <stderr@@GLIBC_2.2.5>:
	...

0000000000601088 <completed.7697>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x4004b8>
   a:	74 75                	je     81 <_init-0x4004af>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 34 2e             	cs xor al,0x2e
  11:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627548 <_end+0x750264b8>
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	74 75                	je     8f <_init-0x4004a1>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  22:	31 29                	xor    DWORD PTR [rcx],ebp
  24:	20 37                	and    BYTE PTR [rdi],dh
  26:	2e 34 2e             	cs xor al,0x2e
  29:	30 00                	xor    BYTE PTR [rax],al
