@echo off
color 15 1
dirs "*.zip" out.txt
fprint temp.bat "set t="
slist out.txt "select a zip file to unzip"  out2.txt
cls
color 15 1
appends out2.txt temp.bat
@call temp.bat >null
color 15 1
prints "extract file"
prints "%t%"
unzip -o "%t%" *.*  -d "."

echo on