
re2plt:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	ins    BYTE PTR es:[rdi],dx
  40023a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
  400241:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  400246:	78 2d                	js     400275 <_init-0x283>
  400248:	78 38                	js     400282 <_init-0x276>
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
  400283:	00 a8 70 29 86 97    	add    BYTE PTR [rax-0x6879d690],ch
  400289:	8e 52 73             	mov    ss,WORD PTR [rdx+0x73]
  40028c:	ea                   	(bad)  
  40028d:	94                   	xchg   esp,eax
  40028e:	90                   	nop
  40028f:	fc                   	cld    
  400290:	c1 a4 0b cd 64 c7 1a 	shl    DWORD PTR [rbx+rcx*1+0x1ac764cd],0xbc
  400297:	bc 

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    eax,DWORD PTR [rax]
  40029a:	00 00                	add    BYTE PTR [rax],al
  40029c:	06                   	(bad)  
  40029d:	00 00                	add    BYTE PTR [rax],al
  40029f:	00 01                	add    BYTE PTR [rcx],al
  4002a1:	00 00                	add    BYTE PTR [rax],al
  4002a3:	00 06                	add    BYTE PTR [rsi],al
  4002a5:	00 00                	add    BYTE PTR [rax],al
  4002a7:	00 00                	add    BYTE PTR [rax],al
  4002a9:	01 20                	add    DWORD PTR [rax],esp
  4002ab:	00 80 01 10 02 06    	add    BYTE PTR [rax+0x6021001],al
  4002b1:	00 00                	add    BYTE PTR [rax],al
  4002b3:	00 07                	add    BYTE PTR [rdi],al
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
  4002e0:	24 00                	and    al,0x0
  4002e2:	00 00                	add    BYTE PTR [rax],al
  4002e4:	12 00                	adc    al,BYTE PTR [rax]
	...
  4002f6:	00 00                	add    BYTE PTR [rax],al
  4002f8:	33 00                	xor    eax,DWORD PTR [rax]
  4002fa:	00 00                	add    BYTE PTR [rax],al
  4002fc:	12 00                	adc    al,BYTE PTR [rax]
	...
  40030e:	00 00                	add    BYTE PTR [rax],al
  400310:	51                   	push   rcx
  400311:	00 00                	add    BYTE PTR [rax],al
  400313:	00 20                	add    BYTE PTR [rax],ah
	...
  400325:	00 00                	add    BYTE PTR [rax],al
  400327:	00 0b                	add    BYTE PTR [rbx],cl
  400329:	00 00                	add    BYTE PTR [rax],al
  40032b:	00 12                	add    BYTE PTR [rdx],dl
	...
  40033d:	00 00                	add    BYTE PTR [rax],al
  40033f:	00 2b                	add    BYTE PTR [rbx],ch
  400341:	00 00                	add    BYTE PTR [rax],al
  400343:	00 12                	add    BYTE PTR [rdx],dl
	...
  400355:	00 00                	add    BYTE PTR [rax],al
  400357:	00 16                	add    BYTE PTR [rsi],dl
  400359:	00 00                	add    BYTE PTR [rax],al
  40035b:	00 11                	add    BYTE PTR [rcx],dl
  40035d:	00 18                	add    BYTE PTR [rax],bl
  40035f:	00 40 10             	add    BYTE PTR [rax+0x10],al
  400362:	60                   	(bad)  
  400363:	00 00                	add    BYTE PTR [rax],al
  400365:	00 00                	add    BYTE PTR [rax],al
  400367:	00 08                	add    BYTE PTR [rax],cl
  400369:	00 00                	add    BYTE PTR [rax],al
  40036b:	00 00                	add    BYTE PTR [rax],al
  40036d:	00 00                	add    BYTE PTR [rax],al
  40036f:	00 10                	add    BYTE PTR [rax],dl
  400371:	00 00                	add    BYTE PTR [rax],al
  400373:	00 11                	add    BYTE PTR [rcx],dl
  400375:	00 18                	add    BYTE PTR [rax],bl
  400377:	00 50 10             	add    BYTE PTR [rax+0x10],dl
  40037a:	60                   	(bad)  
  40037b:	00 00                	add    BYTE PTR [rax],al
  40037d:	00 00                	add    BYTE PTR [rax],al
  40037f:	00 08                	add    BYTE PTR [rax],cl
  400381:	00 00                	add    BYTE PTR [rax],al
  400383:	00 00                	add    BYTE PTR [rax],al
  400385:	00 00                	add    BYTE PTR [rax],al
  400387:	00 1d 00 00 00 11    	add    BYTE PTR [rip+0x11000000],bl        # 1140038d <_end+0x10dff31d>
  40038d:	00 18                	add    BYTE PTR [rax],bl
  40038f:	00 60 10             	add    BYTE PTR [rax+0x10],ah
  400392:	60                   	(bad)  
  400393:	00 00                	add    BYTE PTR [rax],al
  400395:	00 00                	add    BYTE PTR [rax],al
  400397:	00 08                	add    BYTE PTR [rax],cl
  400399:	00 00                	add    BYTE PTR [rax],al
  40039b:	00 00                	add    BYTE PTR [rax],al
  40039d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

