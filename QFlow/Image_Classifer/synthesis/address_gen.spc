*SPICE netlist created from BLIF module address_gen by blif2BSpice
.include /usr/local/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt address_gen vdd gnd address_enable clock reset address_a[0] address_a[1] address_a[2] address_a[3] address_a[4] address_a[5] address_a[6] address_a[7] address_a[8] address_a[9] address_a[10] address_a[11] address_a[12] address_a[13] address_a[14] address_a[15] address_b[0] address_b[1] address_b[2] address_b[3] address_b[4] address_b[5] address_b[6] address_b[7] address_b[8] address_b[9] address_b[10] address_b[11] address_b[12] address_b[13] address_b[14] address_b[15] 
XCLKBUF1_1 clock vdd gnd clock_bF$buf4 CLKBUF1
XCLKBUF1_2 clock vdd gnd clock_bF$buf3 CLKBUF1
XCLKBUF1_3 clock vdd gnd clock_bF$buf2 CLKBUF1
XCLKBUF1_4 clock vdd gnd clock_bF$buf1 CLKBUF1
XCLKBUF1_5 clock vdd gnd clock_bF$buf0 CLKBUF1
XBUFX2_1 vdd gnd _93_ _93__bF$buf4 BUFX2
XBUFX2_2 vdd gnd _93_ _93__bF$buf3 BUFX2
XBUFX2_3 vdd gnd _93_ _93__bF$buf2 BUFX2
XBUFX2_4 vdd gnd _93_ _93__bF$buf1 BUFX2
XBUFX2_5 vdd gnd _93_ _93__bF$buf0 BUFX2
XINVX1_1 _112_[14] _82_ vdd gnd INVX1
XAND2X2_1 vdd gnd _112_[9] _112_[8] _83_ AND2X2
XAND2X2_2 vdd gnd _112_[11] _112_[10] _84_ AND2X2
XNAND2X1_1 vdd _85_ gnd _83_ _84_ NAND2X1
XNAND2X1_2 vdd _86_ gnd _112_[7] _112_[6] NAND2X1
XAND2X2_3 vdd gnd _112_[5] _112_[4] _87_ AND2X2
XAND2X2_4 vdd gnd _112_[1] address_enable _88_ AND2X2
XAND2X2_5 vdd gnd _112_[2] _112_[3] _89_ AND2X2
XNAND3X1_1 _88_ vdd gnd _87_ _89_ _90_ NAND3X1
XNOR3X1_1 vdd gnd _85_ _90_ _86_ _91_ NOR3X1
XNAND3X1_2 _112_[12] vdd gnd _112_[13] _91_ _92_ NAND3X1
XINVX1_2 reset _93_ vdd gnd INVX1
XNAND2X1_3 vdd _94_ gnd _112_[9] _112_[8] NAND2X1
XNAND2X1_4 vdd _95_ gnd _112_[11] _112_[10] NAND2X1
XNOR2X1_1 vdd _95_ gnd _96_ _94_ NOR2X1
XNAND2X1_5 vdd _97_ gnd _112_[5] _112_[4] NAND2X1
XNOR2X1_2 vdd _86_ gnd _98_ _97_ NOR2X1
XNAND2X1_6 vdd _99_ gnd _112_[1] address_enable NAND2X1
XNAND2X1_7 vdd _100_ gnd _112_[2] _112_[3] NAND2X1
XNOR2X1_3 vdd _100_ gnd _101_ _99_ NOR2X1
XNAND3X1_3 _98_ vdd gnd _96_ _101_ _102_ NAND3X1
XNAND3X1_4 _112_[12] vdd gnd _112_[13] _112_[14] _103_ NAND3X1
XOAI21X1_1 gnd vdd _103_ _102_ _104_ _93__bF$buf4 OAI21X1
XAOI21X1_1 gnd vdd _92_ _82_ _1_[14] _104_ AOI21X1
XNOR2X1_4 vdd _102_ gnd _105_ _103_ NOR2X1
XINVX1_3 _112_[15] _106_ vdd gnd INVX1
XOAI21X1_2 gnd vdd _103_ _102_ _107_ _106_ OAI21X1
XNAND2X1_8 vdd _108_ gnd _93__bF$buf4 _107_ NAND2X1
XAOI21X1_2 gnd vdd _112_[15] _105_ _1_[15] _108_ AOI21X1
XAND2X2_6 vdd gnd _93__bF$buf3 _111_[0] _0_[0] AND2X2
XAND2X2_7 vdd gnd address_enable _111_[1] _109_ AND2X2
XOAI21X1_3 gnd vdd address_enable _111_[1] _110_ _93__bF$buf2 OAI21X1
XNOR2X1_5 vdd _110_ gnd _0_[1] _109_ NOR2X1
XNAND2X1_9 vdd _2_ gnd _111_[2] _109_ NAND2X1
XINVX1_4 _2_ _3_ vdd gnd INVX1
XOAI21X1_4 gnd vdd _111_[2] _109_ _4_ _93__bF$buf3 OAI21X1
XNOR2X1_6 vdd _3_ gnd _0_[2] _4_ NOR2X1
XINVX1_5 address_enable _5_ vdd gnd INVX1
XNAND3X1_5 _111_[2] vdd gnd _111_[1] _111_[3] _6_ NAND3X1
XNOR2X1_7 vdd _6_ gnd _7_ _5_ NOR2X1
XOAI21X1_5 gnd vdd _111_[3] _3_ _8_ _93__bF$buf3 OAI21X1
XNOR2X1_8 vdd _8_ gnd _0_[3] _7_ NOR2X1
XOAI21X1_6 gnd vdd _111_[4] _7_ _9_ _93__bF$buf4 OAI21X1
XAOI21X1_3 gnd vdd _111_[4] _7_ _0_[4] _9_ AOI21X1
XAOI21X1_4 gnd vdd _7_ _111_[4] _10_ _111_[5] AOI21X1
XINVX1_6 _7_ _11_ vdd gnd INVX1
XNAND2X1_10 vdd _12_ gnd _111_[4] _111_[5] NAND2X1
XOAI21X1_7 gnd vdd _12_ _11_ _13_ _93__bF$buf4 OAI21X1
XNOR2X1_9 vdd _13_ gnd _0_[5] _10_ NOR2X1
XNOR2X1_10 vdd _11_ gnd _14_ _12_ NOR2X1
XOAI21X1_8 gnd vdd _111_[6] _14_ _15_ _93__bF$buf4 OAI21X1
XAOI21X1_5 gnd vdd _111_[6] _14_ _0_[6] _15_ AOI21X1
XAOI21X1_6 gnd vdd _14_ _111_[6] _16_ _111_[7] AOI21X1
XINVX1_7 _6_ _17_ vdd gnd INVX1
XNAND2X1_11 vdd _18_ gnd _111_[6] _111_[7] NAND2X1
XNOR2X1_11 vdd _18_ gnd _19_ _12_ NOR2X1
XNAND2X1_12 vdd _20_ gnd _17_ _19_ NAND2X1
XOAI21X1_9 gnd vdd _5_ _20_ _21_ _93__bF$buf3 OAI21X1
XNOR2X1_12 vdd _16_ gnd _0_[7] _21_ NOR2X1
XNOR2X1_13 vdd _20_ gnd _22_ _5_ NOR2X1
XOAI21X1_10 gnd vdd _111_[8] _22_ _23_ _93__bF$buf3 OAI21X1
XAOI21X1_7 gnd vdd _111_[8] _22_ _0_[8] _23_ AOI21X1
XAOI21X1_8 gnd vdd _22_ _111_[8] _24_ _111_[9] AOI21X1
XNAND2X1_13 vdd _25_ gnd _111_[8] _111_[9] NAND2X1
XINVX1_8 _25_ _26_ vdd gnd INVX1
XNAND3X1_6 _26_ vdd gnd _19_ _7_ _27_ NAND3X1
XNAND2X1_14 vdd _28_ gnd _93__bF$buf0 _27_ NAND2X1
XNOR2X1_14 vdd _24_ gnd _0_[9] _28_ NOR2X1
XINVX1_9 _111_[10] _29_ vdd gnd INVX1
XOR2X2_1 _30_ _29_ vdd gnd _27_ OR2X2
XAOI21X1_9 gnd vdd _27_ _29_ _31_ reset AOI21X1
XAND2X2_8 vdd gnd _30_ _31_ _0_[10] AND2X2
XINVX1_10 _111_[11] _32_ vdd gnd INVX1
XNAND2X1_15 vdd _33_ gnd _111_[10] _111_[11] NAND2X1
XNOR2X1_15 vdd _33_ gnd _34_ _25_ NOR2X1
XNAND3X1_7 _34_ vdd gnd _19_ _7_ _35_ NAND3X1
XNAND2X1_16 vdd _36_ gnd _93__bF$buf0 _35_ NAND2X1
XAOI21X1_10 gnd vdd _30_ _32_ _0_[11] _36_ AOI21X1
XINVX1_11 _111_[12] _37_ vdd gnd INVX1
XOR2X2_2 _38_ _37_ vdd gnd _35_ OR2X2
XAOI21X1_11 gnd vdd _35_ _37_ _39_ reset AOI21X1
XAND2X2_9 vdd gnd _38_ _39_ _0_[12] AND2X2
XINVX1_12 _111_[13] _40_ vdd gnd INVX1
XNAND2X1_17 vdd _41_ gnd _111_[12] _111_[13] NAND2X1
XOAI21X1_11 gnd vdd _41_ _35_ _42_ _93__bF$buf0 OAI21X1
XAOI21X1_12 gnd vdd _38_ _40_ _0_[13] _42_ AOI21X1
XNOR2X1_16 vdd _35_ gnd _43_ _41_ NOR2X1
XNOR2X1_17 vdd _43_ gnd _44_ _111_[14] NOR2X1
XNAND2X1_18 vdd _45_ gnd address_enable _111_[14] NAND2X1
XNOR2X1_18 vdd _45_ gnd _46_ _41_ NOR2X1
XAND2X2_10 vdd gnd _46_ _17_ _47_ AND2X2
XAND2X2_11 vdd gnd _19_ _34_ _48_ AND2X2
XNAND2X1_19 vdd _49_ gnd _47_ _48_ NAND2X1
XNAND2X1_20 vdd _50_ gnd _93__bF$buf0 _49_ NAND2X1
XNOR2X1_19 vdd _44_ gnd _0_[14] _50_ NOR2X1
XINVX1_13 _111_[15] _51_ vdd gnd INVX1
XOAI21X1_12 gnd vdd _51_ _49_ _52_ _93__bF$buf0 OAI21X1
XAOI21X1_13 gnd vdd _51_ _49_ _0_[15] _52_ AOI21X1
XOR2X2_3 _1_[0] _112_[0] vdd gnd reset OR2X2
XOAI21X1_13 gnd vdd _112_[1] address_enable _53_ _93__bF$buf2 OAI21X1
XNOR2X1_20 vdd _53_ gnd _1_[1] _88_ NOR2X1
XOAI21X1_14 gnd vdd _112_[2] _88_ _54_ _93__bF$buf2 OAI21X1
XAOI21X1_14 gnd vdd _112_[2] _88_ _1_[2] _54_ AOI21X1
XAOI21X1_15 gnd vdd _88_ _112_[2] _55_ _112_[3] AOI21X1
XOAI21X1_15 gnd vdd _99_ _100_ _56_ _93__bF$buf2 OAI21X1
XNOR2X1_21 vdd _55_ gnd _1_[3] _56_ NOR2X1
XOAI21X1_16 gnd vdd _112_[4] _101_ _57_ _93__bF$buf1 OAI21X1
XAOI21X1_16 gnd vdd _112_[4] _101_ _1_[4] _57_ AOI21X1
XAOI21X1_17 gnd vdd _101_ _112_[4] _58_ _112_[5] AOI21X1
XNAND2X1_21 vdd _59_ gnd _93__bF$buf2 _90_ NAND2X1
XNOR2X1_22 vdd _58_ gnd _1_[5] _59_ NOR2X1
XINVX1_14 _112_[6] _60_ vdd gnd INVX1
XOAI21X1_17 gnd vdd _60_ _90_ _61_ _93__bF$buf1 OAI21X1
XAOI21X1_18 gnd vdd _60_ _90_ _1_[6] _61_ AOI21X1
XINVX1_15 _112_[7] _62_ vdd gnd INVX1
XOAI21X1_18 gnd vdd _60_ _90_ _63_ _62_ OAI21X1
XOAI21X1_19 gnd vdd _86_ _90_ _64_ _63_ OAI21X1
XNOR2X1_23 vdd _64_ gnd _1_[7] reset NOR2X1
XINVX1_16 _112_[8] _65_ vdd gnd INVX1
XNAND2X1_22 vdd _66_ gnd _98_ _101_ NAND2X1
XOAI21X1_20 gnd vdd _65_ _66_ _67_ _93__bF$buf1 OAI21X1
XAOI21X1_19 gnd vdd _65_ _66_ _1_[8] _67_ AOI21X1
XINVX1_17 _112_[9] _68_ vdd gnd INVX1
XOAI21X1_21 gnd vdd _65_ _66_ _69_ _68_ OAI21X1
XNAND3X1_8 _98_ vdd gnd _83_ _101_ _70_ NAND3X1
XAND2X2_12 vdd gnd _70_ _93__bF$buf1 _71_ AND2X2
XAND2X2_13 vdd gnd _71_ _69_ _1_[9] AND2X2
XINVX1_18 _112_[10] _72_ vdd gnd INVX1
XOR2X2_4 _73_ _72_ vdd gnd _70_ OR2X2
XAOI21X1_20 gnd vdd _70_ _72_ _74_ reset AOI21X1
XAND2X2_14 vdd gnd _73_ _74_ _1_[10] AND2X2
XINVX1_19 _112_[11] _75_ vdd gnd INVX1
XOAI21X1_22 gnd vdd _85_ _66_ _76_ _93__bF$buf1 OAI21X1
XAOI21X1_21 gnd vdd _73_ _75_ _1_[11] _76_ AOI21X1
XINVX1_20 _112_[12] _77_ vdd gnd INVX1
XOAI21X1_23 gnd vdd _77_ _102_ _78_ _93__bF$buf4 OAI21X1
XAOI21X1_22 gnd vdd _77_ _102_ _1_[12] _78_ AOI21X1
XINVX1_21 _112_[13] _79_ vdd gnd INVX1
XNOR3X1_2 vdd gnd _77_ _102_ _79_ _80_ NOR3X1
XAOI21X1_23 gnd vdd _91_ _112_[12] _81_ _112_[13] AOI21X1
XNOR3X1_3 vdd gnd _80_ _81_ reset _1_[13] NOR3X1
XBUFX2_6 vdd gnd _111_[0] address_a[0] BUFX2
XBUFX2_7 vdd gnd _111_[1] address_a[1] BUFX2
XBUFX2_8 vdd gnd _111_[2] address_a[2] BUFX2
XBUFX2_9 vdd gnd _111_[3] address_a[3] BUFX2
XBUFX2_10 vdd gnd _111_[4] address_a[4] BUFX2
XBUFX2_11 vdd gnd _111_[5] address_a[5] BUFX2
XBUFX2_12 vdd gnd _111_[6] address_a[6] BUFX2
XBUFX2_13 vdd gnd _111_[7] address_a[7] BUFX2
XBUFX2_14 vdd gnd _111_[8] address_a[8] BUFX2
XBUFX2_15 vdd gnd _111_[9] address_a[9] BUFX2
XBUFX2_16 vdd gnd _111_[10] address_a[10] BUFX2
XBUFX2_17 vdd gnd _111_[11] address_a[11] BUFX2
XBUFX2_18 vdd gnd _111_[12] address_a[12] BUFX2
XBUFX2_19 vdd gnd _111_[13] address_a[13] BUFX2
XBUFX2_20 vdd gnd _111_[14] address_a[14] BUFX2
XBUFX2_21 vdd gnd _111_[15] address_a[15] BUFX2
XBUFX2_22 vdd gnd _112_[0] address_b[0] BUFX2
XBUFX2_23 vdd gnd _112_[1] address_b[1] BUFX2
XBUFX2_24 vdd gnd _112_[2] address_b[2] BUFX2
XBUFX2_25 vdd gnd _112_[3] address_b[3] BUFX2
XBUFX2_26 vdd gnd _112_[4] address_b[4] BUFX2
XBUFX2_27 vdd gnd _112_[5] address_b[5] BUFX2
XBUFX2_28 vdd gnd _112_[6] address_b[6] BUFX2
XBUFX2_29 vdd gnd _112_[7] address_b[7] BUFX2
XBUFX2_30 vdd gnd _112_[8] address_b[8] BUFX2
XBUFX2_31 vdd gnd _112_[9] address_b[9] BUFX2
XBUFX2_32 vdd gnd _112_[10] address_b[10] BUFX2
XBUFX2_33 vdd gnd _112_[11] address_b[11] BUFX2
XBUFX2_34 vdd gnd _112_[12] address_b[12] BUFX2
XBUFX2_35 vdd gnd _112_[13] address_b[13] BUFX2
XBUFX2_36 vdd gnd _112_[14] address_b[14] BUFX2
XBUFX2_37 vdd gnd _112_[15] address_b[15] BUFX2
XDFFPOSX1_1 vdd _0_[0] gnd _111_[0] clock_bF$buf1 DFFPOSX1
XDFFPOSX1_2 vdd _0_[1] gnd _111_[1] clock_bF$buf2 DFFPOSX1
XDFFPOSX1_3 vdd _0_[2] gnd _111_[2] clock_bF$buf2 DFFPOSX1
XDFFPOSX1_4 vdd _0_[3] gnd _111_[3] clock_bF$buf1 DFFPOSX1
XDFFPOSX1_5 vdd _0_[4] gnd _111_[4] clock_bF$buf0 DFFPOSX1
XDFFPOSX1_6 vdd _0_[5] gnd _111_[5] clock_bF$buf0 DFFPOSX1
XDFFPOSX1_7 vdd _0_[6] gnd _111_[6] clock_bF$buf0 DFFPOSX1
XDFFPOSX1_8 vdd _0_[7] gnd _111_[7] clock_bF$buf4 DFFPOSX1
XDFFPOSX1_9 vdd _0_[8] gnd _111_[8] clock_bF$buf1 DFFPOSX1
XDFFPOSX1_10 vdd _0_[9] gnd _111_[9] clock_bF$buf4 DFFPOSX1
XDFFPOSX1_11 vdd _0_[10] gnd _111_[10] clock_bF$buf1 DFFPOSX1
XDFFPOSX1_12 vdd _0_[11] gnd _111_[11] clock_bF$buf1 DFFPOSX1
XDFFPOSX1_13 vdd _0_[12] gnd _111_[12] clock_bF$buf0 DFFPOSX1
XDFFPOSX1_14 vdd _0_[13] gnd _111_[13] clock_bF$buf1 DFFPOSX1
XDFFPOSX1_15 vdd _0_[14] gnd _111_[14] clock_bF$buf4 DFFPOSX1
XDFFPOSX1_16 vdd _0_[15] gnd _111_[15] clock_bF$buf4 DFFPOSX1
XDFFPOSX1_17 vdd _1_[0] gnd _112_[0] clock_bF$buf0 DFFPOSX1
XDFFPOSX1_18 vdd _1_[1] gnd _112_[1] clock_bF$buf2 DFFPOSX1
XDFFPOSX1_19 vdd _1_[2] gnd _112_[2] clock_bF$buf2 DFFPOSX1
XDFFPOSX1_20 vdd _1_[3] gnd _112_[3] clock_bF$buf2 DFFPOSX1
XDFFPOSX1_21 vdd _1_[4] gnd _112_[4] clock_bF$buf3 DFFPOSX1
XDFFPOSX1_22 vdd _1_[5] gnd _112_[5] clock_bF$buf2 DFFPOSX1
XDFFPOSX1_23 vdd _1_[6] gnd _112_[6] clock_bF$buf3 DFFPOSX1
XDFFPOSX1_24 vdd _1_[7] gnd _112_[7] clock_bF$buf3 DFFPOSX1
XDFFPOSX1_25 vdd _1_[8] gnd _112_[8] clock_bF$buf4 DFFPOSX1
XDFFPOSX1_26 vdd _1_[9] gnd _112_[9] clock_bF$buf3 DFFPOSX1
XDFFPOSX1_27 vdd _1_[10] gnd _112_[10] clock_bF$buf3 DFFPOSX1
XDFFPOSX1_28 vdd _1_[11] gnd _112_[11] clock_bF$buf3 DFFPOSX1
XDFFPOSX1_29 vdd _1_[12] gnd _112_[12] clock_bF$buf3 DFFPOSX1
XDFFPOSX1_30 vdd _1_[13] gnd _112_[13] clock_bF$buf4 DFFPOSX1
XDFFPOSX1_31 vdd _1_[14] gnd _112_[14] clock_bF$buf4 DFFPOSX1
XDFFPOSX1_32 vdd _1_[15] gnd _112_[15] clock_bF$buf0 DFFPOSX1
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
XFILL_2_0_0 vdd gnd FILL
XFILL_2_0_1 vdd gnd FILL
XFILL_2_0_2 vdd gnd FILL
XFILL_2_1_0 vdd gnd FILL
XFILL_2_1_1 vdd gnd FILL
XFILL_2_1_2 vdd gnd FILL
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
XFILL_6_0_0 vdd gnd FILL
XFILL_6_0_1 vdd gnd FILL
XFILL_6_0_2 vdd gnd FILL
XFILL_6_1_0 vdd gnd FILL
XFILL_6_1_1 vdd gnd FILL
XFILL_6_1_2 vdd gnd FILL
XFILL_7_0_0 vdd gnd FILL
XFILL_7_0_1 vdd gnd FILL
XFILL_7_0_2 vdd gnd FILL
XFILL_7_1_0 vdd gnd FILL
XFILL_7_1_1 vdd gnd FILL
XFILL_7_1_2 vdd gnd FILL
XFILL_8_0_0 vdd gnd FILL
XFILL_8_0_1 vdd gnd FILL
XFILL_8_0_2 vdd gnd FILL
XFILL_8_1_0 vdd gnd FILL
XFILL_8_1_1 vdd gnd FILL
XFILL_8_1_2 vdd gnd FILL
.ends address_gen
 
