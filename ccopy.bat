@echo off
set x=1
set y=1
set x1=12
set y1=22

dir 

ccopy "out.txt" %y% %x% %y1%  %x1%

type out.txt

echo off

