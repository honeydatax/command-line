dim s as string
dim ss as string
dim i as integer
dim d as integer
dim c as integer=0

open cons for output as #1
print #1,"0"
print #1,"wait...."

for c=0 to 100
ss=trim(str(c))
print #1,ss
print #1,"percent value ";str(c);"--"
sleep 1000
next c

close #1


