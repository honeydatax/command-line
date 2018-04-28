dim s as string
dim c as integer=0
dim iinp as string
dim imps as string

color 15,1
cls
imps="CREATE TABLE list(ID INTEGER PRIMARY KEY     AUTOINCREMENT,  NAME           TEXT    NOT NULL,  PHONE          CHAR(10)  ,  ADDRESS        CHAR(50));"

open "inp.txt" for output as #1
print #1,imps
print #1,  ".tables"
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