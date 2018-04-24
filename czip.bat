@echo off
color 15 1
dirs "*.*" out.txt
fprint temp.bat "set t="
slist out.txt "select a file to compact over zip file"  out2.txt
cls
color 15 1
@copy out2.txt out3.txt > null
appends out2.txt temp.bat
@call temp.bat >null
color 15 1
ext out3.txt out4.txt
fprint temp.bat "set o="
appends out4.txt temp.bat
@call temp.bat >null
color 15 1
prints "compact file"
prints "%t%"
zip  "%o%.zip" "%t%" 

echo on