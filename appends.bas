dim a as string
dim b as string
open command(1) for input as 1
line input  #1,a
close 1

open command(2) for append as 1
print #1,a
close 1