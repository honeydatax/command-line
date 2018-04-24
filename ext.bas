dim c as string
dim cc as string
dim s as string
dim a as integer
c=command(1)
cc= command(2)
open c for input as #1
line input #1,s
close #1
open cc for output as #1
a=instr(s,".")
if a>0 then s=mid(s,1,a-1)


print #1,s
close #1
