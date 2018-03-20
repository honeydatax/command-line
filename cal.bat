@echo off
color 15 1
prints " give the year to show the calender"
echo.>out.txt
text out.txt
fprint temp.bat "set t="
appends out.txt temp.bat
call temp.bat >null
cal %t% >out2.txt
scroll out2.txt "year %t%"

echo on