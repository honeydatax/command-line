#include "dir.bi" 'provides constants to use for the attrib_mask parameter

Sub list_files (ByRef filespec As String, ByVal attrib As Integer ,byval file as string)
    Dim As String filename = Dir(filespec, attrib) ' Start a file search with the specified filespec/attrib *AND* get the first filename.
 open file for output as 1
   Do While Len(filename) > 0 ' If len(filename) is 0, exit the loop: no more filenames are left to be read.
        Print #1,filename
        filename = Dir()
    Loop
    close 1
End Sub

dim a as string = command(2)
dim b as string= command(1)
list_files b, fbArchive,a