@echo off
echo.>out.txt
echo.>>out.txt
echo.>>out.txt
echo.>>out.txt
echo.>>out.txt
echo a > inp.txt
echo call 108 >> inp.txt
echo db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 >> inp.txt
echo org 108 >> inp.txt
echo mov ax,13 >> inp.txt
echo int 10 >> inp.txt
echo mov cx,f000 >>inp.txt
echo mov ax,a000 >>inp.txt
echo mov es,ax >>inp.txt
echo mov bx,0 >>inp.txt
echo mov al,1 >>inp.txt
echo jmp 120 >> inp.txt
echo db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 >> inp.txt
echo org 120 >> inp.txt
echo es: >>inp.txt
echo mov [bx],al >>inp.txt
echo inc bx >>inp.txt
echo dec cx >>inp.txt
echo cmp cx,0 >>inp.txt
echo jnz 120 >>inp.txt
echo push cs >> inp.txt
echo pop es >>inp.txt
echo ret >> inp.txt
appends out.txt inp.txt
echo p 1 >> inp.txt
echo.>>input.txt
echo q >>inp.txt

debug <inp.txt >out.txt


echo on