00000000004003a0 <.dynstr>:
  4003a0:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
  4003a4:	63 2e                	movsxd ebp,DWORD PTR [rsi]
  4003a6:	73 6f                	jae    400417 <_init-0xe1>
  4003a8:	2e 36 00 67 65       	cs add BYTE PTR ss:[rdi+0x65],ah
  4003ad:	74 73                	je     400422 <_init-0xd6>
  4003af:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  4003b2:	64 69 6e 00 73 74 64 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x6f647473
  4003b9:	6f 
  4003ba:	75 74                	jne    400430 <_init-0xc8>
  4003bc:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  4003bf:	64 65 72 72          	fs gs jb 400435 <_init-0xc3>
  4003c3:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
  4003c6:	73 74                	jae    40043c <_init-0xbc>
  4003c8:	65 6d                	gs ins DWORD PTR es:[rdi],dx
  4003ca:	00 73 65             	add    BYTE PTR [rbx+0x65],dh
  4003cd:	74 76                	je     400445 <_init-0xb3>
  4003cf:	62                   	(bad)  
  4003d0:	75 66                	jne    400438 <_init-0xc0>
  4003d2:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
  4003d5:	6c                   	ins    BYTE PTR es:[rdi],dx
  4003d6:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
  4003dd:	72 74                	jb     400453 <_init-0xa5>
  4003df:	5f                   	pop    rdi
  4003e0:	6d                   	ins    DWORD PTR es:[rdi],dx
  4003e1:	61                   	(bad)  
  4003e2:	69 6e 00 47 4c 49 42 	imul   ebp,DWORD PTR [rsi+0x0],0x42494c47
  4003e9:	43 5f                	rex.XB pop r15
  4003eb:	32 2e                	xor    ch,BYTE PTR [rsi]
  4003ed:	32 2e                	xor    ch,BYTE PTR [rsi]
  4003ef:	35 00 5f 5f 67       	xor    eax,0x675f5f00
  4003f4:	6d                   	ins    DWORD PTR es:[rdi],dx
  4003f5:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  4003f6:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4003f7:	5f                   	pop    rdi
  4003f8:	73 74                	jae    40046e <_init-0x8a>
  4003fa:	61                   	(bad)  
  4003fb:	72 74                	jb     400471 <_init-0x87>
  4003fd:	5f                   	pop    rdi
  4003fe:	5f                   	pop    rdi
	...

Disassembly of section .gnu.version:

0000000000400400 <.gnu.version>:
  400400:	00 00                	add    BYTE PTR [rax],al
  400402:	02 00                	add    al,BYTE PTR [rax]
  400404:	02 00                	add    al,BYTE PTR [rax]
  400406:	00 00                	add    BYTE PTR [rax],al
  400408:	02 00                	add    al,BYTE PTR [rax]
  40040a:	02 00                	add    al,BYTE PTR [rax]
  40040c:	02 00                	add    al,BYTE PTR [rax]
  40040e:	02 00                	add    al,BYTE PTR [rax]
  400410:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

