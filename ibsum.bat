@echo off
color 15 1
dirs "*.*" out.txt
fprint temp.bat "set t="
slist out.txt "select a file to check sum"  out2.txt
cls
color 15 1
appends out2.txt temp.bat
@call temp.bat >null
color 15 1
prints "check sum file"
prints "%t%"
bsum %t% >out.txt
ftype out.txt

echo on