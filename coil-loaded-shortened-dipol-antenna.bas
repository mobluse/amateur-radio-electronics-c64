10 E = 5
20 G1 = 25
30 G2 = 25
100 REM  CLEAR SCREEN
110 GOSUB 20000
150 REM  GET OPENING SUBROUTINE
160 GOSUB 23000
200 REM  PROGRAM OPTIONS SELECTION
250 GOSUB 25000
290 REM  CLEAR SCREEN
292 REM  MAKE CALCULATIONS
293 GOSUB 24000
300 GOSUB 20000
330 REM  DISPLAY RESULTS
340 GOSUB 28000
400 GOSUB 29000
20000 REM  CLEAR SCREEN SUBROUTINE
20020 FOR N = 1 TO 25
20040 PRINT
20060 NEXT N
20080 RETURN
21000 REM  CLEAR SMALL SPACE SUBROUTINE
21020 FOR N = 1 TO 3
21040 PRINT
21060 NEXT N
21080 RETURN
22000 REM  PRESS AND NUMBER KEY SUBROUTINE
22030 GOSUB 21000
22050 GOSUB 21000
22060 PRINT "PRESS CR TO CONTINUE..."
22080 INPUT S
22100 RETURN
23000 REM  OPENING SUBROUTINE
23010 GOSUB 20000
23020 PRINT  TAB( E);"* * * * * * * * * * * * * * *"
23030 PRINT  TAB( E);"*                           *"
23040 PRINT  TAB( E);"*  COPYRIGHT 1986 J.J. CARR *"
23050 PRINT  TAB( E);"*                           *"
23060 PRINT  TAB( E);"* * * * * * * * * * * * * * *"
23070 GOSUB 21000
23080 GOSUB 21000
23090 GOSUB 22000
23100 GOSUB 20000
23120 PRINT "THIS PROGRAM HELPS YOU DESIGN"
23125 PRINT "A SHORTENED LOADED DIPOLE"
23130 PRINT "AT A SPECIFIED FREQUENCY. YOU"
23135 PRINT "WILL BE ABLE TO SELECT THE"
23140 PRINT "LENGTH IN FEET, AND AN OPERATING"
23142 PRINT "FREQUENCY BETWEEN 0.1 AND 40 MHZ"
23150 PRINT
23160 PRINT "IF YOU ARE READY TO START..."
23170 GOSUB 22000
23200 GOSUB 20000
23220 PRINT "ENTER OPERATING FREQUENCY"
23222 PRINT "IN MEGAHERTZ (MHZ)"
23225 PRINT "(0.1 TO 40 MHZ):"
23230 PRINT
23250 INPUT F
23290 PRINT "THANK YOU..."
23300 GOSUB 20000
23500 RETURN
24000 REM  ARITHMETIC SUBROUTINE
24010 L1 = LX
24020 L3 = L1 / 2
24030 P = (L1 * 100) / L2
24050 P = P * 100
24060 P =  INT (P)
24070 P = P / 100
24080 X = L3 / 2
24090 LA = BA / (6.28 * F)
24100 LB = CA / (6.28 * F)
24110 LA = LA * 100
24120 LB = LB * 100
24130 LA =  INT (LA)
24150 LB =  INT (LB)
24160 LA = LA / 100
24170 LB = LB / 100
24900 RETURN
25000 REM  SELECTION SUBROUTINE
25020 L2 = 468 / F
25025 LC = 0.05 * L2
25030 LD = 0.1 * L2
25035 LE = 0.2 * L2
25040 LF = 0.3 * L2
25050 LG = 0.4 * L2
25055 LH = 0.5 * L2
25060 LI = 0.6 * L2
25065 LJ = 0.7 * L2
25070 LK = 0.8 * L2
25075 LM = 0.9 * L2
25080 LN = 0.95 * L2
25085 LO = 0.98 * L2
25110 PRINT "PERCENT OF FULL-SIZE      LENGTH (F)"
25120 PRINT "=================================="
25180 PRINT  TAB( G1);"1.   5"; TAB( G2);LC
25190 PRINT  TAB( G1);"2.  10"; TAB( G2);LD
25200 PRINT  TAB( G1);"3.  20"; TAB( G2);LE
25210 PRINT  TAB( G1);"4.  30"; TAB( G2);LF
25220 PRINT  TAB( G1);"5.  40"; TAB( G2);LG
25230 PRINT  TAB( G1);"6.  50"; TAB( G2);LH
25240 PRINT  TAB( G1);"7.  60"; TAB( G2);LI
25250 PRINT  TAB( G1);"8.  70"; TAB( G2);LJ
25260 PRINT  TAB( G1);"9.  80"; TAB( G2);LK
25270 PRINT  TAB( G1);"10. 90"; TAB( G2);LM
25280 PRINT  TAB( G1);"11. 95"; TAB( G2);LN
25290 PRINT  TAB( G1);"12. 98"; TAB( G2);LO
25200 PRINT  TAB( G1);"13. 100"; TAB( G2);L2
25330 PRINT
25340 PRINT
25350 PRINT "SELECT 1 - 13 FROM ABOVE..."
25360 PRINT
25370 INPUT W
25380 IF W < 1 THEN  GOTO 25000 REM END IF
25390 IF W > 13 THEN  GOTO 25000 REM END IF
25400 IF W = 13 THEN  GOTO 25800 REM END IF
25410 ON W GOTO 25430,25440,25450,25460,25470,25480,25490,25500,25510,25520,25530,25540
25430 LX = LC
25431 BA = 5000
25432 CA = 8500
25435 GOTO 25900
25440 LX = LD
25441 BA = 2700
25442 CA = 4800
25445 GOTO 25900
25450 LX = LE
25451 BA = 1450
25452 CA = 2500
25455 GOTO 25900
25460 LX = LF
25461 BA = 950
25462 CA = 1750
25465 GOTO 25900
25470 LX = LG
25471 BA = 700
25472 CA = 1250
25475 GOTO 25900
25480 LX = LH
25481 BA = 500
25482 CA = 900
25485 GOTO 25900
25490 LX = LI
25491 BA = 375
25392 CA = 700
25495 GOTO 25900
25500 LX = LJ
25501 BA = 260
25501 CA = 500
25505 GOTO 25900
25510 LX = LK
25511 BA = 160
25512 CA = 310
25515 GOTO 25900
25520 LX = LM
25521 BA = 80
25522 CA = 155
25515 GOTO 25900
