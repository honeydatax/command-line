@echo off
color 15 1
dirs "*.arj" out.txt
fprint temp.bat "set t="
slist out.txt "select a arj file to decompress"  out2.txt
cls
color 15 1
appends out2.txt temp.bat
@call temp.bat >null
color 15 1
prints "extract arj file"
prints "%t%"
arj x "%t%" 

echo on