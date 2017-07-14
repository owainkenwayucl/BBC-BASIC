   10 INPUT "Number of slices? " N
   20 START = TIME
   30 LET S=0
   40 LET C=1/N
   50 FOR I=1 TO N
   60   LET X=(I-0.5)*C
   70   S=S+(4/(1+(X*X)))
   80 NEXT I
   90 LET P=S*C
  100 PRINT "Estimated value of "; CHR$(227); ": "; P
  110 LET DIFF=ABS(PI-P)
  120 PRINT CHR$(235); CHR$(227); ": "; DIFF
  130 FINISH = TIME
  140 ELAPSED = (FINISH - START)/100
  150 PRINT "Time Taken: "; ELAPSED; " seconds"
  160 END
