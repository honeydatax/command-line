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
if asc(s)>=asc("0") and asc(s)<=asc("9") then
d=0
d=val(s)
locate 1,1
print d;"%          ";
else
locate 2,1
print s;".             ";
end if

 if  eof(1) then exit do
loop


close #1


