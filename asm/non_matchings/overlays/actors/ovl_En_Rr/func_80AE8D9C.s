.late_rodata
glabel D_80AEA8AC
    .float 2500.0

glabel D_80AEA8B0
    .float 0.15

.text
glabel func_80AE8D9C
/* 0095C 80AE8D9C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00960 80AE8DA0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00964 80AE8DA4 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00968 80AE8DA8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0096C 80AE8DAC A08E0376 */  sb      $t6, 0x0376($a0)           ## 00000376
/* 00970 80AE8DB0 A48001F6 */  sh      $zero, 0x01F6($a0)         ## 000001F6
/* 00974 80AE8DB4 3C0180AF */  lui     $at, %hi(D_80AEA8AC)       ## $at = 80AF0000
/* 00978 80AE8DB8 E48201F8 */  swc1    $f2, 0x01F8($a0)           ## 000001F8
/* 0097C 80AE8DBC C424A8AC */  lwc1    $f4, %lo(D_80AEA8AC)($at)  
/* 00980 80AE8DC0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00984 80AE8DC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 00988 80AE8DC8 3C0180AF */  lui     $at, %hi(D_80AEA8B0)       ## $at = 80AF0000
/* 0098C 80AE8DCC E4820200 */  swc1    $f2, 0x0200($a0)           ## 00000200
/* 00990 80AE8DD0 E4820204 */  swc1    $f2, 0x0204($a0)           ## 00000204
/* 00994 80AE8DD4 E482020C */  swc1    $f2, 0x020C($a0)           ## 0000020C
/* 00998 80AE8DD8 E4820214 */  swc1    $f2, 0x0214($a0)           ## 00000214
/* 0099C 80AE8DDC E48C0210 */  swc1    $f12, 0x0210($a0)          ## 00000210
/* 009A0 80AE8DE0 E48401FC */  swc1    $f4, 0x01FC($a0)           ## 000001FC
/* 009A4 80AE8DE4 E4860208 */  swc1    $f6, 0x0208($a0)           ## 00000208
/* 009A8 80AE8DE8 C428A8B0 */  lwc1    $f8, %lo(D_80AEA8B0)($at)  
/* 009AC 80AE8DEC 3C014500 */  lui     $at, 0x4500                ## $at = 45000000
/* 009B0 80AE8DF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 2048.00
/* 009B4 80AE8DF4 46006006 */  mov.s   $f0, $f12                  
/* 009B8 80AE8DF8 E480022C */  swc1    $f0, 0x022C($a0)           ## 0000022C
/* 009BC 80AE8DFC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 009C0 80AE8E00 24830040 */  addiu   $v1, $a0, 0x0040           ## $v1 = 00000040
/* 009C4 80AE8E04 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 009C8 80AE8E08 E482021C */  swc1    $f2, 0x021C($a0)           ## 0000021C
/* 009CC 80AE8E0C E4820258 */  swc1    $f2, 0x0258($a0)           ## 00000258
/* 009D0 80AE8E10 E4820254 */  swc1    $f2, 0x0254($a0)           ## 00000254
/* 009D4 80AE8E14 E4820250 */  swc1    $f2, 0x0250($a0)           ## 00000250
/* 009D8 80AE8E18 E4820248 */  swc1    $f2, 0x0248($a0)           ## 00000248
/* 009DC 80AE8E1C E48C0230 */  swc1    $f12, 0x0230($a0)          ## 00000230
/* 009E0 80AE8E20 E48C0234 */  swc1    $f12, 0x0234($a0)          ## 00000234
/* 009E4 80AE8E24 E48C0238 */  swc1    $f12, 0x0238($a0)          ## 00000238
/* 009E8 80AE8E28 E48C023C */  swc1    $f12, 0x023C($a0)          ## 0000023C
/* 009EC 80AE8E2C E48C0240 */  swc1    $f12, 0x0240($a0)          ## 00000240
/* 009F0 80AE8E30 E4880218 */  swc1    $f8, 0x0218($a0)           ## 00000218
/* 009F4 80AE8E34 E48A0220 */  swc1    $f10, 0x0220($a0)          ## 00000220
.L80AE8E38:
/* 009F8 80AE8E38 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 00000003
/* 009FC 80AE8E3C E4620288 */  swc1    $f2, 0x0288($v1)           ## 000002C8
/* 00A00 80AE8E40 E4620290 */  swc1    $f2, 0x0290($v1)           ## 000002D0
/* 00A04 80AE8E44 E4620294 */  swc1    $f2, 0x0294($v1)           ## 000002D4
/* 00A08 80AE8E48 E4620298 */  swc1    $f2, 0x0298($v1)           ## 000002D8
/* 00A0C 80AE8E4C E46C0280 */  swc1    $f12, 0x0280($v1)          ## 000002C0
/* 00A10 80AE8E50 E46C027C */  swc1    $f12, 0x027C($v1)          ## 000002BC
/* 00A14 80AE8E54 E46C0278 */  swc1    $f12, 0x0278($v1)          ## 000002B8
/* 00A18 80AE8E58 E46C0274 */  swc1    $f12, 0x0274($v1)          ## 000002B4
/* 00A1C 80AE8E5C E46C0270 */  swc1    $f12, 0x0270($v1)          ## 000002B0
/* 00A20 80AE8E60 E460026C */  swc1    $f0, 0x026C($v1)           ## 000002AC
/* 00A24 80AE8E64 24630080 */  addiu   $v1, $v1, 0x0080           ## $v1 = 000000C0
/* 00A28 80AE8E68 E46201C8 */  swc1    $f2, 0x01C8($v1)           ## 00000288
/* 00A2C 80AE8E6C E46201D0 */  swc1    $f2, 0x01D0($v1)           ## 00000290
/* 00A30 80AE8E70 E46201D4 */  swc1    $f2, 0x01D4($v1)           ## 00000294
/* 00A34 80AE8E74 E46201D8 */  swc1    $f2, 0x01D8($v1)           ## 00000298
/* 00A38 80AE8E78 E46C01C0 */  swc1    $f12, 0x01C0($v1)          ## 00000280
/* 00A3C 80AE8E7C E46C01BC */  swc1    $f12, 0x01BC($v1)          ## 0000027C
/* 00A40 80AE8E80 E46C01B8 */  swc1    $f12, 0x01B8($v1)          ## 00000278
/* 00A44 80AE8E84 E46C01B4 */  swc1    $f12, 0x01B4($v1)          ## 00000274
/* 00A48 80AE8E88 E46C01B0 */  swc1    $f12, 0x01B0($v1)          ## 00000270
/* 00A4C 80AE8E8C 1445FFEA */  bne     $v0, $a1, .L80AE8E38       
/* 00A50 80AE8E90 E46001AC */  swc1    $f0, 0x01AC($v1)           ## 0000026C
/* 00A54 80AE8E94 3C0F80AF */  lui     $t7, %hi(func_80AE9D1C)    ## $t7 = 80AF0000
/* 00A58 80AE8E98 25EF9D1C */  addiu   $t7, $t7, %lo(func_80AE9D1C) ## $t7 = 80AE9D1C
/* 00A5C 80AE8E9C 03E00008 */  jr      $ra                        
/* 00A60 80AE8EA0 AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
