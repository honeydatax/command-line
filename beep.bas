Sub Sound(ByVal freq As UInteger, dur As UInteger)
          Dim t As Double,f1 As Unsigned Short
          f1 = 1193181 \ freq
          Out &h61,Inp(&h61) Or 3
          Out &h43,&hb6
          Out &h42,LoByte(f1)
          Out &h42,HiByte(f1)
          t=Timer                 
          While ((Timer - t) * 1000) < dur
          Sleep 0,1
          Wend                
          Out &h61,Inp(&h61) And &hfc
End Sub                
                
dim x as integer
dim y as integer
                

Sound(523, 60)  'C5

