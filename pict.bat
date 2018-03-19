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
tabs out2.txt 1
color 15 1
prints "client id select"
type out2.txt
echo on