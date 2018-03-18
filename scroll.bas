dim shared a as string
dim aa as string=command(2)
dim shared l (0 to 10000) as string
dim shared i as integer=0
dim b as integer
dim c as integer=0
                
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
                
                
                
a=command(1)
loadlist                
do                
          color 1,15
          cls                
                          
          locate 1,80/2-(len(aa)/2)
                          
          print aa                
          if c+22>i then c=i-22
          if c<0 then c=0
          for b=1 to 22
                    locate 1+b,1
                    if b+c <= i then print l(b+c);
          next b                
          locate 25,1
          print "press esc to exit ,enter to move next page ,del move back page";
          sleep                
          a=inkey$()
          if a=chr$(27) then exit do
          if a=chr$(8) then c=c-22
          if a=chr$(13) then c=c+22
loop                
