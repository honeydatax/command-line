dim s as string
dim ss as string
dim i as integer
dim d as integer
dim c as integer=0
dim h as string
dim g as integer=0

color 15,1
cls

open cons for input as #1
do
line input #1,s
if g=0 then
g=1
h=s

end if
print s
c=c+1
if c>18 then 
print string(80,"-")
print "press key to continue"
sleep
c=0
cls
print h
end if
 if eof(1) then exit do
loop


close #1


