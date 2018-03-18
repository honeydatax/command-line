dim s as string 
dim shared x as integer
dim shared y as integer
dim shared x1 as integer
dim shared y1 as integer
dim shared ss as string
dim shared c as integer
dim shared c1 as integer
                
                
                
                
sub gettext()
          dim j as integer=0
          dim j2 as integer=0
          dim jj as byte=0
          j=y
          j2=x
          do                
                    jj=screen(j,j2,0)
                    ss=ss+chr$(jj)
                    
                    j2=j2+1                
                    if j2>x1 then 
                              j=j+1                
                              j2=x         
                                 ss=ss+chr$(13)+chr$(10)
                    end if                
                          
                                    
                    if j>y1 then exit do
          loop                
end sub                
                
x=val(command(3))
y=val(command(2))
x1=val(command(5))
y1=val(command(4))
if x1>79 then x1=79
if y1>25 then y1=25
if x>x1 or y>y1 then 
ss=""
goto exitdo
end if
c =abs(x1-x)
c1=abs(y1-y)
ss=""                
gettext          
exitdo:
open command(1) for output as 1
print #1,ss
close 1                
