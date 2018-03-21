#include "dir.bi" 'provides constants to use for the attrib_mask parameter

dim shared a as string
dim shared b as string
dim shared c as string
dim shared d as integer=0
dim shared e as integer=0
dim shared f as integer=0

Sub list_files (ByRef filespec As String, ByVal attrib As Integer )
    Dim As String filename = Dir(filespec, attrib) ' Start a file search with the specified filespec/attrib *AND* get the first filename.

   Do While Len(filename) > 0 ' If len(filename) is 0, exit the loop: no more filenames are left to be read.
        Print filename
        if csrlin()>24 then
        print "press key"
        sleep
        cls
        end if
        filename = Dir()
    Loop
    
End Sub


sub errr (ints as integer,er as string)
if ints<> 0 then print "error-" ; er
end sub



sub dirs()
if c="" or c=" " then c="*.*"
list_files "*", fbdirectory
list_files c, fbArchive
d=0
end sub

sub mkdirs()
err=0
mkdir (c)
errr err ," mkdir error"
d=0
end sub

sub cds()
err=0
chdir(c)
errr err ,"chdir error"
d=0
end sub

sub dels()
err=0
kill(c)
errr err ,"delete error"
d=0
end sub

sub echos()
print c
d=0
end sub

sub clss()
cls
d=0
end sub

sub sets()
SetEnviron c
d=0
end sub

sub paths()
SetEnviron " path="+c
d=0
end sub

sub pathss()
SetEnviron " path="+c
d=0
end sub

color 15,1
cls
print "command.exe"


do
print curdir();">";
line input a
a=ltrim(a)
b=lcase(a)
e=instr(a," ")
f=len(a)
c=""
if e>0 then c=mid$(a,e+1)
d=1

if instr(b,"dir ")=1 then dirs
if instr(b,"dir")=1 and f=3 then dirs
if instr(b,"mkdir ")=1  then mkdirs
if instr(b,"cd ") =1 then cds
if instr(b,"set ") =1 then sets
if instr(b,"path=") =1 then paths
if instr(b,"path ") =1 then pathss
if instr(b,"del ") =1 then dels
if instr(b,"erase ") =1 then dels
if instr(b,"deltree ") =1 then dels
if instr(b,"echo ") =1 then echos
if instr(b,"exit") =1 and f=4 then goto exits
if instr(b,"exit ") =1 then goto exits
if instr(b,"end") =1and f=3 then goto exits
if instr(b,"end ") =1 then goto exits

if instr(b,"cls") =1and f=3 then clss
if instr(b,"cls ") =1 then clss

if d=1 then shell a



loop
exits: