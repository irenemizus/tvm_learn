
export.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 bd 3f 00 00 	mov    0x3fbd(%rip),%rax        # 4fc8 <__gmon_start__@Base>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <memset@plt-0x10>:
    1020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <memset@plt>:
    1030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5000 <memset@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 4fd8 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <deregister_tm_clones>:
    1050:	48 8d 3d b9 3f 00 00 	lea    0x3fb9(%rip),%rdi        # 5010 <completed.0>
    1057:	48 8d 05 b2 3f 00 00 	lea    0x3fb2(%rip),%rax        # 5010 <completed.0>
    105e:	48 39 f8             	cmp    %rdi,%rax
    1061:	74 15                	je     1078 <deregister_tm_clones+0x28>
    1063:	48 8b 05 3e 3f 00 00 	mov    0x3f3e(%rip),%rax        # 4fa8 <_ITM_deregisterTMCloneTable@Base>
    106a:	48 85 c0             	test   %rax,%rax
    106d:	74 09                	je     1078 <deregister_tm_clones+0x28>
    106f:	ff e0                	jmp    *%rax
    1071:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1078:	c3                   	ret
    1079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d 89 3f 00 00 	lea    0x3f89(%rip),%rdi        # 5010 <completed.0>
    1087:	48 8d 35 82 3f 00 00 	lea    0x3f82(%rip),%rsi        # 5010 <completed.0>
    108e:	48 29 fe             	sub    %rdi,%rsi
    1091:	48 89 f0             	mov    %rsi,%rax
    1094:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1098:	48 c1 f8 03          	sar    $0x3,%rax
    109c:	48 01 c6             	add    %rax,%rsi
    109f:	48 d1 fe             	sar    %rsi
    10a2:	74 14                	je     10b8 <register_tm_clones+0x38>
    10a4:	48 8b 05 25 3f 00 00 	mov    0x3f25(%rip),%rax        # 4fd0 <_ITM_registerTMCloneTable@Base>
    10ab:	48 85 c0             	test   %rax,%rax
    10ae:	74 08                	je     10b8 <register_tm_clones+0x38>
    10b0:	ff e0                	jmp    *%rax
    10b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10b8:	c3                   	ret
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <__do_global_dtors_aux>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	80 3d 45 3f 00 00 00 	cmpb   $0x0,0x3f45(%rip)        # 5010 <completed.0>
    10cb:	75 2b                	jne    10f8 <__do_global_dtors_aux+0x38>
    10cd:	55                   	push   %rbp
    10ce:	48 83 3d 02 3f 00 00 	cmpq   $0x0,0x3f02(%rip)        # 4fd8 <__cxa_finalize@GLIBC_2.2.5>
    10d5:	00 
    10d6:	48 89 e5             	mov    %rsp,%rbp
    10d9:	74 0c                	je     10e7 <__do_global_dtors_aux+0x27>
    10db:	48 8b 3d 26 3f 00 00 	mov    0x3f26(%rip),%rdi        # 5008 <__dso_handle>
    10e2:	e8 59 ff ff ff       	call   1040 <__cxa_finalize@plt>
    10e7:	e8 64 ff ff ff       	call   1050 <deregister_tm_clones>
    10ec:	c6 05 1d 3f 00 00 01 	movb   $0x1,0x3f1d(%rip)        # 5010 <completed.0>
    10f3:	5d                   	pop    %rbp
    10f4:	c3                   	ret
    10f5:	0f 1f 00             	nopl   (%rax)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <frame_dummy>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	e9 77 ff ff ff       	jmp    1080 <register_tm_clones>
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <mmult>:
    1110:	41 57                	push   %r15
    1112:	41 56                	push   %r14
    1114:	53                   	push   %rbx
    1115:	83 fa 03             	cmp    $0x3,%edx
    1118:	0f 85 85 02 00 00    	jne    13a3 <mmult+0x293>
    111e:	48 85 ff             	test   %rdi,%rdi
    1121:	0f 84 8c 02 00 00    	je     13b3 <mmult+0x2a3>
    1127:	48 85 f6             	test   %rsi,%rsi
    112a:	0f 84 93 02 00 00    	je     13c3 <mmult+0x2b3>
    1130:	8b 06                	mov    (%rsi),%eax
    1132:	83 f8 0d             	cmp    $0xd,%eax
    1135:	0f 87 2d 02 00 00    	ja     1368 <mmult+0x258>
    113b:	b9 98 20 00 00       	mov    $0x2098,%ecx
    1140:	0f a3 c1             	bt     %eax,%ecx
    1143:	0f 83 1f 02 00 00    	jae    1368 <mmult+0x258>
    1149:	8b 46 04             	mov    0x4(%rsi),%eax
    114c:	83 f8 0d             	cmp    $0xd,%eax
    114f:	0f 87 23 02 00 00    	ja     1378 <mmult+0x268>
    1155:	b9 98 20 00 00       	mov    $0x2098,%ecx
    115a:	0f a3 c1             	bt     %eax,%ecx
    115d:	0f 83 15 02 00 00    	jae    1378 <mmult+0x268>
    1163:	8b 46 08             	mov    0x8(%rsi),%eax
    1166:	83 f8 0d             	cmp    $0xd,%eax
    1169:	0f 87 19 02 00 00    	ja     1388 <mmult+0x278>
    116f:	b9 98 20 00 00       	mov    $0x2098,%ecx
    1174:	0f a3 c1             	bt     %eax,%ecx
    1177:	0f 83 0b 02 00 00    	jae    1388 <mmult+0x278>
    117d:	48 8b 07             	mov    (%rdi),%rax
    1180:	48 85 c0             	test   %rax,%rax
    1183:	0f 84 4a 02 00 00    	je     13d3 <mmult+0x2c3>
    1189:	83 78 10 02          	cmpl   $0x2,0x10(%rax)
    118d:	0f 85 50 02 00 00    	jne    13e3 <mmult+0x2d3>
    1193:	4c 8b 5f 08          	mov    0x8(%rdi),%r11
    1197:	4d 85 db             	test   %r11,%r11
    119a:	0f 84 53 02 00 00    	je     13f3 <mmult+0x2e3>
    11a0:	41 83 7b 10 02       	cmpl   $0x2,0x10(%r11)
    11a5:	0f 85 58 02 00 00    	jne    1403 <mmult+0x2f3>
    11ab:	4c 8b 47 10          	mov    0x10(%rdi),%r8
    11af:	4d 85 c0             	test   %r8,%r8
    11b2:	0f 84 5b 02 00 00    	je     1413 <mmult+0x303>
    11b8:	41 83 78 10 02       	cmpl   $0x2,0x10(%r8)
    11bd:	0f 85 63 02 00 00    	jne    1426 <mmult+0x316>
    11c3:	66 83 78 16 01       	cmpw   $0x1,0x16(%rax)
    11c8:	0f 85 6b 02 00 00    	jne    1439 <mmult+0x329>
    11ce:	80 78 15 20          	cmpb   $0x20,0x15(%rax)
    11d2:	0f 85 61 02 00 00    	jne    1439 <mmult+0x329>
    11d8:	80 78 14 02          	cmpb   $0x2,0x14(%rax)
    11dc:	0f 85 57 02 00 00    	jne    1439 <mmult+0x329>
    11e2:	48 8b 48 18          	mov    0x18(%rax),%rcx
    11e6:	81 39 00 04 00 00    	cmpl   $0x400,(%rcx)
    11ec:	0f 85 5a 02 00 00    	jne    144c <mmult+0x33c>
    11f2:	81 79 08 00 10 00 00 	cmpl   $0x1000,0x8(%rcx)
    11f9:	0f 85 60 02 00 00    	jne    145f <mmult+0x34f>
    11ff:	48 8b 58 20          	mov    0x20(%rax),%rbx
    1203:	8b 78 0c             	mov    0xc(%rax),%edi
    1206:	48 8b 10             	mov    (%rax),%rdx
    1209:	49 8b 33             	mov    (%r11),%rsi
    120c:	4d 8b 73 18          	mov    0x18(%r11),%r14
    1210:	4d 8b 7b 20          	mov    0x20(%r11),%r15
    1214:	49 8b 08             	mov    (%r8),%rcx
    1217:	4d 8b 50 18          	mov    0x18(%r8),%r10
    121b:	4d 8b 48 20          	mov    0x20(%r8),%r9
    121f:	48 85 db             	test   %rbx,%rbx
    1222:	74 16                	je     123a <mmult+0x12a>
    1224:	81 3b 00 10 00 00    	cmpl   $0x1000,(%rbx)
    122a:	0f 85 42 02 00 00    	jne    1472 <mmult+0x362>
    1230:	83 7b 08 01          	cmpl   $0x1,0x8(%rbx)
    1234:	0f 85 38 02 00 00    	jne    1472 <mmult+0x362>
    123a:	48 83 78 28 00       	cmpq   $0x0,0x28(%rax)
    123f:	0f 85 40 02 00 00    	jne    1485 <mmult+0x375>
    1245:	83 78 08 01          	cmpl   $0x1,0x8(%rax)
    1249:	0f 85 49 02 00 00    	jne    1498 <mmult+0x388>
    124f:	48 85 d2             	test   %rdx,%rdx
    1252:	0f 84 53 02 00 00    	je     14ab <mmult+0x39b>
    1258:	66 41 83 7b 16 01    	cmpw   $0x1,0x16(%r11)
    125e:	0f 85 5a 02 00 00    	jne    14be <mmult+0x3ae>
    1264:	41 80 7b 15 20       	cmpb   $0x20,0x15(%r11)
    1269:	0f 85 4f 02 00 00    	jne    14be <mmult+0x3ae>
    126f:	41 80 7b 14 02       	cmpb   $0x2,0x14(%r11)
    1274:	0f 85 44 02 00 00    	jne    14be <mmult+0x3ae>
    127a:	41 81 3e 00 04 00 00 	cmpl   $0x400,(%r14)
    1281:	0f 85 4a 02 00 00    	jne    14d1 <mmult+0x3c1>
    1287:	41 81 7e 08 80 00 00 	cmpl   $0x80,0x8(%r14)
    128e:	00 
    128f:	0f 85 4f 02 00 00    	jne    14e4 <mmult+0x3d4>
    1295:	4d 85 ff             	test   %r15,%r15
    1298:	74 18                	je     12b2 <mmult+0x1a2>
    129a:	41 81 3f 80 00 00 00 	cmpl   $0x80,(%r15)
    12a1:	0f 85 50 02 00 00    	jne    14f7 <mmult+0x3e7>
    12a7:	41 83 7f 08 01       	cmpl   $0x1,0x8(%r15)
    12ac:	0f 85 45 02 00 00    	jne    14f7 <mmult+0x3e7>
    12b2:	49 83 7b 28 00       	cmpq   $0x0,0x28(%r11)
    12b7:	0f 85 4d 02 00 00    	jne    150a <mmult+0x3fa>
    12bd:	41 83 7b 08 01       	cmpl   $0x1,0x8(%r11)
    12c2:	0f 85 55 02 00 00    	jne    151d <mmult+0x40d>
    12c8:	41 3b 7b 0c          	cmp    0xc(%r11),%edi
    12cc:	0f 85 5e 02 00 00    	jne    1530 <mmult+0x420>
    12d2:	48 85 f6             	test   %rsi,%rsi
    12d5:	0f 84 68 02 00 00    	je     1543 <mmult+0x433>
    12db:	66 41 83 78 16 01    	cmpw   $0x1,0x16(%r8)
    12e1:	0f 85 6f 02 00 00    	jne    1556 <mmult+0x446>
    12e7:	41 80 78 15 20       	cmpb   $0x20,0x15(%r8)
    12ec:	0f 85 64 02 00 00    	jne    1556 <mmult+0x446>
    12f2:	41 80 78 14 02       	cmpb   $0x2,0x14(%r8)
    12f7:	0f 85 59 02 00 00    	jne    1556 <mmult+0x446>
    12fd:	41 81 3a 00 10 00 00 	cmpl   $0x1000,(%r10)
    1304:	0f 85 5f 02 00 00    	jne    1569 <mmult+0x459>
    130a:	41 81 7a 08 80 00 00 	cmpl   $0x80,0x8(%r10)
    1311:	00 
    1312:	0f 85 64 02 00 00    	jne    157c <mmult+0x46c>
    1318:	4d 85 c9             	test   %r9,%r9
    131b:	74 18                	je     1335 <mmult+0x225>
    131d:	41 81 39 80 00 00 00 	cmpl   $0x80,(%r9)
    1324:	0f 85 65 02 00 00    	jne    158f <mmult+0x47f>
    132a:	41 83 79 08 01       	cmpl   $0x1,0x8(%r9)
    132f:	0f 85 5a 02 00 00    	jne    158f <mmult+0x47f>
    1335:	49 83 78 28 00       	cmpq   $0x0,0x28(%r8)
    133a:	0f 85 62 02 00 00    	jne    15a2 <mmult+0x492>
    1340:	41 83 78 08 01       	cmpl   $0x1,0x8(%r8)
    1345:	0f 85 6a 02 00 00    	jne    15b5 <mmult+0x4a5>
    134b:	41 3b 78 0c          	cmp    0xc(%r8),%edi
    134f:	0f 85 73 02 00 00    	jne    15c8 <mmult+0x4b8>
    1355:	48 85 c9             	test   %rcx,%rcx
    1358:	0f 84 7d 02 00 00    	je     15db <mmult+0x4cb>
    135e:	5b                   	pop    %rbx
    135f:	41 5e                	pop    %r14
    1361:	41 5f                	pop    %r15
    1363:	e9 88 02 00 00       	jmp    15f0 <mmult_compute_>
    1368:	48 8b 05 71 3c 00 00 	mov    0x3c71(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    136f:	48 8d 3d 58 0d 00 00 	lea    0xd58(%rip),%rdi        # 20ce <_fini+0x242>
    1376:	eb 1e                	jmp    1396 <mmult+0x286>
    1378:	48 8b 05 61 3c 00 00 	mov    0x3c61(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    137f:	48 8d 3d b7 0d 00 00 	lea    0xdb7(%rip),%rdi        # 213d <_fini+0x2b1>
    1386:	eb 0e                	jmp    1396 <mmult+0x286>
    1388:	48 8b 05 51 3c 00 00 	mov    0x3c51(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    138f:	48 8d 3d 12 0e 00 00 	lea    0xe12(%rip),%rdi        # 21a8 <_fini+0x31c>
    1396:	ff 10                	call   *(%rax)
    1398:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    139d:	5b                   	pop    %rbx
    139e:	41 5e                	pop    %r14
    13a0:	41 5f                	pop    %r15
    13a2:	c3                   	ret
    13a3:	48 8b 05 36 3c 00 00 	mov    0x3c36(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    13aa:	48 8d 3d 4f 0c 00 00 	lea    0xc4f(%rip),%rdi        # 2000 <_fini+0x174>
    13b1:	eb e3                	jmp    1396 <mmult+0x286>
    13b3:	48 8b 05 26 3c 00 00 	mov    0x3c26(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    13ba:	48 8d 3d 77 0c 00 00 	lea    0xc77(%rip),%rdi        # 2038 <_fini+0x1ac>
    13c1:	eb d3                	jmp    1396 <mmult+0x286>
    13c3:	48 8b 05 16 3c 00 00 	mov    0x3c16(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    13ca:	48 8d 3d b1 0c 00 00 	lea    0xcb1(%rip),%rdi        # 2082 <_fini+0x1f6>
    13d1:	eb c3                	jmp    1396 <mmult+0x286>
    13d3:	48 8b 05 06 3c 00 00 	mov    0x3c06(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    13da:	48 8d 3d 3e 0e 00 00 	lea    0xe3e(%rip),%rdi        # 221f <_fini+0x393>
    13e1:	eb b3                	jmp    1396 <mmult+0x286>
    13e3:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    13ea:	48 8d 3d 88 0e 00 00 	lea    0xe88(%rip),%rdi        # 2279 <_fini+0x3ed>
    13f1:	eb a3                	jmp    1396 <mmult+0x286>
    13f3:	48 8b 05 e6 3b 00 00 	mov    0x3be6(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    13fa:	48 8d 3d d4 0e 00 00 	lea    0xed4(%rip),%rdi        # 22d5 <_fini+0x449>
    1401:	eb 93                	jmp    1396 <mmult+0x286>
    1403:	48 8b 05 d6 3b 00 00 	mov    0x3bd6(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    140a:	48 8d 3d 1c 0f 00 00 	lea    0xf1c(%rip),%rdi        # 232d <_fini+0x4a1>
    1411:	eb 83                	jmp    1396 <mmult+0x286>
    1413:	48 8b 05 c6 3b 00 00 	mov    0x3bc6(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    141a:	48 8d 3d 66 0f 00 00 	lea    0xf66(%rip),%rdi        # 2387 <_fini+0x4fb>
    1421:	e9 70 ff ff ff       	jmp    1396 <mmult+0x286>
    1426:	48 8b 05 b3 3b 00 00 	mov    0x3bb3(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    142d:	48 8d 3d b1 0f 00 00 	lea    0xfb1(%rip),%rdi        # 23e5 <_fini+0x559>
    1434:	e9 5d ff ff ff       	jmp    1396 <mmult+0x286>
    1439:	48 8b 05 a0 3b 00 00 	mov    0x3ba0(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1440:	48 8d 3d fe 0f 00 00 	lea    0xffe(%rip),%rdi        # 2445 <_fini+0x5b9>
    1447:	e9 4a ff ff ff       	jmp    1396 <mmult+0x286>
    144c:	48 8b 05 8d 3b 00 00 	mov    0x3b8d(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1453:	48 8d 3d c3 10 00 00 	lea    0x10c3(%rip),%rdi        # 251d <_fini+0x691>
    145a:	e9 37 ff ff ff       	jmp    1396 <mmult+0x286>
    145f:	48 8b 05 7a 3b 00 00 	mov    0x3b7a(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1466:	48 8d 3d 4e 11 00 00 	lea    0x114e(%rip),%rdi        # 25bb <_fini+0x72f>
    146d:	e9 24 ff ff ff       	jmp    1396 <mmult+0x286>
    1472:	48 8b 05 67 3b 00 00 	mov    0x3b67(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1479:	48 8d 3d d9 11 00 00 	lea    0x11d9(%rip),%rdi        # 2659 <_fini+0x7cd>
    1480:	e9 11 ff ff ff       	jmp    1396 <mmult+0x286>
    1485:	48 8b 05 54 3b 00 00 	mov    0x3b54(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    148c:	48 8d 3d 5e 12 00 00 	lea    0x125e(%rip),%rdi        # 26f1 <_fini+0x865>
    1493:	e9 fe fe ff ff       	jmp    1396 <mmult+0x286>
    1498:	48 8b 05 41 3b 00 00 	mov    0x3b41(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    149f:	48 8d 3d fe 12 00 00 	lea    0x12fe(%rip),%rdi        # 27a4 <_fini+0x918>
    14a6:	e9 eb fe ff ff       	jmp    1396 <mmult+0x286>
    14ab:	48 8b 05 2e 3b 00 00 	mov    0x3b2e(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    14b2:	48 8d 3d 8a 13 00 00 	lea    0x138a(%rip),%rdi        # 2843 <_fini+0x9b7>
    14b9:	e9 d8 fe ff ff       	jmp    1396 <mmult+0x286>
    14be:	48 8b 05 1b 3b 00 00 	mov    0x3b1b(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    14c5:	48 8d 3d cc 13 00 00 	lea    0x13cc(%rip),%rdi        # 2898 <_fini+0xa0c>
    14cc:	e9 c5 fe ff ff       	jmp    1396 <mmult+0x286>
    14d1:	48 8b 05 08 3b 00 00 	mov    0x3b08(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    14d8:	48 8d 3d 8d 14 00 00 	lea    0x148d(%rip),%rdi        # 296c <_fini+0xae0>
    14df:	e9 b2 fe ff ff       	jmp    1396 <mmult+0x286>
    14e4:	48 8b 05 f5 3a 00 00 	mov    0x3af5(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    14eb:	48 8d 3d 15 15 00 00 	lea    0x1515(%rip),%rdi        # 2a07 <_fini+0xb7b>
    14f2:	e9 9f fe ff ff       	jmp    1396 <mmult+0x286>
    14f7:	48 8b 05 e2 3a 00 00 	mov    0x3ae2(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    14fe:	48 8d 3d 9b 15 00 00 	lea    0x159b(%rip),%rdi        # 2aa0 <_fini+0xc14>
    1505:	e9 8c fe ff ff       	jmp    1396 <mmult+0x286>
    150a:	48 8b 05 cf 3a 00 00 	mov    0x3acf(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1511:	48 8d 3d 1c 16 00 00 	lea    0x161c(%rip),%rdi        # 2b34 <_fini+0xca8>
    1518:	e9 79 fe ff ff       	jmp    1396 <mmult+0x286>
    151d:	48 8b 05 bc 3a 00 00 	mov    0x3abc(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1524:	48 8d 3d b9 16 00 00 	lea    0x16b9(%rip),%rdi        # 2be4 <_fini+0xd58>
    152b:	e9 66 fe ff ff       	jmp    1396 <mmult+0x286>
    1530:	48 8b 05 a9 3a 00 00 	mov    0x3aa9(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1537:	48 8d 3d 42 17 00 00 	lea    0x1742(%rip),%rdi        # 2c80 <_fini+0xdf4>
    153e:	e9 53 fe ff ff       	jmp    1396 <mmult+0x286>
    1543:	48 8b 05 96 3a 00 00 	mov    0x3a96(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    154a:	48 8d 3d d1 17 00 00 	lea    0x17d1(%rip),%rdi        # 2d22 <_fini+0xe96>
    1551:	e9 40 fe ff ff       	jmp    1396 <mmult+0x286>
    1556:	48 8b 05 83 3a 00 00 	mov    0x3a83(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    155d:	48 8d 3d 11 18 00 00 	lea    0x1811(%rip),%rdi        # 2d75 <_fini+0xee9>
    1564:	e9 2d fe ff ff       	jmp    1396 <mmult+0x286>
    1569:	48 8b 05 70 3a 00 00 	mov    0x3a70(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1570:	48 8d 3d de 18 00 00 	lea    0x18de(%rip),%rdi        # 2e55 <_fini+0xfc9>
    1577:	e9 1a fe ff ff       	jmp    1396 <mmult+0x286>
    157c:	48 8b 05 5d 3a 00 00 	mov    0x3a5d(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1583:	48 8d 3d 6f 19 00 00 	lea    0x196f(%rip),%rdi        # 2ef9 <_fini+0x106d>
    158a:	e9 07 fe ff ff       	jmp    1396 <mmult+0x286>
    158f:	48 8b 05 4a 3a 00 00 	mov    0x3a4a(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    1596:	48 8d 3d fe 19 00 00 	lea    0x19fe(%rip),%rdi        # 2f9b <_fini+0x110f>
    159d:	e9 f4 fd ff ff       	jmp    1396 <mmult+0x286>
    15a2:	48 8b 05 37 3a 00 00 	mov    0x3a37(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    15a9:	48 8d 3d 88 1a 00 00 	lea    0x1a88(%rip),%rdi        # 3038 <_fini+0x11ac>
    15b0:	e9 e1 fd ff ff       	jmp    1396 <mmult+0x286>
    15b5:	48 8b 05 24 3a 00 00 	mov    0x3a24(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    15bc:	48 8d 3d 2e 1b 00 00 	lea    0x1b2e(%rip),%rdi        # 30f1 <_fini+0x1265>
    15c3:	e9 ce fd ff ff       	jmp    1396 <mmult+0x286>
    15c8:	48 8b 05 11 3a 00 00 	mov    0x3a11(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    15cf:	48 8d 3d c0 1b 00 00 	lea    0x1bc0(%rip),%rdi        # 3196 <_fini+0x130a>
    15d6:	e9 bb fd ff ff       	jmp    1396 <mmult+0x286>
    15db:	48 8b 05 fe 39 00 00 	mov    0x39fe(%rip),%rax        # 4fe0 <__TVMAPISetLastError@@Base-0x38>
    15e2:	48 8d 3d 58 1c 00 00 	lea    0x1c58(%rip),%rdi        # 3241 <_fini+0x13b5>
    15e9:	e9 a8 fd ff ff       	jmp    1396 <mmult+0x286>
    15ee:	66 90                	xchg   %ax,%ax

00000000000015f0 <mmult_compute_>:
    15f0:	55                   	push   %rbp
    15f1:	41 57                	push   %r15
    15f3:	41 56                	push   %r14
    15f5:	41 54                	push   %r12
    15f7:	53                   	push   %rbx
    15f8:	48 83 ec 30          	sub    $0x30,%rsp
    15fc:	49 89 ce             	mov    %rcx,%r14
    15ff:	49 89 d7             	mov    %rdx,%r15
    1602:	49 89 f4             	mov    %rsi,%r12
    1605:	89 fd                	mov    %edi,%ebp
    1607:	48 8b 05 a2 39 00 00 	mov    0x39a2(%rip),%rax        # 4fb0 <__TVMBackendAllocWorkspace@@Base-0x78>
    160e:	ba 00 00 08 00       	mov    $0x80000,%edx
    1613:	bf 01 00 00 00       	mov    $0x1,%edi
    1618:	89 ee                	mov    %ebp,%esi
    161a:	b9 02 00 00 00       	mov    $0x2,%ecx
    161f:	41 b8 20 00 00 00    	mov    $0x20,%r8d
    1625:	ff 10                	call   *(%rax)
    1627:	48 89 c3             	mov    %rax,%rbx
    162a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    162f:	48 85 db             	test   %rbx,%rbx
    1632:	75 0d                	jne    1641 <mmult_compute_+0x51>
    1634:	48 83 c4 30          	add    $0x30,%rsp
    1638:	5b                   	pop    %rbx
    1639:	41 5c                	pop    %r12
    163b:	41 5e                	pop    %r14
    163d:	41 5f                	pop    %r15
    163f:	5d                   	pop    %rbp
    1640:	c3                   	ret
    1641:	48 89 1c 24          	mov    %rbx,(%rsp)
    1645:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    164a:	4c 8b 25 67 39 00 00 	mov    0x3967(%rip),%r12        # 4fb8 <__TVMBackendParallelLaunch@@Base-0x68>
    1651:	48 8d 3d 58 00 00 00 	lea    0x58(%rip),%rdi        # 16b0 <mmult_compute_+0xc0>
    1658:	48 89 e6             	mov    %rsp,%rsi
    165b:	31 d2                	xor    %edx,%edx
    165d:	41 ff 14 24          	call   *(%r12)
    1661:	85 c0                	test   %eax,%eax
    1663:	75 cf                	jne    1634 <mmult_compute_+0x44>
    1665:	89 6c 24 10          	mov    %ebp,0x10(%rsp)
    1669:	4c 89 7c 24 18       	mov    %r15,0x18(%rsp)
    166e:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    1673:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
    1678:	48 8d 3d 21 01 00 00 	lea    0x121(%rip),%rdi        # 17a0 <mmult_compute_+0x1b0>
    167f:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    1684:	31 d2                	xor    %edx,%edx
    1686:	41 ff 14 24          	call   *(%r12)
    168a:	85 c0                	test   %eax,%eax
    168c:	75 a6                	jne    1634 <mmult_compute_+0x44>
    168e:	48 8b 05 2b 39 00 00 	mov    0x392b(%rip),%rax        # 4fc0 <__TVMBackendFreeWorkspace@@Base-0x70>
    1695:	bf 01 00 00 00       	mov    $0x1,%edi
    169a:	89 ee                	mov    %ebp,%esi
    169c:	48 89 da             	mov    %rbx,%rdx
    169f:	ff 10                	call   *(%rax)
    16a1:	f7 d8                	neg    %eax
    16a3:	19 c0                	sbb    %eax,%eax
    16a5:	eb 8d                	jmp    1634 <mmult_compute_+0x44>
    16a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    16ae:	00 00 
    16b0:	48 89 d1             	mov    %rdx,%rcx
    16b3:	8b 76 08             	mov    0x8(%rsi),%esi
    16b6:	8d 46 07             	lea    0x7(%rsi),%eax
    16b9:	99                   	cltd
    16ba:	f7 fe                	idiv   %esi
    16bc:	8d 57 01             	lea    0x1(%rdi),%edx
    16bf:	0f af d0             	imul   %eax,%edx
    16c2:	83 fa 08             	cmp    $0x8,%edx
    16c5:	be 08 00 00 00       	mov    $0x8,%esi
    16ca:	0f 4d d6             	cmovge %esi,%edx
    16cd:	0f af c7             	imul   %edi,%eax
    16d0:	83 f8 08             	cmp    $0x8,%eax
    16d3:	0f 4d c6             	cmovge %esi,%eax
    16d6:	39 d0                	cmp    %edx,%eax
    16d8:	0f 8d bf 00 00 00    	jge    179d <mmult_compute_+0x1ad>
    16de:	4c 8b 01             	mov    (%rcx),%r8
    16e1:	4c 8b 49 08          	mov    0x8(%rcx),%r9
    16e5:	4c 63 d8             	movslq %eax,%r11
    16e8:	4c 63 d2             	movslq %edx,%r10
    16eb:	49 83 c0 40          	add    $0x40,%r8
    16ef:	89 c2                	mov    %eax,%edx
    16f1:	c1 e2 0a             	shl    $0xa,%edx
    16f4:	49 81 c1 00 02 00 00 	add    $0x200,%r9
    16fb:	c1 e0 04             	shl    $0x4,%eax
    16fe:	66 90                	xchg   %ax,%ax
    1700:	48 63 ca             	movslq %edx,%rcx
    1703:	48 c1 e1 06          	shl    $0x6,%rcx
    1707:	4c 01 c1             	add    %r8,%rcx
    170a:	48 63 f0             	movslq %eax,%rsi
    170d:	49 8d 3c b1          	lea    (%r9,%rsi,4),%rdi
    1711:	31 f6                	xor    %esi,%esi
    1713:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    171a:	00 00 00 
    171d:	0f 1f 00             	nopl   (%rax)
    1720:	0f 28 84 f7 00 fe ff 	movaps -0x200(%rdi,%rsi,8),%xmm0
    1727:	ff 
    1728:	0f 28 8c f7 10 fe ff 	movaps -0x1f0(%rdi,%rsi,8),%xmm1
    172f:	ff 
    1730:	0f 28 94 f7 20 fe ff 	movaps -0x1e0(%rdi,%rsi,8),%xmm2
    1737:	ff 
    1738:	0f 28 9c f7 30 fe ff 	movaps -0x1d0(%rdi,%rsi,8),%xmm3
    173f:	ff 
    1740:	0f 11 5c 31 f0       	movups %xmm3,-0x10(%rcx,%rsi,1)
    1745:	0f 11 44 31 c0       	movups %xmm0,-0x40(%rcx,%rsi,1)
    174a:	0f 11 4c 31 d0       	movups %xmm1,-0x30(%rcx,%rsi,1)
    174f:	0f 11 54 31 e0       	movups %xmm2,-0x20(%rcx,%rsi,1)
    1754:	0f 28 04 f7          	movaps (%rdi,%rsi,8),%xmm0
    1758:	0f 28 4c f7 10       	movaps 0x10(%rdi,%rsi,8),%xmm1
    175d:	0f 28 54 f7 20       	movaps 0x20(%rdi,%rsi,8),%xmm2
    1762:	0f 28 5c f7 30       	movaps 0x30(%rdi,%rsi,8),%xmm3
    1767:	0f 11 54 31 20       	movups %xmm2,0x20(%rcx,%rsi,1)
    176c:	0f 11 5c 31 30       	movups %xmm3,0x30(%rcx,%rsi,1)
    1771:	0f 11 04 31          	movups %xmm0,(%rcx,%rsi,1)
    1775:	0f 11 4c 31 10       	movups %xmm1,0x10(%rcx,%rsi,1)
    177a:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
    177e:	48 81 fe 00 00 01 00 	cmp    $0x10000,%rsi
    1785:	75 99                	jne    1720 <mmult_compute_+0x130>
    1787:	49 83 c3 01          	add    $0x1,%r11
    178b:	81 c2 00 04 00 00    	add    $0x400,%edx
    1791:	83 c0 10             	add    $0x10,%eax
    1794:	4d 39 d3             	cmp    %r10,%r11
    1797:	0f 85 63 ff ff ff    	jne    1700 <mmult_compute_+0x110>
    179d:	31 c0                	xor    %eax,%eax
    179f:	c3                   	ret
    17a0:	55                   	push   %rbp
    17a1:	41 57                	push   %r15
    17a3:	41 56                	push   %r14
    17a5:	41 55                	push   %r13
    17a7:	41 54                	push   %r12
    17a9:	53                   	push   %rbx
    17aa:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
    17b1:	48 89 d1             	mov    %rdx,%rcx
    17b4:	8b 76 08             	mov    0x8(%rsi),%esi
    17b7:	8d 86 ff 00 00 00    	lea    0xff(%rsi),%eax
    17bd:	99                   	cltd
    17be:	f7 fe                	idiv   %esi
    17c0:	41 89 c4             	mov    %eax,%r12d
    17c3:	8d 47 01             	lea    0x1(%rdi),%eax
    17c6:	41 0f af c4          	imul   %r12d,%eax
    17ca:	3d 00 01 00 00       	cmp    $0x100,%eax
    17cf:	ba 00 01 00 00       	mov    $0x100,%edx
    17d4:	0f 4d c2             	cmovge %edx,%eax
    17d7:	44 0f af e7          	imul   %edi,%r12d
    17db:	41 81 fc 00 01 00 00 	cmp    $0x100,%r12d
    17e2:	44 0f 4d e2          	cmovge %edx,%r12d
    17e6:	41 39 c4             	cmp    %eax,%r12d
    17e9:	0f 8d ba 04 00 00    	jge    1ca9 <mmult_compute_+0x6b9>
    17ef:	44 8b 39             	mov    (%rcx),%r15d
    17f2:	4c 8b 69 08          	mov    0x8(%rcx),%r13
    17f6:	48 8b 59 10          	mov    0x10(%rcx),%rbx
    17fa:	4c 8b 71 18          	mov    0x18(%rcx),%r14
    17fe:	49 63 cc             	movslq %r12d,%rcx
    1801:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1806:	48 98                	cltq
    1808:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    180d:	49 81 c5 00 c0 00 00 	add    $0xc000,%r13
    1814:	44 89 e0             	mov    %r12d,%eax
    1817:	c1 e0 04             	shl    $0x4,%eax
    181a:	89 04 24             	mov    %eax,(%rsp)
    181d:	41 c1 e4 0b          	shl    $0xb,%r12d
    1821:	48 8b 2d 88 37 00 00 	mov    0x3788(%rip),%rbp        # 4fb0 <__TVMBackendAllocWorkspace@@Base-0x78>
    1828:	ba 00 04 00 00       	mov    $0x400,%edx
    182d:	bf 01 00 00 00       	mov    $0x1,%edi
    1832:	44 89 fe             	mov    %r15d,%esi
    1835:	b9 02 00 00 00       	mov    $0x2,%ecx
    183a:	41 b8 20 00 00 00    	mov    $0x20,%r8d
    1840:	ff 55 00             	call   *0x0(%rbp)
    1843:	48 89 c5             	mov    %rax,%rbp
    1846:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    184b:	48 85 ed             	test   %rbp,%rbp
    184e:	0f 84 57 04 00 00    	je     1cab <mmult_compute_+0x6bb>
    1854:	44 89 7c 24 04       	mov    %r15d,0x4(%rsp)
    1859:	48 63 04 24          	movslq (%rsp),%rax
    185d:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
    1862:	48 8d 04 85 00 00 00 	lea    0x0(,%rax,4),%rax
    1869:	00 
    186a:	4c 01 e8             	add    %r13,%rax
    186d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1872:	48 89 e8             	mov    %rbp,%rax
    1875:	48 83 c0 3c          	add    $0x3c,%rax
    1879:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    187e:	4d 89 e5             	mov    %r12,%r13
    1881:	45 31 ff             	xor    %r15d,%r15d
    1884:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    188b:	00 00 00 
    188e:	66 90                	xchg   %ax,%ax
    1890:	ba 00 04 00 00       	mov    $0x400,%edx
    1895:	48 89 ef             	mov    %rbp,%rdi
    1898:	31 f6                	xor    %esi,%esi
    189a:	e8 91 f7 ff ff       	call   1030 <memset@plt>
    189f:	4c 89 f8             	mov    %r15,%rax
    18a2:	48 c1 e0 0a          	shl    $0xa,%rax
    18a6:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    18ab:	31 d2                	xor    %edx,%edx
    18ad:	0f 1f 00             	nopl   (%rax)
    18b0:	48 8d 34 90          	lea    (%rax,%rdx,4),%rsi
    18b4:	48 c1 e6 06          	shl    $0x6,%rsi
    18b8:	0f 28 04 33          	movaps (%rbx,%rsi,1),%xmm0
    18bc:	0f 29 84 24 e0 00 00 	movaps %xmm0,0xe0(%rsp)
    18c3:	00 
    18c4:	0f 28 44 33 10       	movaps 0x10(%rbx,%rsi,1),%xmm0
    18c9:	0f 29 84 24 d0 00 00 	movaps %xmm0,0xd0(%rsp)
    18d0:	00 
    18d1:	0f 28 44 33 20       	movaps 0x20(%rbx,%rsi,1),%xmm0
    18d6:	0f 29 84 24 c0 00 00 	movaps %xmm0,0xc0(%rsp)
    18dd:	00 
    18de:	0f 28 44 33 30       	movaps 0x30(%rbx,%rsi,1),%xmm0
    18e3:	0f 29 84 24 b0 00 00 	movaps %xmm0,0xb0(%rsp)
    18ea:	00 
    18eb:	48 89 f7             	mov    %rsi,%rdi
    18ee:	48 83 cf 40          	or     $0x40,%rdi
    18f2:	0f 10 04 3b          	movups (%rbx,%rdi,1),%xmm0
    18f6:	0f 29 84 24 a0 00 00 	movaps %xmm0,0xa0(%rsp)
    18fd:	00 
    18fe:	0f 10 44 3b 10       	movups 0x10(%rbx,%rdi,1),%xmm0
    1903:	0f 29 84 24 90 00 00 	movaps %xmm0,0x90(%rsp)
    190a:	00 
    190b:	0f 10 44 3b 20       	movups 0x20(%rbx,%rdi,1),%xmm0
    1910:	0f 29 84 24 80 00 00 	movaps %xmm0,0x80(%rsp)
    1917:	00 
    1918:	0f 10 44 3b 30       	movups 0x30(%rbx,%rdi,1),%xmm0
    191d:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
    1922:	48 89 f7             	mov    %rsi,%rdi
    1925:	48 81 cf 80 00 00 00 	or     $0x80,%rdi
    192c:	0f 10 04 3b          	movups (%rbx,%rdi,1),%xmm0
    1930:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
    1935:	0f 10 44 3b 10       	movups 0x10(%rbx,%rdi,1),%xmm0
    193a:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
    193f:	0f 10 44 3b 20       	movups 0x20(%rbx,%rdi,1),%xmm0
    1944:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
    1949:	0f 10 44 3b 30       	movups 0x30(%rbx,%rdi,1),%xmm0
    194e:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
    1953:	48 81 ce c0 00 00 00 	or     $0xc0,%rsi
    195a:	44 0f 10 14 33       	movups (%rbx,%rsi,1),%xmm10
    195f:	44 0f 10 7c 33 10    	movups 0x10(%rbx,%rsi,1),%xmm15
    1965:	0f 10 74 33 20       	movups 0x20(%rbx,%rsi,1),%xmm6
    196a:	0f 10 7c 33 30       	movups 0x30(%rbx,%rsi,1),%xmm7
    196f:	48 89 ee             	mov    %rbp,%rsi
    1972:	31 ff                	xor    %edi,%edi
    1974:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    197b:	00 00 00 
    197e:	66 90                	xchg   %ax,%ax
    1980:	f3 0f 10 84 b9 00 40 	movss  -0xc000(%rcx,%rdi,4),%xmm0
    1987:	ff ff 
    1989:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    198d:	44 0f 28 c0          	movaps %xmm0,%xmm8
    1991:	44 0f 59 84 24 c0 00 	mulps  0xc0(%rsp),%xmm8
    1998:	00 00 
    199a:	44 0f 58 46 20       	addps  0x20(%rsi),%xmm8
    199f:	44 0f 28 d8          	movaps %xmm0,%xmm11
    19a3:	44 0f 59 9c 24 e0 00 	mulps  0xe0(%rsp),%xmm11
    19aa:	00 00 
    19ac:	44 0f 58 1e          	addps  (%rsi),%xmm11
    19b0:	44 0f 28 e0          	movaps %xmm0,%xmm12
    19b4:	44 0f 59 a4 24 d0 00 	mulps  0xd0(%rsp),%xmm12
    19bb:	00 00 
    19bd:	44 0f 58 66 10       	addps  0x10(%rsi),%xmm12
    19c2:	0f 59 84 24 b0 00 00 	mulps  0xb0(%rsp),%xmm0
    19c9:	00 
    19ca:	0f 58 46 30          	addps  0x30(%rsi),%xmm0
    19ce:	f3 44 0f 10 8c b9 00 	movss  -0x8000(%rcx,%rdi,4),%xmm9
    19d5:	80 ff ff 
    19d8:	45 0f c6 c9 00       	shufps $0x0,%xmm9,%xmm9
    19dd:	45 0f 28 e9          	movaps %xmm9,%xmm13
    19e1:	44 0f 59 6c 24 70    	mulps  0x70(%rsp),%xmm13
    19e7:	44 0f 58 e8          	addps  %xmm0,%xmm13
    19eb:	45 0f 28 f1          	movaps %xmm9,%xmm14
    19ef:	44 0f 59 b4 24 90 00 	mulps  0x90(%rsp),%xmm14
    19f6:	00 00 
    19f8:	45 0f 58 f4          	addps  %xmm12,%xmm14
    19fc:	41 0f 28 c9          	movaps %xmm9,%xmm1
    1a00:	0f 59 8c 24 a0 00 00 	mulps  0xa0(%rsp),%xmm1
    1a07:	00 
    1a08:	41 0f 58 cb          	addps  %xmm11,%xmm1
    1a0c:	44 0f 59 8c 24 80 00 	mulps  0x80(%rsp),%xmm9
    1a13:	00 00 
    1a15:	45 0f 58 c8          	addps  %xmm8,%xmm9
    1a19:	f3 0f 10 84 b9 00 c0 	movss  -0x4000(%rcx,%rdi,4),%xmm0
    1a20:	ff ff 
    1a22:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    1a26:	0f 28 d0             	movaps %xmm0,%xmm2
    1a29:	0f 59 54 24 40       	mulps  0x40(%rsp),%xmm2
    1a2e:	41 0f 58 d1          	addps  %xmm9,%xmm2
    1a32:	0f 28 d8             	movaps %xmm0,%xmm3
    1a35:	0f 59 5c 24 60       	mulps  0x60(%rsp),%xmm3
    1a3a:	0f 58 d9             	addps  %xmm1,%xmm3
    1a3d:	0f 28 c8             	movaps %xmm0,%xmm1
    1a40:	0f 59 4c 24 50       	mulps  0x50(%rsp),%xmm1
    1a45:	41 0f 58 ce          	addps  %xmm14,%xmm1
    1a49:	0f 59 44 24 30       	mulps  0x30(%rsp),%xmm0
    1a4e:	41 0f 58 c5          	addps  %xmm13,%xmm0
    1a52:	f3 0f 10 24 b9       	movss  (%rcx,%rdi,4),%xmm4
    1a57:	0f c6 e4 00          	shufps $0x0,%xmm4,%xmm4
    1a5b:	0f 28 ec             	movaps %xmm4,%xmm5
    1a5e:	0f 59 ef             	mulps  %xmm7,%xmm5
    1a61:	0f 58 e8             	addps  %xmm0,%xmm5
    1a64:	0f 28 c4             	movaps %xmm4,%xmm0
    1a67:	41 0f 59 c7          	mulps  %xmm15,%xmm0
    1a6b:	0f 58 c1             	addps  %xmm1,%xmm0
    1a6e:	0f 28 cc             	movaps %xmm4,%xmm1
    1a71:	41 0f 59 ca          	mulps  %xmm10,%xmm1
    1a75:	0f 58 cb             	addps  %xmm3,%xmm1
    1a78:	0f 59 e6             	mulps  %xmm6,%xmm4
    1a7b:	0f 58 e2             	addps  %xmm2,%xmm4
    1a7e:	0f 29 66 20          	movaps %xmm4,0x20(%rsi)
    1a82:	0f 29 0e             	movaps %xmm1,(%rsi)
    1a85:	0f 29 46 10          	movaps %xmm0,0x10(%rsi)
    1a89:	0f 29 6e 30          	movaps %xmm5,0x30(%rsi)
    1a8d:	48 83 c7 01          	add    $0x1,%rdi
    1a91:	48 83 c6 40          	add    $0x40,%rsi
    1a95:	48 83 ff 10          	cmp    $0x10,%rdi
    1a99:	0f 85 e1 fe ff ff    	jne    1980 <mmult_compute_+0x390>
    1a9f:	48 83 c2 01          	add    $0x1,%rdx
    1aa3:	48 81 c1 00 00 01 00 	add    $0x10000,%rcx
    1aaa:	48 81 fa 00 01 00 00 	cmp    $0x100,%rdx
    1ab1:	0f 85 f9 fd ff ff    	jne    18b0 <mmult_compute_+0x2c0>
    1ab7:	48 c7 c0 00 f8 ff ff 	mov    $0xfffffffffffff800,%rax
    1abe:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    1ac3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1aca:	00 00 00 
    1acd:	0f 1f 00             	nopl   (%rax)
    1ad0:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
    1ad4:	81 c2 00 08 00 00    	add    $0x800,%edx
    1ada:	f3 0f 10 41 c4       	movss  -0x3c(%rcx),%xmm0
    1adf:	48 63 d2             	movslq %edx,%rdx
    1ae2:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1ae8:	f3 0f 10 41 c8       	movss  -0x38(%rcx),%xmm0
    1aed:	41 8d 94 05 01 08 00 	lea    0x801(%r13,%rax,1),%edx
    1af4:	00 
    1af5:	48 63 d2             	movslq %edx,%rdx
    1af8:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1afe:	f3 0f 10 41 cc       	movss  -0x34(%rcx),%xmm0
    1b03:	41 8d 94 05 02 08 00 	lea    0x802(%r13,%rax,1),%edx
    1b0a:	00 
    1b0b:	48 63 d2             	movslq %edx,%rdx
    1b0e:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1b14:	f3 0f 10 41 d0       	movss  -0x30(%rcx),%xmm0
    1b19:	41 8d 94 05 03 08 00 	lea    0x803(%r13,%rax,1),%edx
    1b20:	00 
    1b21:	48 63 d2             	movslq %edx,%rdx
    1b24:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1b2a:	f3 0f 10 41 d4       	movss  -0x2c(%rcx),%xmm0
    1b2f:	41 8d 94 05 04 08 00 	lea    0x804(%r13,%rax,1),%edx
    1b36:	00 
    1b37:	48 63 d2             	movslq %edx,%rdx
    1b3a:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1b40:	f3 0f 10 41 d8       	movss  -0x28(%rcx),%xmm0
    1b45:	41 8d 94 05 05 08 00 	lea    0x805(%r13,%rax,1),%edx
    1b4c:	00 
    1b4d:	48 63 d2             	movslq %edx,%rdx
    1b50:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1b56:	f3 0f 10 41 dc       	movss  -0x24(%rcx),%xmm0
    1b5b:	41 8d 94 05 06 08 00 	lea    0x806(%r13,%rax,1),%edx
    1b62:	00 
    1b63:	48 63 d2             	movslq %edx,%rdx
    1b66:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1b6c:	f3 0f 10 41 e0       	movss  -0x20(%rcx),%xmm0
    1b71:	41 8d 94 05 07 08 00 	lea    0x807(%r13,%rax,1),%edx
    1b78:	00 
    1b79:	48 63 d2             	movslq %edx,%rdx
    1b7c:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1b82:	f3 0f 10 41 e4       	movss  -0x1c(%rcx),%xmm0
    1b87:	41 8d 94 05 08 08 00 	lea    0x808(%r13,%rax,1),%edx
    1b8e:	00 
    1b8f:	48 63 d2             	movslq %edx,%rdx
    1b92:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1b98:	f3 0f 10 41 e8       	movss  -0x18(%rcx),%xmm0
    1b9d:	41 8d 94 05 09 08 00 	lea    0x809(%r13,%rax,1),%edx
    1ba4:	00 
    1ba5:	48 63 d2             	movslq %edx,%rdx
    1ba8:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1bae:	f3 0f 10 41 ec       	movss  -0x14(%rcx),%xmm0
    1bb3:	41 8d 94 05 0a 08 00 	lea    0x80a(%r13,%rax,1),%edx
    1bba:	00 
    1bbb:	48 63 d2             	movslq %edx,%rdx
    1bbe:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1bc4:	f3 0f 10 41 f0       	movss  -0x10(%rcx),%xmm0
    1bc9:	41 8d 94 05 0b 08 00 	lea    0x80b(%r13,%rax,1),%edx
    1bd0:	00 
    1bd1:	48 63 d2             	movslq %edx,%rdx
    1bd4:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1bda:	f3 0f 10 41 f4       	movss  -0xc(%rcx),%xmm0
    1bdf:	41 8d 94 05 0c 08 00 	lea    0x80c(%r13,%rax,1),%edx
    1be6:	00 
    1be7:	48 63 d2             	movslq %edx,%rdx
    1bea:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1bf0:	f3 0f 10 41 f8       	movss  -0x8(%rcx),%xmm0
    1bf5:	41 8d 94 05 0d 08 00 	lea    0x80d(%r13,%rax,1),%edx
    1bfc:	00 
    1bfd:	48 63 d2             	movslq %edx,%rdx
    1c00:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1c06:	f3 0f 10 41 fc       	movss  -0x4(%rcx),%xmm0
    1c0b:	41 8d 94 05 0e 08 00 	lea    0x80e(%r13,%rax,1),%edx
    1c12:	00 
    1c13:	48 63 d2             	movslq %edx,%rdx
    1c16:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1c1c:	f3 0f 10 01          	movss  (%rcx),%xmm0
    1c20:	42 8d 14 28          	lea    (%rax,%r13,1),%edx
    1c24:	81 c2 0f 08 00 00    	add    $0x80f,%edx
    1c2a:	48 63 d2             	movslq %edx,%rdx
    1c2d:	f3 41 0f 11 04 96    	movss  %xmm0,(%r14,%rdx,4)
    1c33:	48 83 c1 40          	add    $0x40,%rcx
    1c37:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
    1c3b:	0f 85 8f fe ff ff    	jne    1ad0 <mmult_compute_+0x4e0>
    1c41:	49 83 c7 01          	add    $0x1,%r15
    1c45:	49 83 c5 10          	add    $0x10,%r13
    1c49:	49 83 ff 08          	cmp    $0x8,%r15
    1c4d:	0f 85 3d fc ff ff    	jne    1890 <mmult_compute_+0x2a0>
    1c53:	bf 01 00 00 00       	mov    $0x1,%edi
    1c58:	44 8b 7c 24 04       	mov    0x4(%rsp),%r15d
    1c5d:	44 89 fe             	mov    %r15d,%esi
    1c60:	48 89 ea             	mov    %rbp,%rdx
    1c63:	48 8b 05 56 33 00 00 	mov    0x3356(%rip),%rax        # 4fc0 <__TVMBackendFreeWorkspace@@Base-0x70>
    1c6a:	ff 10                	call   *(%rax)
    1c6c:	85 c0                	test   %eax,%eax
    1c6e:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
    1c73:	48 8b 2d 36 33 00 00 	mov    0x3336(%rip),%rbp        # 4fb0 <__TVMBackendAllocWorkspace@@Base-0x78>
    1c7a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1c7f:	75 2a                	jne    1cab <mmult_compute_+0x6bb>
    1c81:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    1c86:	48 83 c1 01          	add    $0x1,%rcx
    1c8a:	83 04 24 10          	addl   $0x10,(%rsp)
    1c8e:	49 81 c4 00 08 00 00 	add    $0x800,%r12
    1c95:	31 c0                	xor    %eax,%eax
    1c97:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1c9c:	48 3b 4c 24 18       	cmp    0x18(%rsp),%rcx
    1ca1:	0f 85 81 fb ff ff    	jne    1828 <mmult_compute_+0x238>
    1ca7:	eb 02                	jmp    1cab <mmult_compute_+0x6bb>
    1ca9:	31 c0                	xor    %eax,%eax
    1cab:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
    1cb2:	5b                   	pop    %rbx
    1cb3:	41 5c                	pop    %r12
    1cb5:	41 5d                	pop    %r13
    1cb7:	41 5e                	pop    %r14
    1cb9:	41 5f                	pop    %r15
    1cbb:	5d                   	pop    %rbp
    1cbc:	c3                   	ret
    1cbd:	0f 1f 00             	nopl   (%rax)

0000000000001cc0 <__truncsfhf2>:
    1cc0:	66 0f 7e c0          	movd   %xmm0,%eax
    1cc4:	89 c2                	mov    %eax,%edx
    1cc6:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
    1ccc:	8d 8a 00 00 80 c7    	lea    -0x38800000(%rdx),%ecx
    1cd2:	8d b2 00 00 80 b8    	lea    -0x47800000(%rdx),%esi
    1cd8:	39 f1                	cmp    %esi,%ecx
    1cda:	73 29                	jae    1d05 <__truncsfhf2+0x45>
    1cdc:	89 c2                	mov    %eax,%edx
    1cde:	c1 ea 0d             	shr    $0xd,%edx
    1ce1:	0f b7 ca             	movzwl %dx,%ecx
    1ce4:	89 c6                	mov    %eax,%esi
    1ce6:	81 e6 ff 1f 00 00    	and    $0x1fff,%esi
    1cec:	81 fe 01 10 00 00    	cmp    $0x1001,%esi
    1cf2:	72 35                	jb     1d29 <__truncsfhf2+0x69>
    1cf4:	81 c1 01 40 fe ff    	add    $0xfffe4001,%ecx
    1cfa:	c1 e8 10             	shr    $0x10,%eax
    1cfd:	25 00 80 00 00       	and    $0x8000,%eax
    1d02:	09 c8                	or     %ecx,%eax
    1d04:	c3                   	ret
    1d05:	81 fa 01 00 80 7f    	cmp    $0x7f800001,%edx
    1d0b:	72 3f                	jb     1d4c <__truncsfhf2+0x8c>
    1d0d:	89 c1                	mov    %eax,%ecx
    1d0f:	c1 e9 0d             	shr    $0xd,%ecx
    1d12:	81 e1 ff 01 00 00    	and    $0x1ff,%ecx
    1d18:	81 c9 00 7e 00 00    	or     $0x7e00,%ecx
    1d1e:	c1 e8 10             	shr    $0x10,%eax
    1d21:	25 00 80 00 00       	and    $0x8000,%eax
    1d26:	09 c8                	or     %ecx,%eax
    1d28:	c3                   	ret
    1d29:	81 c1 00 40 fe ff    	add    $0xfffe4000,%ecx
    1d2f:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1d35:	75 c3                	jne    1cfa <__truncsfhf2+0x3a>
    1d37:	0f b7 c9             	movzwl %cx,%ecx
    1d3a:	83 e2 01             	and    $0x1,%edx
    1d3d:	01 ca                	add    %ecx,%edx
    1d3f:	89 d1                	mov    %edx,%ecx
    1d41:	c1 e8 10             	shr    $0x10,%eax
    1d44:	25 00 80 00 00       	and    $0x8000,%eax
    1d49:	09 c8                	or     %ecx,%eax
    1d4b:	c3                   	ret
    1d4c:	b9 00 7c 00 00       	mov    $0x7c00,%ecx
    1d51:	81 fa ff ff 7f 47    	cmp    $0x477fffff,%edx
    1d57:	77 a1                	ja     1cfa <__truncsfhf2+0x3a>
    1d59:	31 c9                	xor    %ecx,%ecx
    1d5b:	81 fa 00 00 00 2d    	cmp    $0x2d000000,%edx
    1d61:	72 97                	jb     1cfa <__truncsfhf2+0x3a>
    1d63:	c1 ea 17             	shr    $0x17,%edx
    1d66:	89 c6                	mov    %eax,%esi
    1d68:	81 e6 ff ff 7f 00    	and    $0x7fffff,%esi
    1d6e:	81 ce 00 00 80 00    	or     $0x800000,%esi
    1d74:	8d 4a af             	lea    -0x51(%rdx),%ecx
    1d77:	89 f7                	mov    %esi,%edi
    1d79:	d3 e7                	shl    %cl,%edi
    1d7b:	45 31 c0             	xor    %r8d,%r8d
    1d7e:	85 ff                	test   %edi,%edi
    1d80:	41 0f 95 c0          	setne  %r8b
    1d84:	b1 71                	mov    $0x71,%cl
    1d86:	28 d1                	sub    %dl,%cl
    1d88:	d3 ee                	shr    %cl,%esi
    1d8a:	89 f1                	mov    %esi,%ecx
    1d8c:	c1 e9 0d             	shr    $0xd,%ecx
    1d8f:	81 e6 ff 1f 00 00    	and    $0x1fff,%esi
    1d95:	44 09 c6             	or     %r8d,%esi
    1d98:	81 fe 01 10 00 00    	cmp    $0x1001,%esi
    1d9e:	72 0e                	jb     1dae <__truncsfhf2+0xee>
    1da0:	83 c1 01             	add    $0x1,%ecx
    1da3:	c1 e8 10             	shr    $0x10,%eax
    1da6:	25 00 80 00 00       	and    $0x8000,%eax
    1dab:	09 c8                	or     %ecx,%eax
    1dad:	c3                   	ret
    1dae:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1db4:	0f 85 40 ff ff ff    	jne    1cfa <__truncsfhf2+0x3a>
    1dba:	89 ca                	mov    %ecx,%edx
    1dbc:	83 e2 01             	and    $0x1,%edx
    1dbf:	01 d1                	add    %edx,%ecx
    1dc1:	c1 e8 10             	shr    $0x10,%eax
    1dc4:	25 00 80 00 00       	and    $0x8000,%eax
    1dc9:	09 c8                	or     %ecx,%eax
    1dcb:	c3                   	ret
    1dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001dd0 <__extendhfsf2>:
    1dd0:	89 f8                	mov    %edi,%eax
    1dd2:	25 ff 7f 00 00       	and    $0x7fff,%eax
    1dd7:	8d 88 00 fc ff ff    	lea    -0x400(%rax),%ecx
    1ddd:	0f b7 c9             	movzwl %cx,%ecx
    1de0:	81 f9 ff 77 00 00    	cmp    $0x77ff,%ecx
    1de6:	77 0d                	ja     1df5 <__extendhfsf2+0x25>
    1de8:	c1 e0 0d             	shl    $0xd,%eax
    1deb:	05 00 00 00 38       	add    $0x38000000,%eax
    1df0:	e9 86 00 00 00       	jmp    1e7b <__extendhfsf2+0xab>
    1df5:	3d 00 7c 00 00       	cmp    $0x7c00,%eax
    1dfa:	72 0a                	jb     1e06 <__extendhfsf2+0x36>
    1dfc:	c1 e0 0d             	shl    $0xd,%eax
    1dff:	0d 00 00 80 7f       	or     $0x7f800000,%eax
    1e04:	eb 75                	jmp    1e7b <__extendhfsf2+0xab>
    1e06:	85 c0                	test   %eax,%eax
    1e08:	74 6f                	je     1e79 <__extendhfsf2+0xa9>
    1e0a:	89 c6                	mov    %eax,%esi
    1e0c:	c1 ee 08             	shr    $0x8,%esi
    1e0f:	31 d2                	xor    %edx,%edx
    1e11:	3d 00 01 00 00       	cmp    $0x100,%eax
    1e16:	0f 92 c2             	setb   %dl
    1e19:	0f 42 f0             	cmovb  %eax,%esi
    1e1c:	44 8d 04 d5 18 00 00 	lea    0x18(,%rdx,8),%r8d
    1e23:	00 
    1e24:	89 f1                	mov    %esi,%ecx
    1e26:	c1 e9 04             	shr    $0x4,%ecx
    1e29:	83 fe 10             	cmp    $0x10,%esi
    1e2c:	8d 14 d5 14 00 00 00 	lea    0x14(,%rdx,8),%edx
    1e33:	0f 42 ce             	cmovb  %esi,%ecx
    1e36:	41 0f 42 d0          	cmovb  %r8d,%edx
    1e3a:	89 ce                	mov    %ecx,%esi
    1e3c:	c1 ee 02             	shr    $0x2,%esi
    1e3f:	44 8d 42 fe          	lea    -0x2(%rdx),%r8d
    1e43:	83 f9 04             	cmp    $0x4,%ecx
    1e46:	0f 42 f1             	cmovb  %ecx,%esi
    1e49:	44 0f 42 c2          	cmovb  %edx,%r8d
    1e4d:	89 f1                	mov    %esi,%ecx
    1e4f:	f7 d9                	neg    %ecx
    1e51:	83 fe 02             	cmp    $0x2,%esi
    1e54:	ba fe ff ff ff       	mov    $0xfffffffe,%edx
    1e59:	0f 42 d1             	cmovb  %ecx,%edx
    1e5c:	44 01 c2             	add    %r8d,%edx
    1e5f:	8d 4a f8             	lea    -0x8(%rdx),%ecx
    1e62:	d3 e0                	shl    %cl,%eax
    1e64:	35 00 00 80 00       	xor    $0x800000,%eax
    1e69:	c1 e2 17             	shl    $0x17,%edx
    1e6c:	b9 00 00 00 43       	mov    $0x43000000,%ecx
    1e71:	29 d1                	sub    %edx,%ecx
    1e73:	09 c1                	or     %eax,%ecx
    1e75:	89 c8                	mov    %ecx,%eax
    1e77:	eb 02                	jmp    1e7b <__extendhfsf2+0xab>
    1e79:	31 c0                	xor    %eax,%eax
    1e7b:	81 e7 00 80 00 00    	and    $0x8000,%edi
    1e81:	c1 e7 10             	shl    $0x10,%edi
    1e84:	09 c7                	or     %eax,%edi
    1e86:	66 0f 6e c7          	movd   %edi,%xmm0
    1e8a:	c3                   	ret

Disassembly of section .fini:

0000000000001e8c <_fini>:
    1e8c:	48 83 ec 08          	sub    $0x8,%rsp
    1e90:	48 83 c4 08          	add    $0x8,%rsp
    1e94:	c3                   	ret
