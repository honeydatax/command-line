@echo off
color 15 1
echo INSERT INTO list ( NAME,PHONE,ADDRESS)>inp.txt
echo VALUES ( >> inp.txt
prints "client name"
input inp.txt
echo , >> inp.txt
prints "client phone"
input inp.txt
echo ,  >> inp.txt
prints "client address"
input inp.txt
echo ) ;  >> inp.txt
echo .quit >>inp.txt

sqlite3 client.db < inp.txt 
echo on