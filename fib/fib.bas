   10 REM Print the first LIMIT Fibonacci numbers
   20 INPUT "How many Fibonacci numbers to generate? " LIMIT
   30 L=1
   40 X = 1
   50 Y = 1
   60 PRINT L ":" X
   70 PRINT L+1 ":" Y
   80 L = L + 1
   90 Z = X + Y
  100 X = Y
  110 Y = Z
  120 IF L<LIMIT GOTO 70
  130 END
