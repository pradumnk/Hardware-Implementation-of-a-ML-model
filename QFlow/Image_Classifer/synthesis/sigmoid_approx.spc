*SPICE netlist created from BLIF module sigmoid_approx by blif2BSpice
.include /usr/local/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt sigmoid_approx vdd gnd Y[0] Y[1] Y[2] Y[3] Y[4] Y[5] Y[6] Y[7] Y[8] Y[9] Y[10] Y[11] Y[12] Y[13] Y[14] Y[15] Y[16] Y[17] Y[18] Y[19] Y[20] Y[21] Y[22] Y[23] Y[24] Y[25] Y[26] Y[27] Y[28] Y[29] Y[30] Y[31] O[0] O[1] O[2] O[3] O[4] O[5] O[6] O[7] O[8] O[9] O[10] O[11] O[12] O[13] O[14] O[15] O[16] O[17] O[18] O[19] O[20] O[21] O[22] O[23] O[24] O[25] O[26] O[27] O[28] O[29] O[30] O[31] 
XBUFX2_1 vdd gnd _39_ _39__bF$buf3 BUFX2
XBUFX2_2 vdd gnd _39_ _39__bF$buf2 BUFX2
XBUFX2_3 vdd gnd _39_ _39__bF$buf1 BUFX2
XBUFX2_4 vdd gnd _39_ _39__bF$buf0 BUFX2
XBUFX2_5 vdd gnd Y[31] Y[31_bF$buf3] BUFX2
XBUFX2_6 vdd gnd Y[31] Y[31_bF$buf2] BUFX2
XBUFX2_7 vdd gnd Y[31] Y[31_bF$buf1] BUFX2
XBUFX2_8 vdd gnd Y[31] Y[31_bF$buf0] BUFX2
XINVX1_1 Y[31_bF$buf3] _72_ vdd gnd INVX1
XNOR2X1_1 vdd Y[3] gnd _73_ Y[0] NOR2X1
XNOR2X1_2 vdd Y[2] gnd _74_ Y[1] NOR2X1
XNAND2X1_1 vdd _75_ gnd _73_ _74_ NAND2X1
XNOR2X1_3 vdd Y[4] gnd _76_ Y[5] NOR2X1
XNOR2X1_4 vdd Y[7] gnd _77_ Y[6] NOR2X1
XNAND2X1_2 vdd _78_ gnd _76_ _77_ NAND2X1
XNOR2X1_5 vdd _78_ gnd _79_ _75_ NOR2X1
XNOR2X1_6 vdd Y[9] gnd _80_ Y[8] NOR2X1
XNOR2X1_7 vdd Y[11] gnd _81_ Y[10] NOR2X1
XNAND2X1_3 vdd _82_ gnd _80_ _81_ NAND2X1
XNOR2X1_8 vdd Y[13] gnd _83_ Y[12] NOR2X1
XNOR2X1_9 vdd Y[15] gnd _84_ Y[14] NOR2X1
XNAND2X1_4 vdd _85_ gnd _83_ _84_ NAND2X1
XNOR2X1_10 vdd _85_ gnd _86_ _82_ NOR2X1
XNOR2X1_11 vdd Y[16] gnd _87_ Y[17] NOR2X1
XNOR2X1_12 vdd Y[19] gnd _88_ Y[18] NOR2X1
XNAND2X1_5 vdd _89_ gnd _87_ _88_ NAND2X1
XNOR2X1_13 vdd Y[22] gnd _90_ Y[21] NOR2X1
XNOR2X1_14 vdd Y[23] gnd _91_ Y[20] NOR2X1
XNAND2X1_6 vdd _92_ gnd _90_ _91_ NAND2X1
XNOR2X1_15 vdd _92_ gnd _93_ _89_ NOR2X1
XNAND3X1_1 _86_ vdd gnd _79_ _93_ _94_ NAND3X1
XNOR2X1_16 vdd Y[25] gnd _95_ Y[24] NOR2X1
XINVX1_2 _95_ _96_ vdd gnd INVX1
XOR2X2_1 _97_ Y[27] vdd gnd Y[26] OR2X2
XNOR2X1_17 vdd _96_ gnd _98_ _97_ NOR2X1
XINVX1_3 _98_ _99_ vdd gnd INVX1
XNOR3X1_1 vdd gnd _99_ _94_ Y[28] _100_ NOR3X1
XNAND2X1_7 vdd _101_ gnd Y[30] Y[29] NAND2X1
XNOR2X1_18 vdd Y[29] gnd _102_ Y[30] NOR2X1
XNAND2X1_8 vdd _103_ gnd _102_ _100_ NAND2X1
XOAI21X1_1 gnd vdd _100_ _101_ _104_ _103_ OAI21X1
XINVX1_4 _90_ _105_ vdd gnd INVX1
XINVX1_5 Y[20] _106_ vdd gnd INVX1
XAND2X2_1 vdd gnd _73_ _74_ _107_ AND2X2
XAND2X2_2 vdd gnd _76_ _77_ _108_ AND2X2
XNAND2X1_9 vdd _109_ gnd _107_ _108_ NAND2X1
XAND2X2_3 vdd gnd _80_ _81_ _110_ AND2X2
XAND2X2_4 vdd gnd _83_ _84_ _111_ AND2X2
XNAND2X1_10 vdd _112_ gnd _110_ _111_ NAND2X1
XNOR2X1_19 vdd _112_ gnd _113_ _109_ NOR2X1
XAND2X2_5 vdd gnd _87_ _88_ _114_ AND2X2
XNAND3X1_2 _114_ vdd gnd _106_ _113_ _115_ NAND3X1
XOAI21X1_2 gnd vdd _105_ _115_ _116_ Y[23] OAI21X1
XAND2X2_6 vdd gnd _90_ _91_ _117_ AND2X2
XNAND2X1_11 vdd _118_ gnd _114_ _117_ NAND2X1
XNOR3X1_2 vdd gnd _112_ _118_ _109_ _119_ NOR3X1
XNAND2X1_12 vdd _120_ gnd _98_ _119_ NAND2X1
XOR2X2_2 _121_ _96_ vdd gnd _94_ OR2X2
XOAI21X1_3 gnd vdd Y[26] _121_ _0_ Y[27] OAI21X1
XAOI22X1_1 gnd vdd _120_ _0_ _1_ _94_ _116_ AOI22X1
XAOI21X1_1 gnd vdd _1_ _104_ _2_ _72_ AOI21X1
XNOR3X1_3 vdd gnd _96_ _94_ Y[26] _3_ NOR3X1
XINVX1_6 Y[26] _4_ vdd gnd INVX1
XAOI21X1_2 gnd vdd _119_ _95_ _5_ _4_ AOI21X1
XINVX1_7 Y[28] _6_ vdd gnd INVX1
XAOI21X1_3 gnd vdd _119_ _98_ _7_ _6_ AOI21X1
XOAI22X1_1 gnd vdd _7_ _100_ _3_ _5_ _8_ OAI22X1
XINVX1_8 Y[18] _9_ vdd gnd INVX1
XNAND3X1_3 _79_ vdd gnd _87_ _86_ _10_ NAND3X1
XNAND3X1_4 _9_ vdd gnd Y[31_bF$buf2] _10_ _11_ NAND3X1
XINVX1_9 Y[16] _12_ vdd gnd INVX1
XNAND3X1_5 _79_ vdd gnd _12_ _86_ _13_ NAND3X1
XOAI21X1_4 gnd vdd Y[17] _13_ _14_ Y[31_bF$buf1] OAI21X1
XNAND2X1_13 vdd _15_ gnd Y[18] _14_ NAND2X1
XNAND2X1_14 vdd _16_ gnd _11_ _15_ NAND2X1
XNAND3X1_6 Y[17] vdd gnd Y[31_bF$buf0] _13_ _17_ NAND3X1
XINVX1_10 _17_ _18_ vdd gnd INVX1
XAOI21X1_4 gnd vdd _13_ Y[31_bF$buf3] _19_ Y[17] AOI21X1
XAOI21X1_5 gnd vdd _86_ _79_ _20_ _72_ AOI21X1
XXNOR2X1_1 _20_ Y[16] gnd vdd _21_ XNOR2X1
XOAI21X1_5 gnd vdd _18_ _19_ _22_ _21_ OAI21X1
XAOI22X1_2 gnd vdd Y[31_bF$buf2] _8_ _23_ _16_ _22_ AOI22X1
XOAI21X1_6 gnd vdd Y[24] _94_ _24_ Y[25] OAI21X1
XAND2X2_7 vdd gnd _121_ _24_ _25_ AND2X2
XAND2X2_8 vdd gnd Y[21] Y[22] _26_ AND2X2
XMUX2X1_1 _115_ vdd gnd _27_ _26_ _90_ MUX2X1
XOAI21X1_7 gnd vdd _25_ _27_ _28_ Y[31_bF$buf1] OAI21X1
XOAI21X1_8 gnd vdd Y[18] _10_ _29_ Y[31_bF$buf0] OAI21X1
XXNOR2X1_2 _29_ Y[19] gnd vdd _30_ XNOR2X1
XNOR2X1_20 vdd Y[28] gnd _31_ Y[31_bF$buf3] NOR2X1
XAND2X2_9 vdd gnd _102_ _31_ _32_ AND2X2
XNAND3X1_7 _32_ vdd gnd _117_ _98_ _33_ NAND3X1
XXNOR2X1_3 _94_ Y[24] gnd vdd _34_ XNOR2X1
XNAND3X1_8 _79_ vdd gnd _114_ _86_ _35_ NAND3X1
XXNOR2X1_4 _35_ Y[20] gnd vdd _36_ XNOR2X1
XNAND3X1_9 _36_ vdd gnd Y[31_bF$buf2] _34_ _37_ NAND3X1
XAOI21X1_6 gnd vdd _37_ _33_ _38_ _30_ AOI21X1
XNAND3X1_10 _38_ vdd gnd _28_ _23_ _39_ NAND3X1
XNAND2X1_15 vdd _40_ gnd Y[31_bF$buf1] _75_ NAND2X1
XXOR2X1_1 _41_ vdd Y[4] _40_ gnd XOR2X1
XNOR3X1_4 vdd gnd _41_ _39__bF$buf2 _2_ _122_[0] NOR3X1
XOAI21X1_9 gnd vdd Y[4] _75_ _42_ Y[31_bF$buf0] OAI21X1
XXOR2X1_2 _43_ vdd Y[5] _42_ gnd XOR2X1
XNOR3X1_5 vdd gnd _43_ _39__bF$buf2 _2_ _122_[1] NOR3X1
XNAND2X1_16 vdd _44_ gnd _76_ _107_ NAND2X1
XNAND2X1_17 vdd _45_ gnd Y[31_bF$buf3] _44_ NAND2X1
XXOR2X1_3 _46_ vdd Y[6] _45_ gnd XOR2X1
XNOR3X1_6 vdd gnd _46_ _39__bF$buf0 _2_ _122_[2] NOR3X1
XOAI21X1_10 gnd vdd Y[6] _44_ _47_ Y[31_bF$buf2] OAI21X1
XXOR2X1_4 _48_ vdd Y[7] _47_ gnd XOR2X1
XNOR3X1_7 vdd gnd _48_ _39__bF$buf0 _2_ _122_[3] NOR3X1
XINVX1_11 Y[8] _49_ vdd gnd INVX1
XOAI21X1_11 gnd vdd _75_ _78_ _50_ Y[31_bF$buf1] OAI21X1
XXNOR2X1_5 _50_ _49_ gnd vdd _51_ XNOR2X1
XNOR3X1_8 vdd gnd _51_ _39__bF$buf2 _2_ _122_[4] NOR3X1
XOAI21X1_12 gnd vdd _72_ _49_ _52_ _50_ OAI21X1
XXNOR2X1_6 _52_ Y[9] gnd vdd _53_ XNOR2X1
XNOR3X1_9 vdd gnd _53_ _39__bF$buf2 _2_ _122_[5] NOR3X1
XNAND2X1_18 vdd _54_ gnd _80_ _79_ NAND2X1
XNAND2X1_19 vdd _55_ gnd Y[31_bF$buf0] _54_ NAND2X1
XXOR2X1_5 _56_ vdd Y[10] _55_ gnd XOR2X1
XNOR3X1_10 vdd gnd _56_ _39__bF$buf3 _2_ _122_[6] NOR3X1
XOAI21X1_13 gnd vdd Y[10] _54_ _57_ Y[31_bF$buf3] OAI21X1
XXOR2X1_6 _58_ vdd Y[11] _57_ gnd XOR2X1
XNOR3X1_11 vdd gnd _58_ _39__bF$buf0 _2_ _122_[7] NOR3X1
XOAI21X1_14 gnd vdd _82_ _109_ _59_ Y[31_bF$buf2] OAI21X1
XXOR2X1_7 _60_ vdd Y[12] _59_ gnd XOR2X1
XNOR3X1_12 vdd gnd _60_ _39__bF$buf3 _2_ _122_[8] NOR3X1
XNAND2X1_20 vdd _61_ gnd _110_ _79_ NAND2X1
XOAI21X1_15 gnd vdd Y[12] _61_ _62_ Y[31_bF$buf1] OAI21X1
XXOR2X1_8 _63_ vdd Y[13] _62_ gnd XOR2X1
XNOR3X1_13 vdd gnd _63_ _39__bF$buf0 _2_ _122_[9] NOR3X1
XINVX1_12 Y[14] _64_ vdd gnd INVX1
XINVX1_13 _83_ _65_ vdd gnd INVX1
XOAI21X1_16 gnd vdd _65_ _61_ _66_ Y[31_bF$buf0] OAI21X1
XXNOR2X1_7 _66_ _64_ gnd vdd _67_ XNOR2X1
XNOR3X1_14 vdd gnd _67_ _39__bF$buf3 _2_ _122_[10] NOR3X1
XOAI21X1_17 gnd vdd _72_ _64_ _68_ _66_ OAI21X1
XXNOR2X1_8 _68_ Y[15] gnd vdd _69_ XNOR2X1
XNOR3X1_15 vdd gnd _69_ _39__bF$buf1 _2_ _122_[11] NOR3X1
XNOR3X1_16 vdd gnd _21_ _39__bF$buf1 _2_ _122_[12] NOR3X1
XOR2X2_3 _70_ _19_ vdd gnd _18_ OR2X2
XNOR3X1_17 vdd gnd _70_ _39__bF$buf1 _2_ _122_[13] NOR3X1
XINVX1_14 _16_ _71_ vdd gnd INVX1
XNOR3X1_18 vdd gnd _71_ _39__bF$buf3 _2_ _122_[14] NOR3X1
XNOR2X1_21 vdd _39__bF$buf3 gnd _122_[15] Y[31_bF$buf3] NOR2X1
XAND2X2_10 vdd gnd _39__bF$buf1 _72_ _122_[16] AND2X2
XBUFX2_9 vdd gnd _122_[0] O[0] BUFX2
XBUFX2_10 vdd gnd _122_[1] O[1] BUFX2
XBUFX2_11 vdd gnd _122_[2] O[2] BUFX2
XBUFX2_12 vdd gnd _122_[3] O[3] BUFX2
XBUFX2_13 vdd gnd _122_[4] O[4] BUFX2
XBUFX2_14 vdd gnd _122_[5] O[5] BUFX2
XBUFX2_15 vdd gnd _122_[6] O[6] BUFX2
XBUFX2_16 vdd gnd _122_[7] O[7] BUFX2
XBUFX2_17 vdd gnd _122_[8] O[8] BUFX2
XBUFX2_18 vdd gnd _122_[9] O[9] BUFX2
XBUFX2_19 vdd gnd _122_[10] O[10] BUFX2
XBUFX2_20 vdd gnd _122_[11] O[11] BUFX2
XBUFX2_21 vdd gnd _122_[12] O[12] BUFX2
XBUFX2_22 vdd gnd _122_[13] O[13] BUFX2
XBUFX2_23 vdd gnd _122_[14] O[14] BUFX2
XBUFX2_24 vdd gnd _122_[15] O[15] BUFX2
XBUFX2_25 vdd gnd _122_[16] O[16] BUFX2
XBUFX2_26 vdd gnd gnd O[17] BUFX2
XBUFX2_27 vdd gnd gnd O[18] BUFX2
XBUFX2_28 vdd gnd gnd O[19] BUFX2
XBUFX2_29 vdd gnd gnd O[20] BUFX2
XBUFX2_30 vdd gnd gnd O[21] BUFX2
XBUFX2_31 vdd gnd gnd O[22] BUFX2
XBUFX2_32 vdd gnd gnd O[23] BUFX2
XBUFX2_33 vdd gnd gnd O[24] BUFX2
XBUFX2_34 vdd gnd gnd O[25] BUFX2
XBUFX2_35 vdd gnd gnd O[26] BUFX2
XBUFX2_36 vdd gnd gnd O[27] BUFX2
XBUFX2_37 vdd gnd gnd O[28] BUFX2
XBUFX2_38 vdd gnd gnd O[29] BUFX2
XBUFX2_39 vdd gnd gnd O[30] BUFX2
XBUFX2_40 vdd gnd gnd O[31] BUFX2
XFILL_0_0_0 vdd gnd FILL
XFILL_0_0_1 vdd gnd FILL
XFILL_0_0_2 vdd gnd FILL
XFILL_0_1_0 vdd gnd FILL
XFILL_0_1_1 vdd gnd FILL
XFILL_0_1_2 vdd gnd FILL
XFILL_1_1 vdd gnd FILL
XFILL_1_0_0 vdd gnd FILL
XFILL_1_0_1 vdd gnd FILL
XFILL_1_0_2 vdd gnd FILL
XFILL_1_1_0 vdd gnd FILL
XFILL_1_1_1 vdd gnd FILL
XFILL_1_1_2 vdd gnd FILL
XFILL_2_1 vdd gnd FILL
XFILL_2_2 vdd gnd FILL
XFILL_2_3 vdd gnd FILL
XFILL_2_0_0 vdd gnd FILL
XFILL_2_0_1 vdd gnd FILL
XFILL_2_0_2 vdd gnd FILL
XFILL_2_1_0 vdd gnd FILL
XFILL_2_1_1 vdd gnd FILL
XFILL_2_1_2 vdd gnd FILL
XFILL_3_1 vdd gnd FILL
XFILL_3_0_0 vdd gnd FILL
XFILL_3_0_1 vdd gnd FILL
XFILL_3_0_2 vdd gnd FILL
XFILL_3_1_0 vdd gnd FILL
XFILL_3_1_1 vdd gnd FILL
XFILL_3_1_2 vdd gnd FILL
XFILL_4_1 vdd gnd FILL
XFILL_4_0_0 vdd gnd FILL
XFILL_4_0_1 vdd gnd FILL
XFILL_4_0_2 vdd gnd FILL
XFILL_4_1_0 vdd gnd FILL
XFILL_4_1_1 vdd gnd FILL
XFILL_4_1_2 vdd gnd FILL
XFILL_5_1 vdd gnd FILL
XFILL_5_0_0 vdd gnd FILL
XFILL_5_0_1 vdd gnd FILL
XFILL_5_0_2 vdd gnd FILL
XFILL_5_1_0 vdd gnd FILL
XFILL_5_1_1 vdd gnd FILL
XFILL_5_1_2 vdd gnd FILL
XFILL_6_1 vdd gnd FILL
XFILL_6_2 vdd gnd FILL
XFILL_6_3 vdd gnd FILL
XFILL_6_0_0 vdd gnd FILL
XFILL_6_0_1 vdd gnd FILL
XFILL_6_0_2 vdd gnd FILL
XFILL_6_1_0 vdd gnd FILL
XFILL_6_1_1 vdd gnd FILL
XFILL_6_1_2 vdd gnd FILL
.ends sigmoid_approx
 
