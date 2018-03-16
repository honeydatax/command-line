@echo off
cls
echo CREATE TABLE list(ID INTEGER PRIMARY KEY     AUTOINCREMENT,  NAME           TEXT    NOT NULL,  PHONE          CHAR(10)  ,  ADDRESS        CHAR(50));>inp.txt
echo .tables >> inp.txt
echo .quit >>inp.txt


sqlite3 client.db < inp.txt 
echo on