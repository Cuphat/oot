.late_rodata
glabel jtbl_80134D6C
    .word L8001CEC8
    .word L8001CEE0
    .word L8001CEF8
    .word L8001CF10
    .word L8001CF28
    .word L8001CEF8
    .word L8001CEF8

glabel jtbl_80134D88
    .word L8001CFD4
    .word L8001CFD4
    .word L8001D004
    .word L8001D004
    .word L8001D128
    .word L8001D034
    .word L8001D074
    .word L8001D074
    .word L8001D08C
    .word L8001D08C
    .word L8001D104

.text
glabel En_A_Obj_Init
/* A94008 8001CE68 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9400C 8001CE6C 3C0140C0 */  li    $at, 0x40C00000 # 0.000000
/* A94010 8001CE70 44812000 */  mtc1  $at, $f4
/* A94014 8001CE74 AFBF001C */  sw    $ra, 0x1c($sp)
/* A94018 8001CE78 AFB00018 */  sw    $s0, 0x18($sp)
/* A9401C 8001CE7C AFA5003C */  sw    $a1, 0x3c($sp)
/* A94020 8001CE80 AFA00034 */  sw    $zero, 0x34($sp)
/* A94024 8001CE84 E7A40028 */  swc1  $f4, 0x28($sp)
/* A94028 8001CE88 8486001C */  lh    $a2, 0x1c($a0)
/* A9402C 8001CE8C 00808025 */  move  $s0, $a0
/* A94030 8001CE90 30D800FF */  andi  $t8, $a2, 0xff
/* A94034 8001CE94 3319FFFF */  andi  $t9, $t8, 0xffff
/* A94038 8001CE98 00067203 */  sra   $t6, $a2, 8
/* A9403C 8001CE9C 31CF00FF */  andi  $t7, $t6, 0xff
/* A94040 8001CEA0 2F210007 */  sltiu $at, $t9, 7
/* A94044 8001CEA4 A48F016C */  sh    $t7, 0x16c($a0)
/* A94048 8001CEA8 1020001F */  beqz  $at, .L8001CF28
/* A9404C 8001CEAC A498001C */   sh    $t8, 0x1c($a0)
/* A94050 8001CEB0 0019C880 */  sll   $t9, $t9, 2
/* A94054 8001CEB4 3C018013 */  lui   $at, %hi(jtbl_80134D6C)
/* A94058 8001CEB8 00390821 */  addu  $at, $at, $t9
/* A9405C 8001CEBC 8C394D6C */  lw    $t9, %lo(jtbl_80134D6C)($at)
/* A94060 8001CEC0 03200008 */  jr    $t9
/* A94064 8001CEC4 00000000 */   nop   
glabel L8001CEC8
/* A94068 8001CEC8 3C053CCC */  lui   $a1, (0x3CCCCCCD >> 16) # lui $a1, 0x3ccc
/* A9406C 8001CECC 34A5CCCD */  ori   $a1, (0x3CCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* A94070 8001CED0 0C00B58B */  jal   Actor_SetScale
/* A94074 8001CED4 02002025 */   move  $a0, $s0
/* A94078 8001CED8 10000018 */  b     .L8001CF3C
/* A9407C 8001CEDC 8608001C */   lh    $t0, 0x1c($s0)
glabel L8001CEE0
/* A94080 8001CEE0 3C053D4C */  lui   $a1, (0x3D4CCCCD >> 16) # lui $a1, 0x3d4c
/* A94084 8001CEE4 34A5CCCD */  ori   $a1, (0x3D4CCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* A94088 8001CEE8 0C00B58B */  jal   Actor_SetScale
/* A9408C 8001CEEC 02002025 */   move  $a0, $s0
/* A94090 8001CEF0 10000012 */  b     .L8001CF3C
/* A94094 8001CEF4 8608001C */   lh    $t0, 0x1c($s0)
glabel L8001CEF8
/* A94098 8001CEF8 3C053DCC */  lui   $a1, (0x3DCCCCCD >> 16) # lui $a1, 0x3dcc
/* A9409C 8001CEFC 34A5CCCD */  ori   $a1, (0x3DCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* A940A0 8001CF00 0C00B58B */  jal   Actor_SetScale
/* A940A4 8001CF04 02002025 */   move  $a0, $s0
/* A940A8 8001CF08 1000000C */  b     .L8001CF3C
/* A940AC 8001CF0C 8608001C */   lh    $t0, 0x1c($s0)
glabel L8001CF10
/* A940B0 8001CF10 3C053BA3 */  lui   $a1, (0x3BA3D70A >> 16) # lui $a1, 0x3ba3
/* A940B4 8001CF14 34A5D70A */  ori   $a1, (0x3BA3D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A940B8 8001CF18 0C00B58B */  jal   Actor_SetScale
/* A940BC 8001CF1C 02002025 */   move  $a0, $s0
/* A940C0 8001CF20 10000006 */  b     .L8001CF3C
/* A940C4 8001CF24 8608001C */   lh    $t0, 0x1c($s0)
glabel L8001CF28
.L8001CF28:
/* A940C8 8001CF28 3C053C23 */  lui   $a1, (0x3C23D70A >> 16) # lui $a1, 0x3c23
/* A940CC 8001CF2C 34A5D70A */  ori   $a1, (0x3C23D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A940D0 8001CF30 0C00B58B */  jal   Actor_SetScale
/* A940D4 8001CF34 02002025 */   move  $a0, $s0
/* A940D8 8001CF38 8608001C */  lh    $t0, 0x1c($s0)
.L8001CF3C:
/* A940DC 8001CF3C 260400B4 */  addiu $a0, $s0, 0xb4
/* A940E0 8001CF40 24050000 */  li    $a1, 0
/* A940E4 8001CF44 29010009 */  slti  $at, $t0, 9
/* A940E8 8001CF48 14200005 */  bnez  $at, .L8001CF60
/* A940EC 8001CF4C 3C068003 */   lui   $a2, %hi(ActorShadow_DrawFunc_Circle) # $a2, 0x8003
/* A940F0 8001CF50 3C014140 */  li    $at, 0x41400000 # 0.000000
/* A940F4 8001CF54 44813000 */  mtc1  $at, $f6
/* A940F8 8001CF58 00000000 */  nop   
/* A940FC 8001CF5C E7A60028 */  swc1  $f6, 0x28($sp)
.L8001CF60:
/* A94100 8001CF60 24C6B5EC */  addiu $a2, %lo(ActorShadow_DrawFunc_Circle) # addiu $a2, $a2, -0x4a14
/* A94104 8001CF64 0C00AC78 */  jal   ActorShape_Init
/* A94108 8001CF68 8FA70028 */   lw    $a3, 0x28($sp)
/* A9410C 8001CF6C 8E0A0024 */  lw    $t2, 0x24($s0)
/* A94110 8001CF70 3C014496 */  li    $at, 0x44960000 # 0.000000
/* A94114 8001CF74 44814000 */  mtc1  $at, $f8
/* A94118 8001CF78 8606001C */  lh    $a2, 0x1c($s0)
/* A9411C 8001CF7C 3C014348 */  li    $at, 0x43480000 # 0.000000
/* A94120 8001CF80 44815000 */  mtc1  $at, $f10
/* A94124 8001CF84 AE0A0038 */  sw    $t2, 0x38($s0)
/* A94128 8001CF88 8E0A002C */  lw    $t2, 0x2c($s0)
/* A9412C 8001CF8C 8E090028 */  lw    $t1, 0x28($s0)
/* A94130 8001CF90 24CCFFFF */  addiu $t4, $a2, -1
/* A94134 8001CF94 240BFFFF */  li    $t3, -1
/* A94138 8001CF98 2D81000B */  sltiu $at, $t4, 0xb
/* A9413C 8001CF9C AE0B014C */  sw    $t3, 0x14c($s0)
/* A94140 8001CFA0 A2000160 */  sb    $zero, 0x160($s0)
/* A94144 8001CFA4 AE00015C */  sw    $zero, 0x15c($s0)
/* A94148 8001CFA8 E60800FC */  swc1  $f8, 0xfc($s0)
/* A9414C 8001CFAC E60A00F8 */  swc1  $f10, 0xf8($s0)
/* A94150 8001CFB0 AE0A0040 */  sw    $t2, 0x40($s0)
/* A94154 8001CFB4 1020005C */  beqz  $at, .L8001D128
/* A94158 8001CFB8 AE09003C */   sw    $t1, 0x3c($s0)
/* A9415C 8001CFBC 000C6080 */  sll   $t4, $t4, 2
/* A94160 8001CFC0 3C018013 */  lui   $at, %hi(jtbl_80134D88)
/* A94164 8001CFC4 002C0821 */  addu  $at, $at, $t4
/* A94168 8001CFC8 8C2C4D88 */  lw    $t4, %lo(jtbl_80134D88)($at)
/* A9416C 8001CFCC 01800008 */  jr    $t4
/* A94170 8001CFD0 00000000 */   nop   
glabel L8001CFD4
/* A94174 8001CFD4 8FA4003C */  lw    $a0, 0x3c($sp)
/* A94178 8001CFD8 240D0001 */  li    $t5, 1
/* A9417C 8001CFDC AE0D014C */  sw    $t5, 0x14c($s0)
/* A94180 8001CFE0 02003025 */  move  $a2, $s0
/* A94184 8001CFE4 24070001 */  li    $a3, 1
/* A94188 8001CFE8 0C00CDD2 */  jal   Actor_ChangeType
/* A9418C 8001CFEC 24851C24 */   addiu $a1, $a0, 0x1c24
/* A94190 8001CFF0 02002025 */  move  $a0, $s0
/* A94194 8001CFF4 0C007572 */  jal   func_8001D5C8
/* A94198 8001CFF8 8605001C */   lh    $a1, 0x1c($s0)
/* A9419C 8001CFFC 10000052 */  b     .L8001D148
/* A941A0 8001D000 860F001C */   lh    $t7, 0x1c($s0)
glabel L8001D004
/* A941A4 8001D004 240E0003 */  li    $t6, 3
/* A941A8 8001D008 AE0E014C */  sw    $t6, 0x14c($s0)
/* A941AC 8001D00C 8FA4003C */  lw    $a0, 0x3c($sp)
/* A941B0 8001D010 02003025 */  move  $a2, $s0
/* A941B4 8001D014 24070001 */  li    $a3, 1
/* A941B8 8001D018 0C00CDD2 */  jal   Actor_ChangeType
/* A941BC 8001D01C 24851C24 */   addiu $a1, $a0, 0x1c24
/* A941C0 8001D020 02002025 */  move  $a0, $s0
/* A941C4 8001D024 0C0074C4 */  jal   func_8001D310
/* A941C8 8001D028 8605001C */   lh    $a1, 0x1c($s0)
/* A941CC 8001D02C 10000046 */  b     .L8001D148
/* A941D0 8001D030 860F001C */   lh    $t7, 0x1c($s0)
glabel L8001D034
/* A941D4 8001D034 3C014120 */  li    $at, 0x41200000 # 0.000000
/* A941D8 8001D038 44818000 */  mtc1  $at, $f16
/* A941DC 8001D03C 8E180004 */  lw    $t8, 4($s0)
/* A941E0 8001D040 3C01C000 */  li    $at, 0xC0000000 # 0.000000
/* A941E4 8001D044 44819000 */  mtc1  $at, $f18
/* A941E8 8001D048 24080005 */  li    $t0, 5
/* A941EC 8001D04C 37190001 */  ori   $t9, $t8, 1
/* A941F0 8001D050 AE190004 */  sw    $t9, 4($s0)
/* A941F4 8001D054 AE08014C */  sw    $t0, 0x14c($s0)
/* A941F8 8001D058 02002025 */  move  $a0, $s0
/* A941FC 8001D05C 8605001C */  lh    $a1, 0x1c($s0)
/* A94200 8001D060 E6100178 */  swc1  $f16, 0x178($s0)
/* A94204 8001D064 0C00748D */  jal   func_8001D234
/* A94208 8001D068 E612006C */   swc1  $f18, 0x6c($s0)
/* A9420C 8001D06C 10000036 */  b     .L8001D148
/* A94210 8001D070 860F001C */   lh    $t7, 0x1c($s0)
glabel L8001D074
/* A94214 8001D074 AE00014C */  sw    $zero, 0x14c($s0)
/* A94218 8001D078 02002025 */  move  $a0, $s0
/* A9421C 8001D07C 0C00748D */  jal   func_8001D234
/* A94220 8001D080 8605001C */   lh    $a1, 0x1c($s0)
/* A94224 8001D084 10000030 */  b     .L8001D148
/* A94228 8001D088 860F001C */   lh    $t7, 0x1c($s0)
glabel L8001D08C
/* A9422C 8001D08C 8609016C */  lh    $t1, 0x16c($s0)
/* A94230 8001D090 3C0143FA */  li    $at, 0x43FA0000 # 0.000000
/* A94234 8001D094 44812000 */  mtc1  $at, $f4
/* A94238 8001D098 8E0C0004 */  lw    $t4, 4($s0)
/* A9423C 8001D09C 3C014234 */  li    $at, 0x42340000 # 0.000000
/* A94240 8001D0A0 44813000 */  mtc1  $at, $f6
/* A94244 8001D0A4 312A00FF */  andi  $t2, $t1, 0xff
/* A94248 8001D0A8 354B0300 */  ori   $t3, $t2, 0x300
/* A9424C 8001D0AC 358D0009 */  ori   $t5, $t4, 9
/* A94250 8001D0B0 A60B010E */  sh    $t3, 0x10e($s0)
/* A94254 8001D0B4 AE0D0004 */  sw    $t5, 4($s0)
/* A94258 8001D0B8 02002025 */  move  $a0, $s0
/* A9425C 8001D0BC 8605001C */  lh    $a1, 0x1c($s0)
/* A94260 8001D0C0 E604004C */  swc1  $f4, 0x4c($s0)
/* A94264 8001D0C4 0C00748D */  jal   func_8001D234
/* A94268 8001D0C8 E6060178 */   swc1  $f6, 0x178($s0)
/* A9426C 8001D0CC 2605017C */  addiu $a1, $s0, 0x17c
/* A94270 8001D0D0 AFA50024 */  sw    $a1, 0x24($sp)
/* A94274 8001D0D4 0C0170D9 */  jal   Collider_InitCylinder
/* A94278 8001D0D8 8FA4003C */   lw    $a0, 0x3c($sp)
/* A9427C 8001D0DC 3C078011 */  lui   $a3, %hi(D_80115440) # $a3, 0x8011
/* A94280 8001D0E0 8FA50024 */  lw    $a1, 0x24($sp)
/* A94284 8001D0E4 24E75440 */  addiu $a3, %lo(D_80115440) # addiu $a3, $a3, 0x5440
/* A94288 8001D0E8 8FA4003C */  lw    $a0, 0x3c($sp)
/* A9428C 8001D0EC 0C01712B */  jal   Collider_SetCylinder
/* A94290 8001D0F0 02003025 */   move  $a2, $s0
/* A94294 8001D0F4 240E00FF */  li    $t6, 255
/* A94298 8001D0F8 A20E00AE */  sb    $t6, 0xae($s0)
/* A9429C 8001D0FC 10000011 */  b     .L8001D144
/* A942A0 8001D100 A200001F */   sb    $zero, 0x1f($s0)
glabel L8001D104
/* A942A4 8001D104 3C01BFC0 */  li    $at, 0xBFC00000 # 0.000000
/* A942A8 8001D108 44814000 */  mtc1  $at, $f8
/* A942AC 8001D10C 00062C00 */  sll   $a1, $a2, 0x10
/* A942B0 8001D110 00052C03 */  sra   $a1, $a1, 0x10
/* A942B4 8001D114 02002025 */  move  $a0, $s0
/* A942B8 8001D118 0C007520 */  jal   func_8001D480
/* A942BC 8001D11C E608006C */   swc1  $f8, 0x6c($s0)
/* A942C0 8001D120 10000009 */  b     .L8001D148
/* A942C4 8001D124 860F001C */   lh    $t7, 0x1c($s0)
glabel L8001D128
.L8001D128:
/* A942C8 8001D128 3C01C000 */  li    $at, 0xC0000000 # 0.000000
/* A942CC 8001D12C 44815000 */  mtc1  $at, $f10
/* A942D0 8001D130 00062C00 */  sll   $a1, $a2, 0x10
/* A942D4 8001D134 00052C03 */  sra   $a1, $a1, 0x10
/* A942D8 8001D138 02002025 */  move  $a0, $s0
/* A942DC 8001D13C 0C00748D */  jal   func_8001D234
/* A942E0 8001D140 E60A006C */   swc1  $f10, 0x6c($s0)
.L8001D144:
/* A942E4 8001D144 860F001C */  lh    $t7, 0x1c($s0)
.L8001D148:
/* A942E8 8001D148 241800FF */  li    $t8, 255
/* A942EC 8001D14C 3C048011 */  lui   $a0, %hi(D_8011546C)
/* A942F0 8001D150 29E10005 */  slti  $at, $t7, 5
/* A942F4 8001D154 10200002 */  beqz  $at, .L8001D160
/* A942F8 8001D158 27A50034 */   addiu $a1, $sp, 0x34
/* A942FC 8001D15C A21800AE */  sb    $t8, 0xae($s0)
.L8001D160:
/* A94300 8001D160 8E02014C */  lw    $v0, 0x14c($s0)
/* A94304 8001D164 2401FFFF */  li    $at, -1
/* A94308 8001D168 1041000A */  beq   $v0, $at, .L8001D194
/* A9430C 8001D16C 0002C880 */   sll   $t9, $v0, 2
/* A94310 8001D170 00992021 */  addu  $a0, $a0, $t9
/* A94314 8001D174 0C010620 */  jal   DynaPolyInfo_Alloc
/* A94318 8001D178 8C84546C */   lw    $a0, %lo(D_8011546C)($a0)
/* A9431C 8001D17C 8FA4003C */  lw    $a0, 0x3c($sp)
/* A94320 8001D180 02003025 */  move  $a2, $s0
/* A94324 8001D184 8FA70034 */  lw    $a3, 0x34($sp)
/* A94328 8001D188 0C00FA9D */  jal   DynaPolyInfo_RegisterActor
/* A9432C 8001D18C 24850810 */   addiu $a1, $a0, 0x810
/* A94330 8001D190 AE02014C */  sw    $v0, 0x14c($s0)
.L8001D194:
/* A94334 8001D194 8FBF001C */  lw    $ra, 0x1c($sp)
/* A94338 8001D198 8FB00018 */  lw    $s0, 0x18($sp)
/* A9433C 8001D19C 27BD0038 */  addiu $sp, $sp, 0x38
/* A94340 8001D1A0 03E00008 */  jr    $ra
/* A94344 8001D1A4 00000000 */   nop   

