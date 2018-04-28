dim s as string
dim c as integer=0
dim iinp as string
dim imps as string

color 15,1
cls
imps=".header on"+chr(13)+chr(10)+".mode tabs"+chr(13)+chr(10)+".width 3, 3 , 3 , 3"+chr(13)+chr(10)+"SELECT * FROM list WHERE name like"
print "find client name like"
input iinp
imps=imps+chr(34)+iinp+chr(34)

open "inp.txt" for output as #1
print #1,imps
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