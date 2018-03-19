@echo off
color 15 1

echo .header on >inp.txt
echo .mode  tabs>>inp.txt
echo .width  3, 3 , 3 , 3 >>inp.txt
echo SELECT * FROM list WHERE name= >>inp.txt

prints "client name to find"
input inp.txt

echo  ;  >> inp.txt
echo .quit >>inp.txt

sqlite3 client.db < inp.txt  >out.txt
scroll out.txt "where name="
echo on