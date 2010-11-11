// Adds 1+...100.
@i
M=1 // i = 1
@sum
M=0 // sum = 0
(LOOP)
  @i
  D=M // set the D register to be i
  @100
  D=D-A // set D to be i - 100
  @END
  D;JGT // If D = (i-100) > 0 goto END, you've been through the loop 100 times
  @i
  D=M // set D to be i
  @sum
  M=D+M // set sum to be sum + i
  @i
  M=M+1 // increment i by 1
  @LOOP
  0;JMP // unconditionally jump back up to (LOOP)
(END)
@END
0;JMP // Infinite loop: jump to end, which jumps to end, which...
