@echo off
color 15 1
dirs "*.txt" out.txt
fprint temp.bat "set t="
slist out.txt "select a file to check sum"  out2.txt
cls
color 15 1
appends out2.txt temp.bat
@call temp.bat >null
color 15 1
prints "check sum file"
prints "%t%"
sort %t% >out.txt
scroll out.txt "%t%"

echo on