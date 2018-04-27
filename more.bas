dim s as string
dim ss as string
dim i as integer
dim d as integer
dim c as integer=0

color 15,1
cls

open cons for input as #1
do
line input #1,s
print s
c=c+1
if c>20 then 
print "press key to continue"
sleep
c=0
end if
 if eof(1) then exit do
loop


close #1


