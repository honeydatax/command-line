dim a as string=command(1)
dim b as integer=val(command(2))
dim c as integer=val(command(3))
dim d as string=""

open a for input as 1
line input  #1,d
close 1

d=mid$(d,b,c)

open a for output as 1
print #1,d
close 1
