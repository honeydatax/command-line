dim a as string
dim b as string
open command(1) for input as 1
do
line input #1,a
print  a
if eof(1) then exit do
loop
close 1