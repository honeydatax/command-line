@echo off
cls
echo .header on >inp.txt
echo .mode  tabs>>inp.txt
echo .width  3, 3 , 3 , 3 >>inp.txt
echo select * from list>>inp.txt
echo  ; >>inp.txt
echo .quit >>inp.txt

sqlite3 client.db < inp.txt 
echo on