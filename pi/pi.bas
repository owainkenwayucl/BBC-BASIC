   10 INPUT "Number of slices? " N
   20 START = TIME
   30 LET S=0
   40 LET C=1/N
   50 FOR I=1 TO N
   60   LET X=(I-0.5)*C
   70   S=S+(4/(1+(X*X)))
   80 NEXT I
   90 LET P=S*C
  100 PRINT "Estimated value of Pi: " P
  110 FINISH = TIME
  120 ELAPSED = (FINISH - START)/100
  130 PRINT "Time Taken: " ELAPSED " seconds"
  140 END