0000000000400418 <.gnu.version_r>:
  400418:	01 00                	add    DWORD PTR [rax],eax
  40041a:	01 00                	add    DWORD PTR [rax],eax
  40041c:	01 00                	add    DWORD PTR [rax],eax
  40041e:	00 00                	add    BYTE PTR [rax],al
  400420:	10 00                	adc    BYTE PTR [rax],al
  400422:	00 00                	add    BYTE PTR [rax],al
  400424:	00 00                	add    BYTE PTR [rax],al
  400426:	00 00                	add    BYTE PTR [rax],al
  400428:	75 1a                	jne    400444 <_init-0xb4>
  40042a:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
  400430:	45 00 00             	add    BYTE PTR [r8],r8b
  400433:	00 00                	add    BYTE PTR [rax],al
  400435:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000400438 <.rela.dyn>:
  400438:	f0 0f 60 00          	lock punpcklbw mm0,DWORD PTR [rax]
  40043c:	00 00                	add    BYTE PTR [rax],al
  40043e:	00 00                	add    BYTE PTR [rax],al
  400440:	06                   	(bad)  
  400441:	00 00                	add    BYTE PTR [rax],al
  400443:	00 02                	add    BYTE PTR [rdx],al
	...
  40044d:	00 00                	add    BYTE PTR [rax],al
  40044f:	00 f8                	add    al,bh
  400451:	0f 60 00             	punpcklbw mm0,DWORD PTR [rax]
  400454:	00 00                	add    BYTE PTR [rax],al
  400456:	00 00                	add    BYTE PTR [rax],al
  400458:	06                   	(bad)  
  400459:	00 00                	add    BYTE PTR [rax],al
  40045b:	00 03                	add    BYTE PTR [rbx],al
	...
  400465:	00 00                	add    BYTE PTR [rax],al
  400467:	00 40 10             	add    BYTE PTR [rax+0x10],al
  40046a:	60                   	(bad)  
  40046b:	00 00                	add    BYTE PTR [rax],al
  40046d:	00 00                	add    BYTE PTR [rax],al
  40046f:	00 05 00 00 00 06    	add    BYTE PTR [rip+0x6000000],al        # 6400475 <_end+0x5dff405>
	...
  40047d:	00 00                	add    BYTE PTR [rax],al
  40047f:	00 50 10             	add    BYTE PTR [rax+0x10],dl
  400482:	60                   	(bad)  
  400483:	00 00                	add    BYTE PTR [rax],al
  400485:	00 00                	add    BYTE PTR [rax],al
  400487:	00 05 00 00 00 07    	add    BYTE PTR [rip+0x7000000],al        # 740048d <_end+0x6dff41d>
	...
  400495:	00 00                	add    BYTE PTR [rax],al
  400497:	00 60 10             	add    BYTE PTR [rax+0x10],ah
  40049a:	60                   	(bad)  
  40049b:	00 00                	add    BYTE PTR [rax],al
  40049d:	00 00                	add    BYTE PTR [rax],al
  40049f:	00 05 00 00 00 08    	add    BYTE PTR [rip+0x8000000],al        # 84004a5 <_end+0x7dff435>
	...

Disassembly of section .rela.plt:

00000000004004b0 <.rela.plt>:
  4004b0:	18 10                	sbb    BYTE PTR [rax],dl
  4004b2:	60                   	(bad)  
  4004b3:	00 00                	add    BYTE PTR [rax],al
  4004b5:	00 00                	add    BYTE PTR [rax],al
  4004b7:	00 07                	add    BYTE PTR [rdi],al
  4004b9:	00 00                	add    BYTE PTR [rax],al
  4004bb:	00 01                	add    BYTE PTR [rcx],al
	...
  4004c5:	00 00                	add    BYTE PTR [rax],al
  4004c7:	00 20                	add    BYTE PTR [rax],ah
  4004c9:	10 60 00             	adc    BYTE PTR [rax+0x0],ah
  4004cc:	00 00                	add    BYTE PTR [rax],al
  4004ce:	00 00                	add    BYTE PTR [rax],al
  4004d0:	07                   	(bad)  
  4004d1:	00 00                	add    BYTE PTR [rax],al
  4004d3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
  4004de:	00 00                	add    BYTE PTR [rax],al
  4004e0:	28 10                	sub    BYTE PTR [rax],dl
  4004e2:	60                   	(bad)  
  4004e3:	00 00                	add    BYTE PTR [rax],al
  4004e5:	00 00                	add    BYTE PTR [rax],al
  4004e7:	00 07                	add    BYTE PTR [rdi],al
  4004e9:	00 00                	add    BYTE PTR [rax],al
  4004eb:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 4004f1 <_init-0x7>
  4004f1:	00 00                	add    BYTE PTR [rax],al
  4004f3:	00 00                	add    BYTE PTR [rax],al
  4004f5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init:

00000000004004f8 <_init>:
  4004f8:	48 83 ec 08          	sub    rsp,0x8
  4004fc:	48 8b 05 f5 0a 20 00 	mov    rax,QWORD PTR [rip+0x200af5]        # 600ff8 <__gmon_start__>
  400503:	48 85 c0             	test   rax,rax
  400506:	74 02                	je     40050a <_init+0x12>
  400508:	ff d0                	call   rax
  40050a:	48 83 c4 08          	add    rsp,0x8
  40050e:	c3                   	ret    

Disassembly of section .plt:

