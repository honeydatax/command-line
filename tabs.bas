dim a as string=command(1)
dim b as integer=val(command(2))
dim c as integer=0
dim d as string=""
dim e as string=""
dim f as string

open a for input as 1
line input  #1,d
close 1

for c= b to len(d)-1
f=mid$(d,c,1)
if asc(f) <33 then exit for
e=e+f
next c

open a for output as 1
print #1,e
close 1
