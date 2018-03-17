dim a as string=command(3)
dim b as integer=val(command(1))
dim c as integer=val(command(2))
b=b/c
open a for output as 1
print #1,trim(str(b))
close 1