@echo off
cls
echo INSERT INTO list ( NAME,PHONE,ADDRESS)>inp.txt
echo VALUES (>>inp.txt
echo "client name"
input inp.txt
echo , >>inp.txt
echo "client phone"
input inp.txt
echo , >>inp.txt
echo "client address"
input inp.txt
echo ) ; >>inp.txt
echo .quit >>inp.txt

sqlite3 client.db < inp.txt 
echo on