0000000000400510 <.plt>:
  400510:	ff 35 f2 0a 20 00    	push   QWORD PTR [rip+0x200af2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400516:	ff 25 f4 0a 20 00    	jmp    QWORD PTR [rip+0x200af4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40051c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400520 <system@plt>:
  400520:	ff 25 f2 0a 20 00    	jmp    QWORD PTR [rip+0x200af2]        # 601018 <system@GLIBC_2.2.5>
  400526:	68 00 00 00 00       	push   0x0
  40052b:	e9 e0 ff ff ff       	jmp    400510 <.plt>

0000000000400530 <gets@plt>:
  400530:	ff 25 ea 0a 20 00    	jmp    QWORD PTR [rip+0x200aea]        # 601020 <gets@GLIBC_2.2.5>
  400536:	68 01 00 00 00       	push   0x1
  40053b:	e9 d0 ff ff ff       	jmp    400510 <.plt>

0000000000400540 <setvbuf@plt>:
  400540:	ff 25 e2 0a 20 00    	jmp    QWORD PTR [rip+0x200ae2]        # 601028 <setvbuf@GLIBC_2.2.5>
  400546:	68 02 00 00 00       	push   0x2
  40054b:	e9 c0 ff ff ff       	jmp    400510 <.plt>

Disassembly of section .text:

0000000000400550 <_start>:
  400550:	31 ed                	xor    ebp,ebp
  400552:	49 89 d1             	mov    r9,rdx
  400555:	5e                   	pop    rsi
  400556:	48 89 e2             	mov    rdx,rsp
  400559:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40055d:	50                   	push   rax
  40055e:	54                   	push   rsp
  40055f:	49 c7 c0 40 07 40 00 	mov    r8,0x400740
  400566:	48 c7 c1 d0 06 40 00 	mov    rcx,0x4006d0
  40056d:	48 c7 c7 98 06 40 00 	mov    rdi,0x400698
  400574:	ff 15 76 0a 20 00    	call   QWORD PTR [rip+0x200a76]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40057a:	f4                   	hlt    
  40057b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400580 <_dl_relocate_static_pie>:
  400580:	f3 c3                	repz ret 
  400582:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400589:	00 00 00 
  40058c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400590 <deregister_tm_clones>:
  400590:	55                   	push   rbp
  400591:	b8 40 10 60 00       	mov    eax,0x601040
  400596:	48 3d 40 10 60 00    	cmp    rax,0x601040
  40059c:	48 89 e5             	mov    rbp,rsp
  40059f:	74 17                	je     4005b8 <deregister_tm_clones+0x28>
  4005a1:	b8 00 00 00 00       	mov    eax,0x0
  4005a6:	48 85 c0             	test   rax,rax
  4005a9:	74 0d                	je     4005b8 <deregister_tm_clones+0x28>
  4005ab:	5d                   	pop    rbp
  4005ac:	bf 40 10 60 00       	mov    edi,0x601040
  4005b1:	ff e0                	jmp    rax
  4005b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4005b8:	5d                   	pop    rbp
  4005b9:	c3                   	ret    
  4005ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004005c0 <register_tm_clones>:
  4005c0:	be 40 10 60 00       	mov    esi,0x601040
  4005c5:	55                   	push   rbp
  4005c6:	48 81 ee 40 10 60 00 	sub    rsi,0x601040
  4005cd:	48 89 e5             	mov    rbp,rsp
  4005d0:	48 c1 fe 03          	sar    rsi,0x3
  4005d4:	48 89 f0             	mov    rax,rsi
  4005d7:	48 c1 e8 3f          	shr    rax,0x3f
  4005db:	48 01 c6             	add    rsi,rax
  4005de:	48 d1 fe             	sar    rsi,1
  4005e1:	74 15                	je     4005f8 <register_tm_clones+0x38>
  4005e3:	b8 00 00 00 00       	mov    eax,0x0
  4005e8:	48 85 c0             	test   rax,rax
  4005eb:	74 0b                	je     4005f8 <register_tm_clones+0x38>
  4005ed:	5d                   	pop    rbp
  4005ee:	bf 40 10 60 00       	mov    edi,0x601040
  4005f3:	ff e0                	jmp    rax
  4005f5:	0f 1f 00             	nop    DWORD PTR [rax]
  4005f8:	5d                   	pop    rbp
  4005f9:	c3                   	ret    
  4005fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400600 <__do_global_dtors_aux>:
  400600:	80 3d 61 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a61],0x0        # 601068 <completed.7697>
  400607:	75 17                	jne    400620 <__do_global_dtors_aux+0x20>
  400609:	55                   	push   rbp
  40060a:	48 89 e5             	mov    rbp,rsp
  40060d:	e8 7e ff ff ff       	call   400590 <deregister_tm_clones>
  400612:	c6 05 4f 0a 20 00 01 	mov    BYTE PTR [rip+0x200a4f],0x1        # 601068 <completed.7697>
  400619:	5d                   	pop    rbp
  40061a:	c3                   	ret    
  40061b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400620:	f3 c3                	repz ret 
  400622:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400626:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40062d:	00 00 00 

0000000000400630 <frame_dummy>:
  400630:	55                   	push   rbp
  400631:	48 89 e5             	mov    rbp,rsp
  400634:	5d                   	pop    rbp
  400635:	eb 89                	jmp    4005c0 <register_tm_clones>

0000000000400637 <init>:
  400637:	55                   	push   rbp
  400638:	48 89 e5             	mov    rbp,rsp
  40063b:	48 8b 05 fe 09 20 00 	mov    rax,QWORD PTR [rip+0x2009fe]        # 601040 <stdout@@GLIBC_2.2.5>
  400642:	b9 00 00 00 00       	mov    ecx,0x0
  400647:	ba 02 00 00 00       	mov    edx,0x2
  40064c:	be 00 00 00 00       	mov    esi,0x0
  400651:	48 89 c7             	mov    rdi,rax
  400654:	e8 e7 fe ff ff       	call   400540 <setvbuf@plt>
  400659:	48 8b 05 f0 09 20 00 	mov    rax,QWORD PTR [rip+0x2009f0]        # 601050 <stdin@@GLIBC_2.2.5>
  400660:	b9 00 00 00 00       	mov    ecx,0x0
  400665:	ba 02 00 00 00       	mov    edx,0x2
  40066a:	be 00 00 00 00       	mov    esi,0x0
  40066f:	48 89 c7             	mov    rdi,rax
  400672:	e8 c9 fe ff ff       	call   400540 <setvbuf@plt>
  400677:	48 8b 05 e2 09 20 00 	mov    rax,QWORD PTR [rip+0x2009e2]        # 601060 <stderr@@GLIBC_2.2.5>
  40067e:	b9 00 00 00 00       	mov    ecx,0x0
  400683:	ba 02 00 00 00       	mov    edx,0x2
  400688:	be 00 00 00 00       	mov    esi,0x0
  40068d:	48 89 c7             	mov    rdi,rax
  400690:	e8 ab fe ff ff       	call   400540 <setvbuf@plt>
  400695:	90                   	nop
  400696:	5d                   	pop    rbp
  400697:	c3                   	ret    

0000000000400698 <main>:
  400698:	55                   	push   rbp
  400699:	48 89 e5             	mov    rbp,rsp
  40069c:	48 83 ec 30          	sub    rsp,0x30
  4006a0:	b8 00 00 00 00       	mov    eax,0x0
  4006a5:	e8 8d ff ff ff       	call   400637 <init>
  4006aa:	48 8d 3d a3 00 00 00 	lea    rdi,[rip+0xa3]        # 400754 <_IO_stdin_used+0x4>
  4006b1:	e8 6a fe ff ff       	call   400520 <system@plt>
  4006b6:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4006ba:	48 89 c7             	mov    rdi,rax
  4006bd:	b8 00 00 00 00       	mov    eax,0x0
  4006c2:	e8 69 fe ff ff       	call   400530 <gets@plt>
  4006c7:	b8 00 00 00 00       	mov    eax,0x0
  4006cc:	c9                   	leave  
  4006cd:	c3                   	ret    
  4006ce:	66 90                	xchg   ax,ax

00000000004006d0 <__libc_csu_init>:
  4006d0:	41 57                	push   r15
  4006d2:	41 56                	push   r14
  4006d4:	49 89 d7             	mov    r15,rdx
  4006d7:	41 55                	push   r13
  4006d9:	41 54                	push   r12
  4006db:	4c 8d 25 2e 07 20 00 	lea    r12,[rip+0x20072e]        # 600e10 <__frame_dummy_init_array_entry>
  4006e2:	55                   	push   rbp
  4006e3:	48 8d 2d 2e 07 20 00 	lea    rbp,[rip+0x20072e]        # 600e18 <__init_array_end>
  4006ea:	53                   	push   rbx
  4006eb:	41 89 fd             	mov    r13d,edi
  4006ee:	49 89 f6             	mov    r14,rsi
  4006f1:	4c 29 e5             	sub    rbp,r12
  4006f4:	48 83 ec 08          	sub    rsp,0x8
  4006f8:	48 c1 fd 03          	sar    rbp,0x3
  4006fc:	e8 f7 fd ff ff       	call   4004f8 <_init>
  400701:	48 85 ed             	test   rbp,rbp
  400704:	74 20                	je     400726 <__libc_csu_init+0x56>
  400706:	31 db                	xor    ebx,ebx
  400708:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40070f:	00 
  400710:	4c 89 fa             	mov    rdx,r15
  400713:	4c 89 f6             	mov    rsi,r14
  400716:	44 89 ef             	mov    edi,r13d
  400719:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40071d:	48 83 c3 01          	add    rbx,0x1
  400721:	48 39 dd             	cmp    rbp,rbx
  400724:	75 ea                	jne    400710 <__libc_csu_init+0x40>
  400726:	48 83 c4 08          	add    rsp,0x8
  40072a:	5b                   	pop    rbx
  40072b:	5d                   	pop    rbp
  40072c:	41 5c                	pop    r12
  40072e:	41 5d                	pop    r13
  400730:	41 5e                	pop    r14
  400732:	41 5f                	pop    r15
  400734:	c3                   	ret    
  400735:	90                   	nop
  400736:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40073d:	00 00 00 

0000000000400740 <__libc_csu_fini>:
  400740:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400744 <_fini>:
  400744:	48 83 ec 08          	sub    rsp,0x8
  400748:	48 83 c4 08          	add    rsp,0x8
  40074c:	c3                   	ret    

Disassembly of section .rodata:

0000000000400750 <_IO_stdin_used>:
  400750:	01 00                	add    DWORD PTR [rax],eax
  400752:	02 00                	add    al,BYTE PTR [rax]
  400754:	65 63 68 6f          	movsxd ebp,DWORD PTR gs:[rax+0x6f]
  400758:	20 27                	and    BYTE PTR [rdi],ah
  40075a:	53                   	push   rbx
  40075b:	61                   	(bad)  
  40075c:	79 20                	jns    40077e <__GNU_EH_FRAME_HDR+0xa>
  40075e:	68 65 6c 6c 6f       	push   0x6f6c6c65
  400763:	20 74 6f 20          	and    BYTE PTR [rdi+rbp*2+0x20],dh
  400767:	73 74                	jae    4007dd <__GNU_EH_FRAME_HDR+0x69>
  400769:	61                   	(bad)  
  40076a:	63 6b 20             	movsxd ebp,DWORD PTR [rbx+0x20]
  40076d:	3a 44 27 00          	cmp    al,BYTE PTR [rdi+riz*1+0x0]

Disassembly of section .eh_frame_hdr:

0000000000400774 <__GNU_EH_FRAME_HDR>:
  400774:	01 1b                	add    DWORD PTR [rbx],ebx
  400776:	03 3b                	add    edi,DWORD PTR [rbx]
  400778:	40 00 00             	add    BYTE PTR [rax],al
  40077b:	00 07                	add    BYTE PTR [rdi],al
  40077d:	00 00                	add    BYTE PTR [rax],al
  40077f:	00 9c fd ff ff 9c 00 	add    BYTE PTR [rbp+rdi*8+0x9cffff],bl
  400786:	00 00                	add    BYTE PTR [rax],al
  400788:	dc fd                	fdivr  st(5),st
  40078a:	ff                   	(bad)  
  40078b:	ff 5c 00 00          	call   FWORD PTR [rax+rax*1+0x0]
  40078f:	00 0c fe             	add    BYTE PTR [rsi+rdi*8],cl
  400792:	ff                   	(bad)  
  400793:	ff 88 00 00 00 c3    	dec    DWORD PTR [rax-0x3d000000]
  400799:	fe                   	(bad)  
  40079a:	ff                   	(bad)  
  40079b:	ff c4                	inc    esp
  40079d:	00 00                	add    BYTE PTR [rax],al
  40079f:	00 24 ff             	add    BYTE PTR [rdi+rdi*8],ah
  4007a2:	ff                   	(bad)  
  4007a3:	ff e4                	jmp    rsp
  4007a5:	00 00                	add    BYTE PTR [rax],al
  4007a7:	00 5c ff ff          	add    BYTE PTR [rdi+rdi*8-0x1],bl
  4007ab:	ff 04 01             	inc    DWORD PTR [rcx+rax*1]
  4007ae:	00 00                	add    BYTE PTR [rax],al
  4007b0:	cc                   	int3   
  4007b1:	ff                   	(bad)  
  4007b2:	ff                   	(bad)  
  4007b3:	ff 4c 01 00          	dec    DWORD PTR [rcx+rax*1+0x0]
	...

Disassembly of section .eh_frame:

00000000004007b8 <__FRAME_END__-0x11c>:
  4007b8:	14 00                	adc    al,0x0
  4007ba:	00 00                	add    BYTE PTR [rax],al
  4007bc:	00 00                	add    BYTE PTR [rax],al
  4007be:	00 00                	add    BYTE PTR [rax],al
  4007c0:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  4007c3:	00 01                	add    BYTE PTR [rcx],al
  4007c5:	78 10                	js     4007d7 <__GNU_EH_FRAME_HDR+0x63>
  4007c7:	01 1b                	add    DWORD PTR [rbx],ebx
  4007c9:	0c 07                	or     al,0x7
  4007cb:	08 90 01 07 10 10    	or     BYTE PTR [rax+0x10100701],dl
  4007d1:	00 00                	add    BYTE PTR [rax],al
  4007d3:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  4007d6:	00 00                	add    BYTE PTR [rax],al
  4007d8:	78 fd                	js     4007d7 <__GNU_EH_FRAME_HDR+0x63>
  4007da:	ff                   	(bad)  
  4007db:	ff 2b                	jmp    FWORD PTR [rbx]
  4007dd:	00 00                	add    BYTE PTR [rax],al
  4007df:	00 00                	add    BYTE PTR [rax],al
  4007e1:	00 00                	add    BYTE PTR [rax],al
  4007e3:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
  4007e6:	00 00                	add    BYTE PTR [rax],al
  4007e8:	00 00                	add    BYTE PTR [rax],al
  4007ea:	00 00                	add    BYTE PTR [rax],al
  4007ec:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
  4007ef:	00 01                	add    BYTE PTR [rcx],al
  4007f1:	78 10                	js     400803 <__GNU_EH_FRAME_HDR+0x8f>
  4007f3:	01 1b                	add    DWORD PTR [rbx],ebx
  4007f5:	0c 07                	or     al,0x7
  4007f7:	08 90 01 00 00 10    	or     BYTE PTR [rax+0x10000001],dl
  4007fd:	00 00                	add    BYTE PTR [rax],al
  4007ff:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  400802:	00 00                	add    BYTE PTR [rax],al
  400804:	7c fd                	jl     400803 <__GNU_EH_FRAME_HDR+0x8f>
  400806:	ff                   	(bad)  
  400807:	ff 02                	inc    DWORD PTR [rdx]
  400809:	00 00                	add    BYTE PTR [rax],al
  40080b:	00 00                	add    BYTE PTR [rax],al
  40080d:	00 00                	add    BYTE PTR [rax],al
  40080f:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
  400812:	00 00                	add    BYTE PTR [rax],al
  400814:	30 00                	xor    BYTE PTR [rax],al
  400816:	00 00                	add    BYTE PTR [rax],al
  400818:	f8                   	clc    
  400819:	fc                   	cld    
  40081a:	ff                   	(bad)  
  40081b:	ff 40 00             	inc    DWORD PTR [rax+0x0]
  40081e:	00 00                	add    BYTE PTR [rax],al
  400820:	00 0e                	add    BYTE PTR [rsi],cl
  400822:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
  400825:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
  400828:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
  40082b:	80 00 3f             	add    BYTE PTR [rax],0x3f
  40082e:	1a 3b                	sbb    bh,BYTE PTR [rbx]
  400830:	2a 33                	sub    dh,BYTE PTR [rbx]
  400832:	24 22                	and    al,0x22
  400834:	00 00                	add    BYTE PTR [rax],al
  400836:	00 00                	add    BYTE PTR [rax],al
  400838:	1c 00                	sbb    al,0x0
  40083a:	00 00                	add    BYTE PTR [rax],al
  40083c:	58                   	pop    rax
  40083d:	00 00                	add    BYTE PTR [rax],al
  40083f:	00 f7                	add    bh,dh
  400841:	fd                   	std    
  400842:	ff                   	(bad)  
  400843:	ff 61 00             	jmp    QWORD PTR [rcx+0x0]
  400846:	00 00                	add    BYTE PTR [rax],al
  400848:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  40084b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400851:	02 5c 0c 07          	add    bl,BYTE PTR [rsp+rcx*1+0x7]
  400855:	08 00                	or     BYTE PTR [rax],al
  400857:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  40085a:	00 00                	add    BYTE PTR [rax],al
  40085c:	78 00                	js     40085e <__GNU_EH_FRAME_HDR+0xea>
  40085e:	00 00                	add    BYTE PTR [rax],al
  400860:	38 fe                	cmp    dh,bh
  400862:	ff                   	(bad)  
  400863:	ff 36                	push   QWORD PTR [rsi]
  400865:	00 00                	add    BYTE PTR [rax],al
  400867:	00 00                	add    BYTE PTR [rax],al
  400869:	41 0e                	rex.B (bad) 
  40086b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  400871:	71 0c                	jno    40087f <__GNU_EH_FRAME_HDR+0x10b>
  400873:	07                   	(bad)  
  400874:	08 00                	or     BYTE PTR [rax],al
  400876:	00 00                	add    BYTE PTR [rax],al
  400878:	44 00 00             	add    BYTE PTR [rax],r8b
  40087b:	00 98 00 00 00 50    	add    BYTE PTR [rax+0x50000000],bl
  400881:	fe                   	(bad)  
  400882:	ff                   	(bad)  
  400883:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
  400886:	00 00                	add    BYTE PTR [rax],al
  400888:	00 42 0e             	add    BYTE PTR [rdx+0xe],al
  40088b:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
  400891:	8e 03                	mov    es,WORD PTR [rbx]
  400893:	45 0e                	rex.RB (bad) 
  400895:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
  40089b:	8c 05 48 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e48],es        # ffffffff867016e9 <_end+0xffffffff86100679>
  4008a1:	06                   	(bad)  
  4008a2:	48 0e                	rex.W (bad) 
  4008a4:	38 83 07 4d 0e 40    	cmp    BYTE PTR [rbx+0x400e4d07],al
  4008aa:	72 0e                	jb     4008ba <__GNU_EH_FRAME_HDR+0x146>
  4008ac:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
  4008af:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
  4008b2:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
  4008b5:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
  4008b8:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
  4008bb:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
  4008be:	08 00                	or     BYTE PTR [rax],al
  4008c0:	10 00                	adc    BYTE PTR [rax],al
  4008c2:	00 00                	add    BYTE PTR [rax],al
  4008c4:	e0 00                	loopne 4008c6 <__GNU_EH_FRAME_HDR+0x152>
  4008c6:	00 00                	add    BYTE PTR [rax],al
  4008c8:	78 fe                	js     4008c8 <__GNU_EH_FRAME_HDR+0x154>
  4008ca:	ff                   	(bad)  
  4008cb:	ff 02                	inc    DWORD PTR [rdx]
  4008cd:	00 00                	add    BYTE PTR [rax],al
  4008cf:	00 00                	add    BYTE PTR [rax],al
  4008d1:	00 00                	add    BYTE PTR [rax],al
	...

