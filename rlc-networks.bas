10 REM THIS IS PROGRAM NO. 28 PROG28
12 REM THIS PROGRAM WILL CALCULATE THE
13 REM TOTAL REACTANCE, IMPEDANCE AND
15 REM PHASE SHIFT ANGLE OF RLC NETWORKS
18 REM IT WILL ALSO FIND RESONANT FREQ.
20 REM AND PERFORM PARALLEL-SERIES CON-
22 REM VERSIONS.
140 W = 0
150 Y = 0
160 K = 0
170 GOSUB 1420
230 GOSUB 1420
240 GOSUB 1500
250 GOSUB 1460
260 PRINT "THIS PROGRAM CALCULATES CERTAIN "
265 PRINT "PARAMETERS OF NETWORKS CONTAINING "
270 PRINT "RESISTOR, CAPACITOR AND INDUCTOR "
275 PRINT "ELEMENTS. NO SINGLE NETWORK NEED"
280 PRINT "CONTAIN ALL THREE ELEMENTS."
290 PRINT
300 PRINT "FOLLOW DIRECTIONS GIVEN ON THE SCREEN..."
310 GOSUB 1420
320 GOSUB 1500
330 GOSUB 1460
340 PRINT TAB(K);"TYPE OF RLC NETWORK:???"
350 PRINT
355 PRINT TAB(K);"  1. SERIES RLC"
360 PRINT TAB(K);"  2. PARALLEL RLC"
370 PRINT
380 PRINT "SELECT ONE FROM ABOVE"
385 PRINT "AND PRESS CR..."
390 INPUT T
395 PRINT T
400 IF T > 2 THEN GOTO 340
310 GOSUB 1460
420 PRINT TAB(Y);"ENTER THE VALUES OF RLC "
422 PRINT TAB(Y);"NETWORK COMPONENTS (IN OHMS..."
430 PRINT
440 PRINT TAB(Y);"RESISTANCE R IS: ???"
450 INPUT R
455 PRINT R
460 PRINT
470 PRINT TAB(Y);"CAPACITIVE REACTANCE IS: ???"
480 INPUT XC
490 PRINT XC
495 PRINT
500 PRINT TAB(Y);"INDUCTIVE REACTANCE IS: ???"
510 INPUT XL
515 PRINT XL
520 GOSUB 1460
530 PRINT TAB(Y);"PERFORM THE FOLLOWING"
535 PRINT TAB(Y);"CALCULATION..."
540 PRINT
550 PRINT TAB(Y);"1. TOTAL REACTANCE XT"
560 PRINT TAB(Y);"2. TOTAL IMPEDANCE ZT"
570 PRINT TAB(Y);"3. PHASE ANGLE"
580 PRINT TAB(Y);"4. SERIES-PARALLEL CONVERSION"
590 PRINT TAB(Y);"5. PARALLEL-SERIES CONVERSION"
600 PRINT TAB(Y);"6. QUALITY FACTOR (Q)"
610 PRINT
620 PRINT TAB(Y);"SELECT ONE FROM ABOVE AND PRESS CR..."
630 INPUT S
635 PRINT S
640 IF S = 1 THEN GOTO 650
641 IF S = 2 THEN GOTO 760
642 IF S = 3 THEN GOTO 860
643 IF S = 4 THEN GOTO 950
644 IF S = 5 THEN GOTO 1060
645 IF S = 6 THEN GOTO 1190
650 GOSUB 1420
660 IF T = 1 THEN GOTO 710
670 XT = (-XL*XC)/(XL-XC)
672 IF XL = XC THEN XT = 0
673 IF XL = XC THEN GOTO 680
680 GOSUB 1460
690 GOTO 720
700 GOTO 750
710 IF XL = XC THEN XT = 0
711 IF XL = XC THEN GOTO 720
712 XT = XL-XC
720 PRINT "TOTAL REACTANCE IS: ";XT;" OHMS"
730 PRINT
740 GOSUB 1500
750 GOTO 1530
760 GOSUB 1420
770 Z = (R^2) + (XL - XC)^2
780 Z = SQR(Z)
790 IF T = 1 THEN GOTO 820
800 X = XL - XC
810 Z = (R*X)/Z
820 PRINT "IMPEDANCE IS: ";Z;" OHMS"
830 PRINT
840 GOSUB 1500
850 GOTO 1530
860 GOSUB 1460
870 THETA = ATN((XL - XC)/R)
880 PRINT TAB(Y);"PHASE ANGLE IS: ";THETA;" RADIANS"
890 PRINT
900 THETA = THETA*(180/3.141593)
910 PRINT TAB(Y);"PHASE ANGLE IS: ";THETA;" RADIANS"
920 PRINT
930 GOSUB 1500
940 GOTO 1530
950 GOSUB 1460
960 IF T = 2 THEN GOTO 1040
970 X = XL - XC
980 RP = ((R^2) +  (X^2))/R
985 IF X = 0 THEN GOTO 1000 REM O --> 0
990 XP = (RP*R)/X
1000 PRINT TAB(Y);"PARALLEL EQUIVALENT RESISTANCE: "
1005 PRINT TAB(Y);RP;" OHMS"
1010 PRINT TAB(Y);"PARALLEL EQUIVALENT REACTANCE: "
1015 PRINT TAB(Y);XP;" OHMS"
1020 GOSUB 1500
1030 GOTO 1530
1040 GOSUB 1280
1050 GOTO 520
1060 GOSUB 1460
1070 IF T = 1 THEN GOTO 1170
1080 X = XL - XC
1090 XP = X^2
1100 RS = R/(1 + XP)
1110 XS = (R*RS)/X
1115 GOSUB 5000
1120 PRINT TAB(Y);"SERIES EQUIVALENT RESISTANCE: "
1125 PRINT TAB(Y);RS;" OHMS"
1130 PRINT TAB(Y);"SERIES EQUIVALENT REACTANCE: "
1135 PRINT TAB(Y);XS;" OHMS"
1140 PRINT
1150 GOSUB 1500
1160 GOTO 1530
1170 GOSUB 1350
1180 GOTO 520
1190 GOSUB 1460
1200 IF T = 2 THEN GOTO 1230
1210 Q = (XL - XC)/R
1220 GOTO 1240
1230 Q = R/(XL - XC)
1240 PRINT TAB(Y);"Q = ";Q
1250 PRINT
1260 GOSUB 1500
1270 GOTO 1530
1280 PRINT
1290 PRINT "ERROR: SERIES-PARALLEL CONVERSION"
1292 PRINT "SELECTED FOR A PARALLEL CIRCUIT."
1300 PRINT "RETURN TO MENU AND SELECT NO. 5 FOR"
1310 PRINT "PARALLEL-SERIES CONVERSION."
1320 PRINT
1330 GOSUB 1500
1340 RETURN
1350 PRINT
1360 PRINT "ERROR: PARALLEL-SERIES CONVERSION"
1362 PRINT "SELECTED FOR A SERIES CIRCUIT"
1370 PRINT "RETURN TO MENU AND SELECT NO. 4 FOR"
1380 PRINT "SERIES-PARALLEL CONVERSION."
1390 PRINT
1400 GOSUB 1500
1410 RETURN
1420 FOR I = 1 TO 5
1430 PRINT
1440 NEXT I
1450 RETURN
1460 FOR I = 1 TO 30
1470 PRINT
1480 NEXT I
1490 RETURN
1500 PRINT "PRESS CR TO CONTINUE..."
1510 INPUT KK
1515 PRINT KK
1520 RETURN
1530 GOSUB 1460
1540 PRINT TAB(Y);"1. MORE CALCULATIONS ON SAME NETWORK"
1550 PRINT TAB(Y);"2. DO ANOTHER PROBLEM"
1560 PRINT TAB(Y);"3. FINISHED - EXIT PROGRAM"
1570 PRINT
1590 PRINT
1600 PRINT TAB(Y);"ENTER ONE FROM ABOVE AND PRESS CR..."
1605 PRINT U
1610 INPUT U
1611 PRINT U
1612 IF U >3 THEN GOTO 1540
1620 ON U GOTO 520,330,1630
1630 FOR I = 1 TO 20
1640 PRINT "**********BYE-BYE**********"
1650 NEXT I
1660 GOSUB 1420
1670 PRINT "PROGRAM ENDED..."
1680 END
5000 PRINT "X =  ";X
5010 PRINT "XP = ";XP
5040 PRINT "R = ";R
5050 PRINT "XL = ";XL
5060 PRINT "XC = ";XC
6000 RETURN
