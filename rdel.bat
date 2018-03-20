@echo off
color 15 1

echo .header on >inp.txt
echo .mode  tabs>>inp.txt
echo .width  3, 3 , 3 , 3 >>inp.txt
echo SELECT * FROM list  >>inp.txt


echo  ;  >> inp.txt
echo .quit >>inp.txt

sqlite3 client.db < inp.txt  >out.txt
slist out.txt "select a client" out2.txt
copy out2.txt out3.txt  >null
tabs out3.txt 1


echo delete FROM list  where id= >inp.txt
appends out3.txt  inp.txt 

echo  ;  >> inp.txt
echo .quit >>inp.txt



color 15 1
prints "client id select"
ftype out2.txt
fprint "temp.bat" "set t="
prints " delete client?"
yesno temp.bat

call temp.bat
set comp=1
if %t% == %comp% goto thesend
goto theend
:thesend
sqlite3 client.db < inp.txt  >out.txt
ftype out.txt


:theend
echo on