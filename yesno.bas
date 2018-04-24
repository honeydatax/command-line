dim a as string
dim b as string
print "yes or no"
input a
b="0"
open command(1) for append as 1
if instr(a,"y")>0 or instr(a,"Y")>0 then b="1"
print #1,b
close 1