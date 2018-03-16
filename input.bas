dim a as string
input a
open command(1) for append as 1
print #1,chr(&h22)+a+chr(&h22)
close 1