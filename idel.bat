@echo off
color 15 1
dirs "*.*" out.txt

slist out.txt "file to delete"  out2.txt
color 15 1
fprint "temp.bat" "set t="
prints " delete file?"
ftype out2.txt
yesno temp.bat

@call temp.bat
set comp=1
if %t% == %comp% goto thesend
goto theend
:thesend

cls
color 15 1
fprint temp.bat "set t="
appends out2.txt temp.bat
@call temp.bat >null

color 15 1
prints "file to delete"
prints "%t%"

del %t%
:theend
echo on