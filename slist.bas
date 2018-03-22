dim shared a as string
dim aa as string=command(2)
dim shared l (0 to 10000) as string
dim shared i as integer=0
dim b as integer
dim c as integer=0
dim x as integer
dim y as integer
dim bt as integer
dim ab as integer
                
sub add (s as string)
          l(i)=s                
          i=i+1                
end sub                
                
                
sub loadlist ()
          dim s as string
          open a for input as 1
          do                
                    line input #1,s
                    add s                
                    if eof(1) then exit do
          loop                 
          close 1                
end sub                
                
                
i=0          
a=command(1)
loadlist             
screen 12
color 15,1
                
setmouse 14,12,1,0
do                
          ScreenLock
          cls                
                          
          locate 1,80/2-(len(aa)/2)
                          
          print aa                
          if c+24>i then c=i-24
          if c<0 then c=0
          for b=0 to 23
                    locate 2+b,1
                    if b+c <= i then print l(b+c);
          next b                
          locate 27,1
                          
          print "press esc to exit ,enter to move next page ,del move back page";
          line(0,16)-(639,16),0
          line(0,26*16)-(639,26*16),0
          ScreenUnlock
                          
          do          
                    ab= getmouse (x,y, ,bt)
                    if bt<>0 then exit do
                    a=inkey$()
                    if a<>"" and bt =0 then exit do
                                    
                                    
          loop                
                          
          if bt<>0 then 
                    y=y/16-1                
                    if y+c<=i and y>-1 and y<25 then 
                              open command(3) for output as 1
                              print #1,l(c+y)
                              close 1                
                                              
                              exit do                
                    end if                
          end if                
                          
                          
          if a=chr$(27) then 
                    open command(3) for output as 1
                    print #1,""
                    close 1                
                    exit do                
          end if                
                          
          if a=chr$(8) then c=c-24
          if a=chr$(13) then c=c+24
                          
                          
loop                
