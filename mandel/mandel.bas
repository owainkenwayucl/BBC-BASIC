   10 CLS                    
   20 PRINT "Owain's Mandelbrot Generator"
   30 PRINT "============================"
   40 PRINT""
   50 REM VARIABLE SET UP.
   60 PRINT "Please enter vars [DEFAULT]:"
   70 INPUT "Xmax [ 2.0]: " SXMAX$
   80 LET XMAX = 2.0
   90 IF SXMAX$ <> "" THEN XMAX=EVAL(SXMAX$)
  100 INPUT "Xmin [-2.0]: " SXMIN$
  110 LET XMIN = -2.0
  120 IF SXMIN$ <> "" THEN XMIN=EVAL(SXMIN$)
  130 INPUT "Ymax [ 2.0]: " SYMAX$
  140 LET YMAX = 2.0
  150 IF SYMAX$ <> "" THEN YMAX=EVAL(SYMAX$)
  160 INPUT "Ymin [-2.0]: " SYMIN$
  170 LET YMIN = -2.0
  180 IF SYMIN$ <> "" THEN YMIN=EVAL(SYMIN$)
  190 REM NC200 SCREEN IS 480X128
  200 INPUT "Xres [128]: " SXRES$
  210 LET XRES = 128
  220 IF SXRES$ <> "" THEN XRES=EVAL(SXRES$)
  230 INPUT "Yres [128]: " SYRES$
  240 LET YRES = 128
  250 IF SYRES$ <> "" THEN YRES=EVAL(SYRES$)
  260 LET SHIFT = 480 - XRES
  270 INPUT "Max iterations [32]: " SMIT$
  280 LET MIT = 32
  290 IF SMIT$ <> "" THEN MIT=EVAL(SMIT$)
  300 LET RMAX = 2
  310 LET R2 = RMAX*RMAX
  320 FOR PX = 1 TO XRES
  330   LET X0 = ((PX/XRES) * (XMAX - XMIN))+XMIN
  340   FOR PY = 1 TO YRES
  350     LET Y0 = ((PY/YRES) * (YMAX - YMIN))+YMIN
  360     LET X = 0
  370     LET Y = 0
  380     LET ITER = 1
  390     PLOT 69,(SHIFT+PX),PY
  400     FOR I = 1 TO MIT
  410       LET XT = (X*X)-(Y*Y) + X0
  420       Y = (2*X*Y) + Y0
  430       X = XT
  440       LET T = (X*X)+(Y*Y)
  450       ITER = I
  460       IF T > R2 THEN GOTO 480
  470     NEXT I
  480     REM DRAW STUFF HERE
  490     IF ITER = MIT THEN PLOT 71,(SHIFT+PX),PY
  500   NEXT PY
  510 NEXT PX
