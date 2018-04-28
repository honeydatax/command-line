dim s as string
dim c as integer=0


color 15,1
cls
open "inp.txt" for output as #1
print #1,".header on"
print #1,".mode  tabs"
print #1, ".width  3, 3 , 3 , 3"
print #1,"select * from list"
print #1,  ";"
print #1,".quit"
close #1
shell "sqlite3 client.db < inp.txt  >out.txt"
open "out.txt" for input as #1
c=0
do
line input #1,s
c=c+1
if c=19 then
print " press a key to continue"
c=0
sleep
end if
print s
if (eof(1)) then exit do
loop

close #1