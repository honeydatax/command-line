@echo off
set msg="im love marina."
set titles="im love you"
set x=0
set y=0
DIALOG --title %titles% --clear --colors --msgbox %msg%  %y%  %x%
@echo on