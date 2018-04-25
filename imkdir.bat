@echo off
color 15 1


prints "creats directory name"
fprint "temp.bat" "set t="
fprint inp.txt ""
fprint inps.txt ""
input inp.txt
finput inp.txt inps.txt
appends inps.txt temp.bat
@call temp.bat

prints "%t%"
@mkdir %t% >out.txt
ftype out.txt
echo on