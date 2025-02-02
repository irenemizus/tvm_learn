
export.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 d5 3f 00 00 	mov    0x3fd5(%rip),%rax        # 4fe0 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 4fc0 <__cxa_finalize>
    1036:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001040 <deregister_tm_clones>:
    1040:	48 8d 3d c1 3f 00 00 	lea    0x3fc1(%rip),%rdi        # 5008 <completed.0>
    1047:	48 8d 05 ba 3f 00 00 	lea    0x3fba(%rip),%rax        # 5008 <completed.0>
    104e:	48 39 f8             	cmp    %rdi,%rax
    1051:	74 15                	je     1068 <deregister_tm_clones+0x28>
    1053:	48 8b 05 76 3f 00 00 	mov    0x3f76(%rip),%rax        # 4fd0 <_ITM_deregisterTMCloneTable>
    105a:	48 85 c0             	test   %rax,%rax
    105d:	74 09                	je     1068 <deregister_tm_clones+0x28>
    105f:	ff e0                	jmp    *%rax
    1061:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1068:	c3                   	ret
    1069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001070 <register_tm_clones>:
    1070:	48 8d 3d 91 3f 00 00 	lea    0x3f91(%rip),%rdi        # 5008 <completed.0>
    1077:	48 8d 35 8a 3f 00 00 	lea    0x3f8a(%rip),%rsi        # 5008 <completed.0>
    107e:	48 29 fe             	sub    %rdi,%rsi
    1081:	48 89 f0             	mov    %rsi,%rax
    1084:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1088:	48 c1 f8 03          	sar    $0x3,%rax
    108c:	48 01 c6             	add    %rax,%rsi
    108f:	48 d1 fe             	sar    %rsi
    1092:	74 14                	je     10a8 <register_tm_clones+0x38>
    1094:	48 8b 05 2d 3f 00 00 	mov    0x3f2d(%rip),%rax        # 4fc8 <_ITM_registerTMCloneTable>
    109b:	48 85 c0             	test   %rax,%rax
    109e:	74 08                	je     10a8 <register_tm_clones+0x38>
    10a0:	ff e0                	jmp    *%rax
    10a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <__do_global_dtors_aux>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	80 3d 4d 3f 00 00 00 	cmpb   $0x0,0x3f4d(%rip)        # 5008 <completed.0>
    10bb:	75 2b                	jne    10e8 <__do_global_dtors_aux+0x38>
    10bd:	55                   	push   %rbp
    10be:	48 83 3d fa 3e 00 00 	cmpq   $0x0,0x3efa(%rip)        # 4fc0 <__cxa_finalize>
    10c5:	00 
    10c6:	48 89 e5             	mov    %rsp,%rbp
    10c9:	74 0c                	je     10d7 <__do_global_dtors_aux+0x27>
    10cb:	48 8b 3d 2e 3f 00 00 	mov    0x3f2e(%rip),%rdi        # 5000 <__dso_handle>
    10d2:	e8 59 ff ff ff       	call   1030 <__cxa_finalize@plt>
    10d7:	e8 64 ff ff ff       	call   1040 <deregister_tm_clones>
    10dc:	c6 05 25 3f 00 00 01 	movb   $0x1,0x3f25(%rip)        # 5008 <completed.0>
    10e3:	5d                   	pop    %rbp
    10e4:	c3                   	ret
    10e5:	0f 1f 00             	nopl   (%rax)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <frame_dummy>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	e9 77 ff ff ff       	jmp    1070 <register_tm_clones>
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <mmult>:
    1100:	41 57                	push   %r15
    1102:	41 56                	push   %r14
    1104:	53                   	push   %rbx
    1105:	83 fa 03             	cmp    $0x3,%edx
    1108:	0f 85 84 02 00 00    	jne    1392 <mmult+0x292>
    110e:	48 85 ff             	test   %rdi,%rdi
    1111:	0f 84 8b 02 00 00    	je     13a2 <mmult+0x2a2>
    1117:	48 85 f6             	test   %rsi,%rsi
    111a:	0f 84 92 02 00 00    	je     13b2 <mmult+0x2b2>
    1120:	8b 06                	mov    (%rsi),%eax
    1122:	83 f8 0d             	cmp    $0xd,%eax
    1125:	0f 87 2c 02 00 00    	ja     1357 <mmult+0x257>
    112b:	b9 98 20 00 00       	mov    $0x2098,%ecx
    1130:	0f a3 c1             	bt     %eax,%ecx
    1133:	0f 83 1e 02 00 00    	jae    1357 <mmult+0x257>
    1139:	8b 46 04             	mov    0x4(%rsi),%eax
    113c:	83 f8 0d             	cmp    $0xd,%eax
    113f:	0f 87 22 02 00 00    	ja     1367 <mmult+0x267>
    1145:	b9 98 20 00 00       	mov    $0x2098,%ecx
    114a:	0f a3 c1             	bt     %eax,%ecx
    114d:	0f 83 14 02 00 00    	jae    1367 <mmult+0x267>
    1153:	8b 46 08             	mov    0x8(%rsi),%eax
    1156:	83 f8 0d             	cmp    $0xd,%eax
    1159:	0f 87 18 02 00 00    	ja     1377 <mmult+0x277>
    115f:	b9 98 20 00 00       	mov    $0x2098,%ecx
    1164:	0f a3 c1             	bt     %eax,%ecx
    1167:	0f 83 0a 02 00 00    	jae    1377 <mmult+0x277>
    116d:	48 8b 07             	mov    (%rdi),%rax
    1170:	48 85 c0             	test   %rax,%rax
    1173:	0f 84 49 02 00 00    	je     13c2 <mmult+0x2c2>
    1179:	83 78 10 02          	cmpl   $0x2,0x10(%rax)
    117d:	0f 85 4f 02 00 00    	jne    13d2 <mmult+0x2d2>
    1183:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
    1187:	48 85 c9             	test   %rcx,%rcx
    118a:	0f 84 52 02 00 00    	je     13e2 <mmult+0x2e2>
    1190:	83 79 10 02          	cmpl   $0x2,0x10(%rcx)
    1194:	0f 85 58 02 00 00    	jne    13f2 <mmult+0x2f2>
    119a:	4c 8b 5f 10          	mov    0x10(%rdi),%r11
    119e:	4d 85 db             	test   %r11,%r11
    11a1:	0f 84 5b 02 00 00    	je     1402 <mmult+0x302>
    11a7:	41 83 7b 10 02       	cmpl   $0x2,0x10(%r11)
    11ac:	0f 85 63 02 00 00    	jne    1415 <mmult+0x315>
    11b2:	66 83 78 16 01       	cmpw   $0x1,0x16(%rax)
    11b7:	0f 85 6b 02 00 00    	jne    1428 <mmult+0x328>
    11bd:	80 78 15 20          	cmpb   $0x20,0x15(%rax)
    11c1:	0f 85 61 02 00 00    	jne    1428 <mmult+0x328>
    11c7:	80 78 14 02          	cmpb   $0x2,0x14(%rax)
    11cb:	0f 85 57 02 00 00    	jne    1428 <mmult+0x328>
    11d1:	48 8b 50 18          	mov    0x18(%rax),%rdx
    11d5:	81 3a 00 04 00 00    	cmpl   $0x400,(%rdx)
    11db:	0f 85 5a 02 00 00    	jne    143b <mmult+0x33b>
    11e1:	81 7a 08 00 10 00 00 	cmpl   $0x1000,0x8(%rdx)
    11e8:	0f 85 60 02 00 00    	jne    144e <mmult+0x34e>
    11ee:	48 8b 58 20          	mov    0x20(%rax),%rbx
    11f2:	44 8b 40 0c          	mov    0xc(%rax),%r8d
    11f6:	48 8b 30             	mov    (%rax),%rsi
    11f9:	48 8b 11             	mov    (%rcx),%rdx
    11fc:	4c 8b 71 18          	mov    0x18(%rcx),%r14
    1200:	4c 8b 79 20          	mov    0x20(%rcx),%r15
    1204:	49 8b 3b             	mov    (%r11),%rdi
    1207:	4d 8b 53 18          	mov    0x18(%r11),%r10
    120b:	4d 8b 4b 20          	mov    0x20(%r11),%r9
    120f:	48 85 db             	test   %rbx,%rbx
    1212:	74 16                	je     122a <mmult+0x12a>
    1214:	81 3b 00 10 00 00    	cmpl   $0x1000,(%rbx)
    121a:	0f 85 41 02 00 00    	jne    1461 <mmult+0x361>
    1220:	83 7b 08 01          	cmpl   $0x1,0x8(%rbx)
    1224:	0f 85 37 02 00 00    	jne    1461 <mmult+0x361>
    122a:	48 83 78 28 00       	cmpq   $0x0,0x28(%rax)
    122f:	0f 85 3f 02 00 00    	jne    1474 <mmult+0x374>
    1235:	83 78 08 01          	cmpl   $0x1,0x8(%rax)
    1239:	0f 85 48 02 00 00    	jne    1487 <mmult+0x387>
    123f:	48 85 f6             	test   %rsi,%rsi
    1242:	0f 84 52 02 00 00    	je     149a <mmult+0x39a>
    1248:	66 83 79 16 01       	cmpw   $0x1,0x16(%rcx)
    124d:	0f 85 5a 02 00 00    	jne    14ad <mmult+0x3ad>
    1253:	80 79 15 20          	cmpb   $0x20,0x15(%rcx)
    1257:	0f 85 50 02 00 00    	jne    14ad <mmult+0x3ad>
    125d:	80 79 14 02          	cmpb   $0x2,0x14(%rcx)
    1261:	0f 85 46 02 00 00    	jne    14ad <mmult+0x3ad>
    1267:	41 81 3e 00 04 00 00 	cmpl   $0x400,(%r14)
    126e:	0f 85 4c 02 00 00    	jne    14c0 <mmult+0x3c0>
    1274:	41 81 7e 08 80 00 00 	cmpl   $0x80,0x8(%r14)
    127b:	00 
    127c:	0f 85 51 02 00 00    	jne    14d3 <mmult+0x3d3>
    1282:	4d 85 ff             	test   %r15,%r15
    1285:	74 18                	je     129f <mmult+0x19f>
    1287:	41 81 3f 80 00 00 00 	cmpl   $0x80,(%r15)
    128e:	0f 85 52 02 00 00    	jne    14e6 <mmult+0x3e6>
    1294:	41 83 7f 08 01       	cmpl   $0x1,0x8(%r15)
    1299:	0f 85 47 02 00 00    	jne    14e6 <mmult+0x3e6>
    129f:	48 83 79 28 00       	cmpq   $0x0,0x28(%rcx)
    12a4:	0f 85 4f 02 00 00    	jne    14f9 <mmult+0x3f9>
    12aa:	83 79 08 01          	cmpl   $0x1,0x8(%rcx)
    12ae:	0f 85 58 02 00 00    	jne    150c <mmult+0x40c>
    12b4:	44 3b 41 0c          	cmp    0xc(%rcx),%r8d
    12b8:	0f 85 61 02 00 00    	jne    151f <mmult+0x41f>
    12be:	48 85 d2             	test   %rdx,%rdx
    12c1:	0f 84 6b 02 00 00    	je     1532 <mmult+0x432>
    12c7:	66 41 83 7b 16 01    	cmpw   $0x1,0x16(%r11)
    12cd:	0f 85 72 02 00 00    	jne    1545 <mmult+0x445>
    12d3:	41 80 7b 15 20       	cmpb   $0x20,0x15(%r11)
    12d8:	0f 85 67 02 00 00    	jne    1545 <mmult+0x445>
    12de:	41 80 7b 14 02       	cmpb   $0x2,0x14(%r11)
    12e3:	0f 85 5c 02 00 00    	jne    1545 <mmult+0x445>
    12e9:	41 81 3a 00 10 00 00 	cmpl   $0x1000,(%r10)
    12f0:	0f 85 62 02 00 00    	jne    1558 <mmult+0x458>
    12f6:	41 81 7a 08 80 00 00 	cmpl   $0x80,0x8(%r10)
    12fd:	00 
    12fe:	0f 85 67 02 00 00    	jne    156b <mmult+0x46b>
    1304:	4d 85 c9             	test   %r9,%r9
    1307:	74 18                	je     1321 <mmult+0x221>
    1309:	41 81 39 80 00 00 00 	cmpl   $0x80,(%r9)
    1310:	0f 85 68 02 00 00    	jne    157e <mmult+0x47e>
    1316:	41 83 79 08 01       	cmpl   $0x1,0x8(%r9)
    131b:	0f 85 5d 02 00 00    	jne    157e <mmult+0x47e>
    1321:	49 83 7b 28 00       	cmpq   $0x0,0x28(%r11)
    1326:	0f 85 65 02 00 00    	jne    1591 <mmult+0x491>
    132c:	41 83 7b 08 01       	cmpl   $0x1,0x8(%r11)
    1331:	0f 85 6d 02 00 00    	jne    15a4 <mmult+0x4a4>
    1337:	45 3b 43 0c          	cmp    0xc(%r11),%r8d
    133b:	0f 85 76 02 00 00    	jne    15b7 <mmult+0x4b7>
    1341:	48 85 ff             	test   %rdi,%rdi
    1344:	0f 84 80 02 00 00    	je     15ca <mmult+0x4ca>
    134a:	e8 91 02 00 00       	call   15e0 <mmult_compute_>
    134f:	31 c0                	xor    %eax,%eax
    1351:	5b                   	pop    %rbx
    1352:	41 5e                	pop    %r14
    1354:	41 5f                	pop    %r15
    1356:	c3                   	ret
    1357:	48 8b 05 7a 3c 00 00 	mov    0x3c7a(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    135e:	48 8d 3d 69 0d 00 00 	lea    0xd69(%rip),%rdi        # 20ce <_fini+0x2c2>
    1365:	eb 1e                	jmp    1385 <mmult+0x285>
    1367:	48 8b 05 6a 3c 00 00 	mov    0x3c6a(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    136e:	48 8d 3d c8 0d 00 00 	lea    0xdc8(%rip),%rdi        # 213d <_fini+0x331>
    1375:	eb 0e                	jmp    1385 <mmult+0x285>
    1377:	48 8b 05 5a 3c 00 00 	mov    0x3c5a(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    137e:	48 8d 3d 23 0e 00 00 	lea    0xe23(%rip),%rdi        # 21a8 <_fini+0x39c>
    1385:	ff 10                	call   *(%rax)
    1387:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    138c:	5b                   	pop    %rbx
    138d:	41 5e                	pop    %r14
    138f:	41 5f                	pop    %r15
    1391:	c3                   	ret
    1392:	48 8b 05 3f 3c 00 00 	mov    0x3c3f(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1399:	48 8d 3d 60 0c 00 00 	lea    0xc60(%rip),%rdi        # 2000 <_fini+0x1f4>
    13a0:	eb e3                	jmp    1385 <mmult+0x285>
    13a2:	48 8b 05 2f 3c 00 00 	mov    0x3c2f(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    13a9:	48 8d 3d 88 0c 00 00 	lea    0xc88(%rip),%rdi        # 2038 <_fini+0x22c>
    13b0:	eb d3                	jmp    1385 <mmult+0x285>
    13b2:	48 8b 05 1f 3c 00 00 	mov    0x3c1f(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    13b9:	48 8d 3d c2 0c 00 00 	lea    0xcc2(%rip),%rdi        # 2082 <_fini+0x276>
    13c0:	eb c3                	jmp    1385 <mmult+0x285>
    13c2:	48 8b 05 0f 3c 00 00 	mov    0x3c0f(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    13c9:	48 8d 3d 4f 0e 00 00 	lea    0xe4f(%rip),%rdi        # 221f <_fini+0x413>
    13d0:	eb b3                	jmp    1385 <mmult+0x285>
    13d2:	48 8b 05 ff 3b 00 00 	mov    0x3bff(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    13d9:	48 8d 3d 99 0e 00 00 	lea    0xe99(%rip),%rdi        # 2279 <_fini+0x46d>
    13e0:	eb a3                	jmp    1385 <mmult+0x285>
    13e2:	48 8b 05 ef 3b 00 00 	mov    0x3bef(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    13e9:	48 8d 3d e5 0e 00 00 	lea    0xee5(%rip),%rdi        # 22d5 <_fini+0x4c9>
    13f0:	eb 93                	jmp    1385 <mmult+0x285>
    13f2:	48 8b 05 df 3b 00 00 	mov    0x3bdf(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    13f9:	48 8d 3d 2d 0f 00 00 	lea    0xf2d(%rip),%rdi        # 232d <_fini+0x521>
    1400:	eb 83                	jmp    1385 <mmult+0x285>
    1402:	48 8b 05 cf 3b 00 00 	mov    0x3bcf(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1409:	48 8d 3d 77 0f 00 00 	lea    0xf77(%rip),%rdi        # 2387 <_fini+0x57b>
    1410:	e9 70 ff ff ff       	jmp    1385 <mmult+0x285>
    1415:	48 8b 05 bc 3b 00 00 	mov    0x3bbc(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    141c:	48 8d 3d c2 0f 00 00 	lea    0xfc2(%rip),%rdi        # 23e5 <_fini+0x5d9>
    1423:	e9 5d ff ff ff       	jmp    1385 <mmult+0x285>
    1428:	48 8b 05 a9 3b 00 00 	mov    0x3ba9(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    142f:	48 8d 3d 0f 10 00 00 	lea    0x100f(%rip),%rdi        # 2445 <_fini+0x639>
    1436:	e9 4a ff ff ff       	jmp    1385 <mmult+0x285>
    143b:	48 8b 05 96 3b 00 00 	mov    0x3b96(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1442:	48 8d 3d d4 10 00 00 	lea    0x10d4(%rip),%rdi        # 251d <_fini+0x711>
    1449:	e9 37 ff ff ff       	jmp    1385 <mmult+0x285>
    144e:	48 8b 05 83 3b 00 00 	mov    0x3b83(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1455:	48 8d 3d 5f 11 00 00 	lea    0x115f(%rip),%rdi        # 25bb <_fini+0x7af>
    145c:	e9 24 ff ff ff       	jmp    1385 <mmult+0x285>
    1461:	48 8b 05 70 3b 00 00 	mov    0x3b70(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1468:	48 8d 3d ea 11 00 00 	lea    0x11ea(%rip),%rdi        # 2659 <_fini+0x84d>
    146f:	e9 11 ff ff ff       	jmp    1385 <mmult+0x285>
    1474:	48 8b 05 5d 3b 00 00 	mov    0x3b5d(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    147b:	48 8d 3d 6f 12 00 00 	lea    0x126f(%rip),%rdi        # 26f1 <_fini+0x8e5>
    1482:	e9 fe fe ff ff       	jmp    1385 <mmult+0x285>
    1487:	48 8b 05 4a 3b 00 00 	mov    0x3b4a(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    148e:	48 8d 3d 0f 13 00 00 	lea    0x130f(%rip),%rdi        # 27a4 <_fini+0x998>
    1495:	e9 eb fe ff ff       	jmp    1385 <mmult+0x285>
    149a:	48 8b 05 37 3b 00 00 	mov    0x3b37(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    14a1:	48 8d 3d 9b 13 00 00 	lea    0x139b(%rip),%rdi        # 2843 <_fini+0xa37>
    14a8:	e9 d8 fe ff ff       	jmp    1385 <mmult+0x285>
    14ad:	48 8b 05 24 3b 00 00 	mov    0x3b24(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    14b4:	48 8d 3d dd 13 00 00 	lea    0x13dd(%rip),%rdi        # 2898 <_fini+0xa8c>
    14bb:	e9 c5 fe ff ff       	jmp    1385 <mmult+0x285>
    14c0:	48 8b 05 11 3b 00 00 	mov    0x3b11(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    14c7:	48 8d 3d 9e 14 00 00 	lea    0x149e(%rip),%rdi        # 296c <_fini+0xb60>
    14ce:	e9 b2 fe ff ff       	jmp    1385 <mmult+0x285>
    14d3:	48 8b 05 fe 3a 00 00 	mov    0x3afe(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    14da:	48 8d 3d 26 15 00 00 	lea    0x1526(%rip),%rdi        # 2a07 <_fini+0xbfb>
    14e1:	e9 9f fe ff ff       	jmp    1385 <mmult+0x285>
    14e6:	48 8b 05 eb 3a 00 00 	mov    0x3aeb(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    14ed:	48 8d 3d ac 15 00 00 	lea    0x15ac(%rip),%rdi        # 2aa0 <_fini+0xc94>
    14f4:	e9 8c fe ff ff       	jmp    1385 <mmult+0x285>
    14f9:	48 8b 05 d8 3a 00 00 	mov    0x3ad8(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1500:	48 8d 3d 2d 16 00 00 	lea    0x162d(%rip),%rdi        # 2b34 <_fini+0xd28>
    1507:	e9 79 fe ff ff       	jmp    1385 <mmult+0x285>
    150c:	48 8b 05 c5 3a 00 00 	mov    0x3ac5(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1513:	48 8d 3d ca 16 00 00 	lea    0x16ca(%rip),%rdi        # 2be4 <_fini+0xdd8>
    151a:	e9 66 fe ff ff       	jmp    1385 <mmult+0x285>
    151f:	48 8b 05 b2 3a 00 00 	mov    0x3ab2(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1526:	48 8d 3d 53 17 00 00 	lea    0x1753(%rip),%rdi        # 2c80 <_fini+0xe74>
    152d:	e9 53 fe ff ff       	jmp    1385 <mmult+0x285>
    1532:	48 8b 05 9f 3a 00 00 	mov    0x3a9f(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1539:	48 8d 3d e2 17 00 00 	lea    0x17e2(%rip),%rdi        # 2d22 <_fini+0xf16>
    1540:	e9 40 fe ff ff       	jmp    1385 <mmult+0x285>
    1545:	48 8b 05 8c 3a 00 00 	mov    0x3a8c(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    154c:	48 8d 3d 22 18 00 00 	lea    0x1822(%rip),%rdi        # 2d75 <_fini+0xf69>
    1553:	e9 2d fe ff ff       	jmp    1385 <mmult+0x285>
    1558:	48 8b 05 79 3a 00 00 	mov    0x3a79(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    155f:	48 8d 3d ef 18 00 00 	lea    0x18ef(%rip),%rdi        # 2e55 <_fini+0x1049>
    1566:	e9 1a fe ff ff       	jmp    1385 <mmult+0x285>
    156b:	48 8b 05 66 3a 00 00 	mov    0x3a66(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1572:	48 8d 3d 80 19 00 00 	lea    0x1980(%rip),%rdi        # 2ef9 <_fini+0x10ed>
    1579:	e9 07 fe ff ff       	jmp    1385 <mmult+0x285>
    157e:	48 8b 05 53 3a 00 00 	mov    0x3a53(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1585:	48 8d 3d 0f 1a 00 00 	lea    0x1a0f(%rip),%rdi        # 2f9b <_fini+0x118f>
    158c:	e9 f4 fd ff ff       	jmp    1385 <mmult+0x285>
    1591:	48 8b 05 40 3a 00 00 	mov    0x3a40(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    1598:	48 8d 3d 99 1a 00 00 	lea    0x1a99(%rip),%rdi        # 3038 <_fini+0x122c>
    159f:	e9 e1 fd ff ff       	jmp    1385 <mmult+0x285>
    15a4:	48 8b 05 2d 3a 00 00 	mov    0x3a2d(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    15ab:	48 8d 3d 3f 1b 00 00 	lea    0x1b3f(%rip),%rdi        # 30f1 <_fini+0x12e5>
    15b2:	e9 ce fd ff ff       	jmp    1385 <mmult+0x285>
    15b7:	48 8b 05 1a 3a 00 00 	mov    0x3a1a(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    15be:	48 8d 3d d1 1b 00 00 	lea    0x1bd1(%rip),%rdi        # 3196 <_fini+0x138a>
    15c5:	e9 bb fd ff ff       	jmp    1385 <mmult+0x285>
    15ca:	48 8b 05 07 3a 00 00 	mov    0x3a07(%rip),%rax        # 4fd8 <__TVMAPISetLastError-0x38>
    15d1:	48 8d 3d 69 1c 00 00 	lea    0x1c69(%rip),%rdi        # 3241 <_fini+0x1435>
    15d8:	e9 a8 fd ff ff       	jmp    1385 <mmult+0x285>
    15dd:	0f 1f 00             	nopl   (%rax)

00000000000015e0 <mmult_compute_>:
    15e0:	55                   	push   %rbp
    15e1:	41 57                	push   %r15
    15e3:	41 56                	push   %r14
    15e5:	41 55                	push   %r13
    15e7:	41 54                	push   %r12
    15e9:	53                   	push   %rbx
    15ea:	48 81 c6 00 40 00 00 	add    $0x4000,%rsi
    15f1:	4c 8d 82 40 02 00 00 	lea    0x240(%rdx),%r8
    15f8:	4c 8d 8a 80 02 00 00 	lea    0x280(%rdx),%r9
    15ff:	4c 8d 92 c0 02 00 00 	lea    0x2c0(%rdx),%r10
    1606:	4c 8d 9a 00 03 00 00 	lea    0x300(%rdx),%r11
    160d:	4c 8d b2 40 03 00 00 	lea    0x340(%rdx),%r14
    1614:	4c 8d ba 80 03 00 00 	lea    0x380(%rdx),%r15
    161b:	4c 8d a2 c0 03 00 00 	lea    0x3c0(%rdx),%r12
    1622:	45 31 ed             	xor    %r13d,%r13d
    1625:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    162c:	00 00 00 
    162f:	90                   	nop
    1630:	4c 89 e9             	mov    %r13,%rcx
    1633:	48 c1 e1 07          	shl    $0x7,%rcx
    1637:	0f 57 c9             	xorps  %xmm1,%xmm1
    163a:	48 89 f0             	mov    %rsi,%rax
    163d:	31 db                	xor    %ebx,%ebx
    163f:	0f 57 db             	xorps  %xmm3,%xmm3
    1642:	0f 57 d2             	xorps  %xmm2,%xmm2
    1645:	0f 57 c0             	xorps  %xmm0,%xmm0
    1648:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    164f:	00 
    1650:	f3 0f 10 a8 00 c0 ff 	movss  -0x4000(%rax),%xmm5
    1657:	ff 
    1658:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    165c:	0f 28 24 1a          	movaps (%rdx,%rbx,1),%xmm4
    1660:	0f 59 e5             	mulps  %xmm5,%xmm4
    1663:	0f 58 e1             	addps  %xmm1,%xmm4
    1666:	0f 28 74 1a 10       	movaps 0x10(%rdx,%rbx,1),%xmm6
    166b:	0f 59 f5             	mulps  %xmm5,%xmm6
    166e:	0f 58 f3             	addps  %xmm3,%xmm6
    1671:	0f 28 5c 1a 20       	movaps 0x20(%rdx,%rbx,1),%xmm3
    1676:	0f 59 dd             	mulps  %xmm5,%xmm3
    1679:	0f 58 da             	addps  %xmm2,%xmm3
    167c:	0f 59 6c 1a 30       	mulps  0x30(%rdx,%rbx,1),%xmm5
    1681:	0f 58 e8             	addps  %xmm0,%xmm5
    1684:	f3 0f 10 08          	movss  (%rax),%xmm1
    1688:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    168c:	0f 28 84 1a 30 02 00 	movaps 0x230(%rdx,%rbx,1),%xmm0
    1693:	00 
    1694:	0f 59 c1             	mulps  %xmm1,%xmm0
    1697:	0f 58 c5             	addps  %xmm5,%xmm0
    169a:	0f 28 94 1a 20 02 00 	movaps 0x220(%rdx,%rbx,1),%xmm2
    16a1:	00 
    16a2:	0f 59 d1             	mulps  %xmm1,%xmm2
    16a5:	0f 58 d3             	addps  %xmm3,%xmm2
    16a8:	0f 28 9c 1a 10 02 00 	movaps 0x210(%rdx,%rbx,1),%xmm3
    16af:	00 
    16b0:	0f 59 d9             	mulps  %xmm1,%xmm3
    16b3:	0f 58 de             	addps  %xmm6,%xmm3
    16b6:	0f 59 8c 1a 00 02 00 	mulps  0x200(%rdx,%rbx,1),%xmm1
    16bd:	00 
    16be:	0f 58 cc             	addps  %xmm4,%xmm1
    16c1:	48 81 c3 00 04 00 00 	add    $0x400,%rbx
    16c8:	48 05 00 80 00 00    	add    $0x8000,%rax
    16ce:	48 81 fb 00 00 08 00 	cmp    $0x80000,%rbx
    16d5:	0f 85 75 ff ff ff    	jne    1650 <mmult_compute_+0x70>
    16db:	0f 29 0c 8f          	movaps %xmm1,(%rdi,%rcx,4)
    16df:	0f 29 5c 8f 10       	movaps %xmm3,0x10(%rdi,%rcx,4)
    16e4:	0f 29 54 8f 20       	movaps %xmm2,0x20(%rdi,%rcx,4)
    16e9:	0f 29 44 8f 30       	movaps %xmm0,0x30(%rdi,%rcx,4)
    16ee:	48 89 c8             	mov    %rcx,%rax
    16f1:	48 83 c8 10          	or     $0x10,%rax
    16f5:	0f 57 c9             	xorps  %xmm1,%xmm1
    16f8:	4c 89 c3             	mov    %r8,%rbx
    16fb:	31 ed                	xor    %ebp,%ebp
    16fd:	0f 57 db             	xorps  %xmm3,%xmm3
    1700:	0f 57 d2             	xorps  %xmm2,%xmm2
    1703:	0f 57 c0             	xorps  %xmm0,%xmm0
    1706:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    170d:	00 00 00 
    1710:	f3 0f 10 ac 2e 00 c0 	movss  -0x4000(%rsi,%rbp,1),%xmm5
    1717:	ff ff 
    1719:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    171d:	0f 28 a3 00 fe ff ff 	movaps -0x200(%rbx),%xmm4
    1724:	0f 59 e5             	mulps  %xmm5,%xmm4
    1727:	0f 58 e1             	addps  %xmm1,%xmm4
    172a:	0f 28 b3 10 fe ff ff 	movaps -0x1f0(%rbx),%xmm6
    1731:	0f 59 f5             	mulps  %xmm5,%xmm6
    1734:	0f 58 f3             	addps  %xmm3,%xmm6
    1737:	0f 28 9b 20 fe ff ff 	movaps -0x1e0(%rbx),%xmm3
    173e:	0f 59 dd             	mulps  %xmm5,%xmm3
    1741:	0f 58 da             	addps  %xmm2,%xmm3
    1744:	0f 59 ab 30 fe ff ff 	mulps  -0x1d0(%rbx),%xmm5
    174b:	0f 58 e8             	addps  %xmm0,%xmm5
    174e:	f3 0f 10 0c 2e       	movss  (%rsi,%rbp,1),%xmm1
    1753:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    1757:	0f 28 43 30          	movaps 0x30(%rbx),%xmm0
    175b:	0f 59 c1             	mulps  %xmm1,%xmm0
    175e:	0f 58 c5             	addps  %xmm5,%xmm0
    1761:	0f 28 53 20          	movaps 0x20(%rbx),%xmm2
    1765:	0f 59 d1             	mulps  %xmm1,%xmm2
    1768:	0f 58 d3             	addps  %xmm3,%xmm2
    176b:	0f 28 5b 10          	movaps 0x10(%rbx),%xmm3
    176f:	0f 59 d9             	mulps  %xmm1,%xmm3
    1772:	0f 58 de             	addps  %xmm6,%xmm3
    1775:	0f 59 0b             	mulps  (%rbx),%xmm1
    1778:	0f 58 cc             	addps  %xmm4,%xmm1
    177b:	48 81 c5 00 80 00 00 	add    $0x8000,%rbp
    1782:	48 81 c3 00 04 00 00 	add    $0x400,%rbx
    1789:	48 81 fd 00 00 00 01 	cmp    $0x1000000,%rbp
    1790:	0f 85 7a ff ff ff    	jne    1710 <mmult_compute_+0x130>
    1796:	0f 29 0c 87          	movaps %xmm1,(%rdi,%rax,4)
    179a:	0f 29 5c 87 10       	movaps %xmm3,0x10(%rdi,%rax,4)
    179f:	0f 29 54 87 20       	movaps %xmm2,0x20(%rdi,%rax,4)
    17a4:	0f 29 44 87 30       	movaps %xmm0,0x30(%rdi,%rax,4)
    17a9:	48 89 c8             	mov    %rcx,%rax
    17ac:	48 83 c8 20          	or     $0x20,%rax
    17b0:	0f 57 c9             	xorps  %xmm1,%xmm1
    17b3:	4c 89 cb             	mov    %r9,%rbx
    17b6:	31 ed                	xor    %ebp,%ebp
    17b8:	0f 57 db             	xorps  %xmm3,%xmm3
    17bb:	0f 57 d2             	xorps  %xmm2,%xmm2
    17be:	0f 57 c0             	xorps  %xmm0,%xmm0
    17c1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    17c8:	00 00 00 
    17cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    17d0:	f3 0f 10 ac 2e 00 c0 	movss  -0x4000(%rsi,%rbp,1),%xmm5
    17d7:	ff ff 
    17d9:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    17dd:	0f 28 a3 00 fe ff ff 	movaps -0x200(%rbx),%xmm4
    17e4:	0f 59 e5             	mulps  %xmm5,%xmm4
    17e7:	0f 58 e1             	addps  %xmm1,%xmm4
    17ea:	0f 28 b3 10 fe ff ff 	movaps -0x1f0(%rbx),%xmm6
    17f1:	0f 59 f5             	mulps  %xmm5,%xmm6
    17f4:	0f 58 f3             	addps  %xmm3,%xmm6
    17f7:	0f 28 9b 20 fe ff ff 	movaps -0x1e0(%rbx),%xmm3
    17fe:	0f 59 dd             	mulps  %xmm5,%xmm3
    1801:	0f 58 da             	addps  %xmm2,%xmm3
    1804:	0f 59 ab 30 fe ff ff 	mulps  -0x1d0(%rbx),%xmm5
    180b:	0f 58 e8             	addps  %xmm0,%xmm5
    180e:	f3 0f 10 0c 2e       	movss  (%rsi,%rbp,1),%xmm1
    1813:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    1817:	0f 28 43 30          	movaps 0x30(%rbx),%xmm0
    181b:	0f 59 c1             	mulps  %xmm1,%xmm0
    181e:	0f 58 c5             	addps  %xmm5,%xmm0
    1821:	0f 28 53 20          	movaps 0x20(%rbx),%xmm2
    1825:	0f 59 d1             	mulps  %xmm1,%xmm2
    1828:	0f 58 d3             	addps  %xmm3,%xmm2
    182b:	0f 28 5b 10          	movaps 0x10(%rbx),%xmm3
    182f:	0f 59 d9             	mulps  %xmm1,%xmm3
    1832:	0f 58 de             	addps  %xmm6,%xmm3
    1835:	0f 59 0b             	mulps  (%rbx),%xmm1
    1838:	0f 58 cc             	addps  %xmm4,%xmm1
    183b:	48 81 c5 00 80 00 00 	add    $0x8000,%rbp
    1842:	48 81 c3 00 04 00 00 	add    $0x400,%rbx
    1849:	48 81 fd 00 00 00 01 	cmp    $0x1000000,%rbp
    1850:	0f 85 7a ff ff ff    	jne    17d0 <mmult_compute_+0x1f0>
    1856:	0f 29 0c 87          	movaps %xmm1,(%rdi,%rax,4)
    185a:	0f 29 5c 87 10       	movaps %xmm3,0x10(%rdi,%rax,4)
    185f:	0f 29 54 87 20       	movaps %xmm2,0x20(%rdi,%rax,4)
    1864:	0f 29 44 87 30       	movaps %xmm0,0x30(%rdi,%rax,4)
    1869:	48 89 c8             	mov    %rcx,%rax
    186c:	48 83 c8 30          	or     $0x30,%rax
    1870:	0f 57 c9             	xorps  %xmm1,%xmm1
    1873:	4c 89 d3             	mov    %r10,%rbx
    1876:	31 ed                	xor    %ebp,%ebp
    1878:	0f 57 db             	xorps  %xmm3,%xmm3
    187b:	0f 57 d2             	xorps  %xmm2,%xmm2
    187e:	0f 57 c0             	xorps  %xmm0,%xmm0
    1881:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1888:	00 00 00 
    188b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1890:	f3 0f 10 ac 2e 00 c0 	movss  -0x4000(%rsi,%rbp,1),%xmm5
    1897:	ff ff 
    1899:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    189d:	0f 28 a3 00 fe ff ff 	movaps -0x200(%rbx),%xmm4
    18a4:	0f 59 e5             	mulps  %xmm5,%xmm4
    18a7:	0f 58 e1             	addps  %xmm1,%xmm4
    18aa:	0f 28 b3 10 fe ff ff 	movaps -0x1f0(%rbx),%xmm6
    18b1:	0f 59 f5             	mulps  %xmm5,%xmm6
    18b4:	0f 58 f3             	addps  %xmm3,%xmm6
    18b7:	0f 28 9b 20 fe ff ff 	movaps -0x1e0(%rbx),%xmm3
    18be:	0f 59 dd             	mulps  %xmm5,%xmm3
    18c1:	0f 58 da             	addps  %xmm2,%xmm3
    18c4:	0f 59 ab 30 fe ff ff 	mulps  -0x1d0(%rbx),%xmm5
    18cb:	0f 58 e8             	addps  %xmm0,%xmm5
    18ce:	f3 0f 10 0c 2e       	movss  (%rsi,%rbp,1),%xmm1
    18d3:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    18d7:	0f 28 43 30          	movaps 0x30(%rbx),%xmm0
    18db:	0f 59 c1             	mulps  %xmm1,%xmm0
    18de:	0f 58 c5             	addps  %xmm5,%xmm0
    18e1:	0f 28 53 20          	movaps 0x20(%rbx),%xmm2
    18e5:	0f 59 d1             	mulps  %xmm1,%xmm2
    18e8:	0f 58 d3             	addps  %xmm3,%xmm2
    18eb:	0f 28 5b 10          	movaps 0x10(%rbx),%xmm3
    18ef:	0f 59 d9             	mulps  %xmm1,%xmm3
    18f2:	0f 58 de             	addps  %xmm6,%xmm3
    18f5:	0f 59 0b             	mulps  (%rbx),%xmm1
    18f8:	0f 58 cc             	addps  %xmm4,%xmm1
    18fb:	48 81 c5 00 80 00 00 	add    $0x8000,%rbp
    1902:	48 81 c3 00 04 00 00 	add    $0x400,%rbx
    1909:	48 81 fd 00 00 00 01 	cmp    $0x1000000,%rbp
    1910:	0f 85 7a ff ff ff    	jne    1890 <mmult_compute_+0x2b0>
    1916:	0f 29 0c 87          	movaps %xmm1,(%rdi,%rax,4)
    191a:	0f 29 5c 87 10       	movaps %xmm3,0x10(%rdi,%rax,4)
    191f:	0f 29 54 87 20       	movaps %xmm2,0x20(%rdi,%rax,4)
    1924:	0f 29 44 87 30       	movaps %xmm0,0x30(%rdi,%rax,4)
    1929:	48 89 c8             	mov    %rcx,%rax
    192c:	48 83 c8 40          	or     $0x40,%rax
    1930:	0f 57 c9             	xorps  %xmm1,%xmm1
    1933:	4c 89 db             	mov    %r11,%rbx
    1936:	31 ed                	xor    %ebp,%ebp
    1938:	0f 57 db             	xorps  %xmm3,%xmm3
    193b:	0f 57 d2             	xorps  %xmm2,%xmm2
    193e:	0f 57 c0             	xorps  %xmm0,%xmm0
    1941:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1948:	00 00 00 
    194b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1950:	f3 0f 10 ac 2e 00 c0 	movss  -0x4000(%rsi,%rbp,1),%xmm5
    1957:	ff ff 
    1959:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    195d:	0f 28 a3 00 fe ff ff 	movaps -0x200(%rbx),%xmm4
    1964:	0f 59 e5             	mulps  %xmm5,%xmm4
    1967:	0f 58 e1             	addps  %xmm1,%xmm4
    196a:	0f 28 b3 10 fe ff ff 	movaps -0x1f0(%rbx),%xmm6
    1971:	0f 59 f5             	mulps  %xmm5,%xmm6
    1974:	0f 58 f3             	addps  %xmm3,%xmm6
    1977:	0f 28 9b 20 fe ff ff 	movaps -0x1e0(%rbx),%xmm3
    197e:	0f 59 dd             	mulps  %xmm5,%xmm3
    1981:	0f 58 da             	addps  %xmm2,%xmm3
    1984:	0f 59 ab 30 fe ff ff 	mulps  -0x1d0(%rbx),%xmm5
    198b:	0f 58 e8             	addps  %xmm0,%xmm5
    198e:	f3 0f 10 0c 2e       	movss  (%rsi,%rbp,1),%xmm1
    1993:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    1997:	0f 28 43 30          	movaps 0x30(%rbx),%xmm0
    199b:	0f 59 c1             	mulps  %xmm1,%xmm0
    199e:	0f 58 c5             	addps  %xmm5,%xmm0
    19a1:	0f 28 53 20          	movaps 0x20(%rbx),%xmm2
    19a5:	0f 59 d1             	mulps  %xmm1,%xmm2
    19a8:	0f 58 d3             	addps  %xmm3,%xmm2
    19ab:	0f 28 5b 10          	movaps 0x10(%rbx),%xmm3
    19af:	0f 59 d9             	mulps  %xmm1,%xmm3
    19b2:	0f 58 de             	addps  %xmm6,%xmm3
    19b5:	0f 59 0b             	mulps  (%rbx),%xmm1
    19b8:	0f 58 cc             	addps  %xmm4,%xmm1
    19bb:	48 81 c5 00 80 00 00 	add    $0x8000,%rbp
    19c2:	48 81 c3 00 04 00 00 	add    $0x400,%rbx
    19c9:	48 81 fd 00 00 00 01 	cmp    $0x1000000,%rbp
    19d0:	0f 85 7a ff ff ff    	jne    1950 <mmult_compute_+0x370>
    19d6:	0f 29 0c 87          	movaps %xmm1,(%rdi,%rax,4)
    19da:	0f 29 5c 87 10       	movaps %xmm3,0x10(%rdi,%rax,4)
    19df:	0f 29 54 87 20       	movaps %xmm2,0x20(%rdi,%rax,4)
    19e4:	0f 29 44 87 30       	movaps %xmm0,0x30(%rdi,%rax,4)
    19e9:	48 89 c8             	mov    %rcx,%rax
    19ec:	48 83 c8 50          	or     $0x50,%rax
    19f0:	0f 57 c9             	xorps  %xmm1,%xmm1
    19f3:	4c 89 f3             	mov    %r14,%rbx
    19f6:	31 ed                	xor    %ebp,%ebp
    19f8:	0f 57 db             	xorps  %xmm3,%xmm3
    19fb:	0f 57 d2             	xorps  %xmm2,%xmm2
    19fe:	0f 57 c0             	xorps  %xmm0,%xmm0
    1a01:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1a08:	00 00 00 
    1a0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1a10:	f3 0f 10 ac 2e 00 c0 	movss  -0x4000(%rsi,%rbp,1),%xmm5
    1a17:	ff ff 
    1a19:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    1a1d:	0f 28 a3 00 fe ff ff 	movaps -0x200(%rbx),%xmm4
    1a24:	0f 59 e5             	mulps  %xmm5,%xmm4
    1a27:	0f 58 e1             	addps  %xmm1,%xmm4
    1a2a:	0f 28 b3 10 fe ff ff 	movaps -0x1f0(%rbx),%xmm6
    1a31:	0f 59 f5             	mulps  %xmm5,%xmm6
    1a34:	0f 58 f3             	addps  %xmm3,%xmm6
    1a37:	0f 28 9b 20 fe ff ff 	movaps -0x1e0(%rbx),%xmm3
    1a3e:	0f 59 dd             	mulps  %xmm5,%xmm3
    1a41:	0f 58 da             	addps  %xmm2,%xmm3
    1a44:	0f 59 ab 30 fe ff ff 	mulps  -0x1d0(%rbx),%xmm5
    1a4b:	0f 58 e8             	addps  %xmm0,%xmm5
    1a4e:	f3 0f 10 0c 2e       	movss  (%rsi,%rbp,1),%xmm1
    1a53:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    1a57:	0f 28 43 30          	movaps 0x30(%rbx),%xmm0
    1a5b:	0f 59 c1             	mulps  %xmm1,%xmm0
    1a5e:	0f 58 c5             	addps  %xmm5,%xmm0
    1a61:	0f 28 53 20          	movaps 0x20(%rbx),%xmm2
    1a65:	0f 59 d1             	mulps  %xmm1,%xmm2
    1a68:	0f 58 d3             	addps  %xmm3,%xmm2
    1a6b:	0f 28 5b 10          	movaps 0x10(%rbx),%xmm3
    1a6f:	0f 59 d9             	mulps  %xmm1,%xmm3
    1a72:	0f 58 de             	addps  %xmm6,%xmm3
    1a75:	0f 59 0b             	mulps  (%rbx),%xmm1
    1a78:	0f 58 cc             	addps  %xmm4,%xmm1
    1a7b:	48 81 c5 00 80 00 00 	add    $0x8000,%rbp
    1a82:	48 81 c3 00 04 00 00 	add    $0x400,%rbx
    1a89:	48 81 fd 00 00 00 01 	cmp    $0x1000000,%rbp
    1a90:	0f 85 7a ff ff ff    	jne    1a10 <mmult_compute_+0x430>
    1a96:	0f 29 0c 87          	movaps %xmm1,(%rdi,%rax,4)
    1a9a:	0f 29 5c 87 10       	movaps %xmm3,0x10(%rdi,%rax,4)
    1a9f:	0f 29 54 87 20       	movaps %xmm2,0x20(%rdi,%rax,4)
    1aa4:	0f 29 44 87 30       	movaps %xmm0,0x30(%rdi,%rax,4)
    1aa9:	48 89 c8             	mov    %rcx,%rax
    1aac:	48 83 c8 60          	or     $0x60,%rax
    1ab0:	0f 57 c9             	xorps  %xmm1,%xmm1
    1ab3:	4c 89 fb             	mov    %r15,%rbx
    1ab6:	31 ed                	xor    %ebp,%ebp
    1ab8:	0f 57 db             	xorps  %xmm3,%xmm3
    1abb:	0f 57 d2             	xorps  %xmm2,%xmm2
    1abe:	0f 57 c0             	xorps  %xmm0,%xmm0
    1ac1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1ac8:	00 00 00 
    1acb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1ad0:	f3 0f 10 ac 2e 00 c0 	movss  -0x4000(%rsi,%rbp,1),%xmm5
    1ad7:	ff ff 
    1ad9:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    1add:	0f 28 a3 00 fe ff ff 	movaps -0x200(%rbx),%xmm4
    1ae4:	0f 59 e5             	mulps  %xmm5,%xmm4
    1ae7:	0f 58 e1             	addps  %xmm1,%xmm4
    1aea:	0f 28 b3 10 fe ff ff 	movaps -0x1f0(%rbx),%xmm6
    1af1:	0f 59 f5             	mulps  %xmm5,%xmm6
    1af4:	0f 58 f3             	addps  %xmm3,%xmm6
    1af7:	0f 28 9b 20 fe ff ff 	movaps -0x1e0(%rbx),%xmm3
    1afe:	0f 59 dd             	mulps  %xmm5,%xmm3
    1b01:	0f 58 da             	addps  %xmm2,%xmm3
    1b04:	0f 59 ab 30 fe ff ff 	mulps  -0x1d0(%rbx),%xmm5
    1b0b:	0f 58 e8             	addps  %xmm0,%xmm5
    1b0e:	f3 0f 10 0c 2e       	movss  (%rsi,%rbp,1),%xmm1
    1b13:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    1b17:	0f 28 43 30          	movaps 0x30(%rbx),%xmm0
    1b1b:	0f 59 c1             	mulps  %xmm1,%xmm0
    1b1e:	0f 58 c5             	addps  %xmm5,%xmm0
    1b21:	0f 28 53 20          	movaps 0x20(%rbx),%xmm2
    1b25:	0f 59 d1             	mulps  %xmm1,%xmm2
    1b28:	0f 58 d3             	addps  %xmm3,%xmm2
    1b2b:	0f 28 5b 10          	movaps 0x10(%rbx),%xmm3
    1b2f:	0f 59 d9             	mulps  %xmm1,%xmm3
    1b32:	0f 58 de             	addps  %xmm6,%xmm3
    1b35:	0f 59 0b             	mulps  (%rbx),%xmm1
    1b38:	0f 58 cc             	addps  %xmm4,%xmm1
    1b3b:	48 81 c5 00 80 00 00 	add    $0x8000,%rbp
    1b42:	48 81 c3 00 04 00 00 	add    $0x400,%rbx
    1b49:	48 81 fd 00 00 00 01 	cmp    $0x1000000,%rbp
    1b50:	0f 85 7a ff ff ff    	jne    1ad0 <mmult_compute_+0x4f0>
    1b56:	0f 29 0c 87          	movaps %xmm1,(%rdi,%rax,4)
    1b5a:	0f 29 5c 87 10       	movaps %xmm3,0x10(%rdi,%rax,4)
    1b5f:	0f 29 54 87 20       	movaps %xmm2,0x20(%rdi,%rax,4)
    1b64:	0f 29 44 87 30       	movaps %xmm0,0x30(%rdi,%rax,4)
    1b69:	48 83 c9 70          	or     $0x70,%rcx
    1b6d:	0f 57 c9             	xorps  %xmm1,%xmm1
    1b70:	4c 89 e0             	mov    %r12,%rax
    1b73:	31 db                	xor    %ebx,%ebx
    1b75:	0f 57 db             	xorps  %xmm3,%xmm3
    1b78:	0f 57 d2             	xorps  %xmm2,%xmm2
    1b7b:	0f 57 c0             	xorps  %xmm0,%xmm0
    1b7e:	66 90                	xchg   %ax,%ax
    1b80:	f3 0f 10 ac 1e 00 c0 	movss  -0x4000(%rsi,%rbx,1),%xmm5
    1b87:	ff ff 
    1b89:	0f c6 ed 00          	shufps $0x0,%xmm5,%xmm5
    1b8d:	0f 28 a0 00 fe ff ff 	movaps -0x200(%rax),%xmm4
    1b94:	0f 59 e5             	mulps  %xmm5,%xmm4
    1b97:	0f 58 e1             	addps  %xmm1,%xmm4
    1b9a:	0f 28 b0 10 fe ff ff 	movaps -0x1f0(%rax),%xmm6
    1ba1:	0f 59 f5             	mulps  %xmm5,%xmm6
    1ba4:	0f 58 f3             	addps  %xmm3,%xmm6
    1ba7:	0f 28 98 20 fe ff ff 	movaps -0x1e0(%rax),%xmm3
    1bae:	0f 59 dd             	mulps  %xmm5,%xmm3
    1bb1:	0f 58 da             	addps  %xmm2,%xmm3
    1bb4:	0f 59 a8 30 fe ff ff 	mulps  -0x1d0(%rax),%xmm5
    1bbb:	0f 58 e8             	addps  %xmm0,%xmm5
    1bbe:	f3 0f 10 0c 1e       	movss  (%rsi,%rbx,1),%xmm1
    1bc3:	0f c6 c9 00          	shufps $0x0,%xmm1,%xmm1
    1bc7:	0f 28 40 30          	movaps 0x30(%rax),%xmm0
    1bcb:	0f 59 c1             	mulps  %xmm1,%xmm0
    1bce:	0f 58 c5             	addps  %xmm5,%xmm0
    1bd1:	0f 28 50 20          	movaps 0x20(%rax),%xmm2
    1bd5:	0f 59 d1             	mulps  %xmm1,%xmm2
    1bd8:	0f 58 d3             	addps  %xmm3,%xmm2
    1bdb:	0f 28 58 10          	movaps 0x10(%rax),%xmm3
    1bdf:	0f 59 d9             	mulps  %xmm1,%xmm3
    1be2:	0f 58 de             	addps  %xmm6,%xmm3
    1be5:	0f 59 08             	mulps  (%rax),%xmm1
    1be8:	0f 58 cc             	addps  %xmm4,%xmm1
    1beb:	48 81 c3 00 80 00 00 	add    $0x8000,%rbx
    1bf2:	48 05 00 04 00 00    	add    $0x400,%rax
    1bf8:	48 81 fb 00 00 00 01 	cmp    $0x1000000,%rbx
    1bff:	0f 85 7b ff ff ff    	jne    1b80 <mmult_compute_+0x5a0>
    1c05:	0f 29 0c 8f          	movaps %xmm1,(%rdi,%rcx,4)
    1c09:	0f 29 5c 8f 10       	movaps %xmm3,0x10(%rdi,%rcx,4)
    1c0e:	0f 29 54 8f 20       	movaps %xmm2,0x20(%rdi,%rcx,4)
    1c13:	0f 29 44 8f 30       	movaps %xmm0,0x30(%rdi,%rcx,4)
    1c18:	49 83 c5 01          	add    $0x1,%r13
    1c1c:	48 83 c6 04          	add    $0x4,%rsi
    1c20:	49 81 fd 00 10 00 00 	cmp    $0x1000,%r13
    1c27:	0f 85 03 fa ff ff    	jne    1630 <mmult_compute_+0x50>
    1c2d:	5b                   	pop    %rbx
    1c2e:	41 5c                	pop    %r12
    1c30:	41 5d                	pop    %r13
    1c32:	41 5e                	pop    %r14
    1c34:	41 5f                	pop    %r15
    1c36:	5d                   	pop    %rbp
    1c37:	c3                   	ret
    1c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c3f:	00 

0000000000001c40 <__truncsfhf2>:
    1c40:	66 0f 7e c0          	movd   %xmm0,%eax
    1c44:	89 c2                	mov    %eax,%edx
    1c46:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
    1c4c:	8d 8a 00 00 80 c7    	lea    -0x38800000(%rdx),%ecx
    1c52:	8d b2 00 00 80 b8    	lea    -0x47800000(%rdx),%esi
    1c58:	39 f1                	cmp    %esi,%ecx
    1c5a:	73 29                	jae    1c85 <__truncsfhf2+0x45>
    1c5c:	89 c2                	mov    %eax,%edx
    1c5e:	c1 ea 0d             	shr    $0xd,%edx
    1c61:	0f b7 ca             	movzwl %dx,%ecx
    1c64:	89 c6                	mov    %eax,%esi
    1c66:	81 e6 ff 1f 00 00    	and    $0x1fff,%esi
    1c6c:	81 fe 01 10 00 00    	cmp    $0x1001,%esi
    1c72:	72 35                	jb     1ca9 <__truncsfhf2+0x69>
    1c74:	81 c1 01 40 fe ff    	add    $0xfffe4001,%ecx
    1c7a:	c1 e8 10             	shr    $0x10,%eax
    1c7d:	25 00 80 00 00       	and    $0x8000,%eax
    1c82:	09 c8                	or     %ecx,%eax
    1c84:	c3                   	ret
    1c85:	81 fa 01 00 80 7f    	cmp    $0x7f800001,%edx
    1c8b:	72 3f                	jb     1ccc <__truncsfhf2+0x8c>
    1c8d:	89 c1                	mov    %eax,%ecx
    1c8f:	c1 e9 0d             	shr    $0xd,%ecx
    1c92:	81 e1 ff 01 00 00    	and    $0x1ff,%ecx
    1c98:	81 c9 00 7e 00 00    	or     $0x7e00,%ecx
    1c9e:	c1 e8 10             	shr    $0x10,%eax
    1ca1:	25 00 80 00 00       	and    $0x8000,%eax
    1ca6:	09 c8                	or     %ecx,%eax
    1ca8:	c3                   	ret
    1ca9:	81 c1 00 40 fe ff    	add    $0xfffe4000,%ecx
    1caf:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1cb5:	75 c3                	jne    1c7a <__truncsfhf2+0x3a>
    1cb7:	0f b7 c9             	movzwl %cx,%ecx
    1cba:	83 e2 01             	and    $0x1,%edx
    1cbd:	01 ca                	add    %ecx,%edx
    1cbf:	89 d1                	mov    %edx,%ecx
    1cc1:	c1 e8 10             	shr    $0x10,%eax
    1cc4:	25 00 80 00 00       	and    $0x8000,%eax
    1cc9:	09 c8                	or     %ecx,%eax
    1ccb:	c3                   	ret
    1ccc:	b9 00 7c 00 00       	mov    $0x7c00,%ecx
    1cd1:	81 fa ff ff 7f 47    	cmp    $0x477fffff,%edx
    1cd7:	77 a1                	ja     1c7a <__truncsfhf2+0x3a>
    1cd9:	31 c9                	xor    %ecx,%ecx
    1cdb:	81 fa 00 00 00 2d    	cmp    $0x2d000000,%edx
    1ce1:	72 97                	jb     1c7a <__truncsfhf2+0x3a>
    1ce3:	c1 ea 17             	shr    $0x17,%edx
    1ce6:	89 c6                	mov    %eax,%esi
    1ce8:	81 e6 ff ff 7f 00    	and    $0x7fffff,%esi
    1cee:	81 ce 00 00 80 00    	or     $0x800000,%esi
    1cf4:	8d 4a af             	lea    -0x51(%rdx),%ecx
    1cf7:	89 f7                	mov    %esi,%edi
    1cf9:	d3 e7                	shl    %cl,%edi
    1cfb:	45 31 c0             	xor    %r8d,%r8d
    1cfe:	85 ff                	test   %edi,%edi
    1d00:	41 0f 95 c0          	setne  %r8b
    1d04:	b1 71                	mov    $0x71,%cl
    1d06:	28 d1                	sub    %dl,%cl
    1d08:	d3 ee                	shr    %cl,%esi
    1d0a:	89 f1                	mov    %esi,%ecx
    1d0c:	c1 e9 0d             	shr    $0xd,%ecx
    1d0f:	81 e6 ff 1f 00 00    	and    $0x1fff,%esi
    1d15:	44 09 c6             	or     %r8d,%esi
    1d18:	81 fe 01 10 00 00    	cmp    $0x1001,%esi
    1d1e:	72 0e                	jb     1d2e <__truncsfhf2+0xee>
    1d20:	83 c1 01             	add    $0x1,%ecx
    1d23:	c1 e8 10             	shr    $0x10,%eax
    1d26:	25 00 80 00 00       	and    $0x8000,%eax
    1d2b:	09 c8                	or     %ecx,%eax
    1d2d:	c3                   	ret
    1d2e:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1d34:	0f 85 40 ff ff ff    	jne    1c7a <__truncsfhf2+0x3a>
    1d3a:	89 ca                	mov    %ecx,%edx
    1d3c:	83 e2 01             	and    $0x1,%edx
    1d3f:	01 d1                	add    %edx,%ecx
    1d41:	c1 e8 10             	shr    $0x10,%eax
    1d44:	25 00 80 00 00       	and    $0x8000,%eax
    1d49:	09 c8                	or     %ecx,%eax
    1d4b:	c3                   	ret
    1d4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001d50 <__extendhfsf2>:
    1d50:	89 f8                	mov    %edi,%eax
    1d52:	25 ff 7f 00 00       	and    $0x7fff,%eax
    1d57:	8d 88 00 fc ff ff    	lea    -0x400(%rax),%ecx
    1d5d:	0f b7 c9             	movzwl %cx,%ecx
    1d60:	81 f9 ff 77 00 00    	cmp    $0x77ff,%ecx
    1d66:	77 0d                	ja     1d75 <__extendhfsf2+0x25>
    1d68:	c1 e0 0d             	shl    $0xd,%eax
    1d6b:	05 00 00 00 38       	add    $0x38000000,%eax
    1d70:	e9 86 00 00 00       	jmp    1dfb <__extendhfsf2+0xab>
    1d75:	3d 00 7c 00 00       	cmp    $0x7c00,%eax
    1d7a:	72 0a                	jb     1d86 <__extendhfsf2+0x36>
    1d7c:	c1 e0 0d             	shl    $0xd,%eax
    1d7f:	0d 00 00 80 7f       	or     $0x7f800000,%eax
    1d84:	eb 75                	jmp    1dfb <__extendhfsf2+0xab>
    1d86:	85 c0                	test   %eax,%eax
    1d88:	74 6f                	je     1df9 <__extendhfsf2+0xa9>
    1d8a:	89 c6                	mov    %eax,%esi
    1d8c:	c1 ee 08             	shr    $0x8,%esi
    1d8f:	31 d2                	xor    %edx,%edx
    1d91:	3d 00 01 00 00       	cmp    $0x100,%eax
    1d96:	0f 92 c2             	setb   %dl
    1d99:	0f 42 f0             	cmovb  %eax,%esi
    1d9c:	44 8d 04 d5 18 00 00 	lea    0x18(,%rdx,8),%r8d
    1da3:	00 
    1da4:	89 f1                	mov    %esi,%ecx
    1da6:	c1 e9 04             	shr    $0x4,%ecx
    1da9:	83 fe 10             	cmp    $0x10,%esi
    1dac:	8d 14 d5 14 00 00 00 	lea    0x14(,%rdx,8),%edx
    1db3:	0f 42 ce             	cmovb  %esi,%ecx
    1db6:	41 0f 42 d0          	cmovb  %r8d,%edx
    1dba:	89 ce                	mov    %ecx,%esi
    1dbc:	c1 ee 02             	shr    $0x2,%esi
    1dbf:	44 8d 42 fe          	lea    -0x2(%rdx),%r8d
    1dc3:	83 f9 04             	cmp    $0x4,%ecx
    1dc6:	0f 42 f1             	cmovb  %ecx,%esi
    1dc9:	44 0f 42 c2          	cmovb  %edx,%r8d
    1dcd:	89 f1                	mov    %esi,%ecx
    1dcf:	f7 d9                	neg    %ecx
    1dd1:	83 fe 02             	cmp    $0x2,%esi
    1dd4:	ba fe ff ff ff       	mov    $0xfffffffe,%edx
    1dd9:	0f 42 d1             	cmovb  %ecx,%edx
    1ddc:	44 01 c2             	add    %r8d,%edx
    1ddf:	8d 4a f8             	lea    -0x8(%rdx),%ecx
    1de2:	d3 e0                	shl    %cl,%eax
    1de4:	35 00 00 80 00       	xor    $0x800000,%eax
    1de9:	c1 e2 17             	shl    $0x17,%edx
    1dec:	b9 00 00 00 43       	mov    $0x43000000,%ecx
    1df1:	29 d1                	sub    %edx,%ecx
    1df3:	09 c1                	or     %eax,%ecx
    1df5:	89 c8                	mov    %ecx,%eax
    1df7:	eb 02                	jmp    1dfb <__extendhfsf2+0xab>
    1df9:	31 c0                	xor    %eax,%eax
    1dfb:	81 e7 00 80 00 00    	and    $0x8000,%edi
    1e01:	c1 e7 10             	shl    $0x10,%edi
    1e04:	09 c7                	or     %eax,%edi
    1e06:	66 0f 6e c7          	movd   %edi,%xmm0
    1e0a:	c3                   	ret

Disassembly of section .fini:

0000000000001e0c <_fini>:
    1e0c:	48 83 ec 08          	sub    $0x8,%rsp
    1e10:	48 83 c4 08          	add    $0x8,%rsp
    1e14:	c3                   	ret
