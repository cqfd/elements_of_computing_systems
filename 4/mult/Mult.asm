// multiplies R0 and R1

// simple implementation of a*b = a + a*(b-1) = ...

@R2
M=0

(LOOP)
  @R0
  D=M
  @END
  D;JEQ

  @R1
  D=M
  @R2
  M=M+D // R2 = R2 + R1

  @R0
  M=M-1 // decrement R0

  @LOOP
  0;JMP
(END)
@END
0;JMP
