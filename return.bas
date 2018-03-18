dim s as string 
dim shared x as integer
dim shared y as integer
dim shared ss as string
dim shared c as integer
                
                
                
                
sub gettext()
          dim j as byte=0
          dim j2 as byte=0
          do                
                    j=screen(y,x,0)
                    ss=ss+chr$(j)
                    if c<1then exit do
                    x=x+1                
                    if x>79 then 
                              y=y+1                
                              x=0                
                    end if                
                    c=c-1                
                                    
                    j2=j                
          loop                
end sub                
                
x=val(command(3))
y=val(command(2))
c =val(command(4))
ss=""                
gettext                
open command(1) for output as 1
print #1,ss
close 1                