00000000004008d4 <__FRAME_END__>:
  4008d4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	30 06                	xor    BYTE PTR [rsi],al
  600e12:	40 00 00             	add    BYTE PTR [rax],al
  600e15:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	00 06                	add    BYTE PTR [rsi],al
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
  600e38:	f8                   	clc    
  600e39:	04 40                	add    al,0x40
  600e3b:	00 00                	add    BYTE PTR [rax],al
  600e3d:	00 00                	add    BYTE PTR [rax],al
  600e3f:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 600e45 <_DYNAMIC+0x25>
  600e45:	00 00                	add    BYTE PTR [rax],al
  600e47:	00 44 07 40          	add    BYTE PTR [rdi+rax*1+0x40],al
  600e4b:	00 00                	add    BYTE PTR [rax],al
  600e4d:	00 00                	add    BYTE PTR [rax],al
  600e4f:	00 19                	add    BYTE PTR [rcx],bl
  600e51:	00 00                	add    BYTE PTR [rax],al
  600e53:	00 00                	add    BYTE PTR [rax],al
  600e55:	00 00                	add    BYTE PTR [rax],al
  600e57:	00 10                	add    BYTE PTR [rax],dl
  600e59:	0e                   	(bad)  
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
  600ea7:	00 a0 03 40 00 00    	add    BYTE PTR [rax+0x4003],ah
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
  600ec8:	60                   	(bad)  
  600ec9:	00 00                	add    BYTE PTR [rax],al
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
  600f08:	48 00 00             	rex.W add BYTE PTR [rax],al
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
  600f27:	00 b0 04 40 00 00    	add    BYTE PTR [rax+0x4004],dh
  600f2d:	00 00                	add    BYTE PTR [rax],al
  600f2f:	00 07                	add    BYTE PTR [rdi],al
  600f31:	00 00                	add    BYTE PTR [rax],al
  600f33:	00 00                	add    BYTE PTR [rax],al
  600f35:	00 00                	add    BYTE PTR [rax],al
  600f37:	00 38                	add    BYTE PTR [rax],bh
  600f39:	04 40                	add    al,0x40
  600f3b:	00 00                	add    BYTE PTR [rax],al
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
  600f67:	00 18                	add    BYTE PTR [rax],bl
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
  600f87:	00 00                	add    BYTE PTR [rax],al
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
  601017:	00 26                	add    BYTE PTR [rsi],ah
  601019:	05 40 00 00 00       	add    eax,0x40
  60101e:	00 00                	add    BYTE PTR [rax],al
  601020:	36 05 40 00 00 00    	ss add eax,0x40
  601026:	00 00                	add    BYTE PTR [rax],al
  601028:	46 05 40 00 00 00    	rex.RX add eax,0x40
	...

Disassembly of section .data:

0000000000601030 <__data_start>:
	...

0000000000601038 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601040 <stdout@@GLIBC_2.2.5>:
	...

0000000000601050 <stdin@@GLIBC_2.2.5>:
	...

0000000000601060 <stderr@@GLIBC_2.2.5>:
	...

0000000000601068 <completed.7697>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0x400480>
   a:	74 75                	je     81 <_init-0x400477>
   c:	20 37                	and    BYTE PTR [rdi],dh
   e:	2e 34 2e             	cs xor al,0x2e
  11:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627548 <_end+0x750264d8>
  17:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  18:	74 75                	je     8f <_init-0x400469>
  1a:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1d:	38 2e                	cmp    BYTE PTR [rsi],ch
  1f:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  22:	31 29                	xor    DWORD PTR [rcx],ebp
  24:	20 37                	and    BYTE PTR [rdi],dh
  26:	2e 34 2e             	cs xor al,0x2e
  29:	30 00                	xor    BYTE PTR [rax],al
