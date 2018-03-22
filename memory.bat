@echo off
mem /debug /u > out.txt
mem /m IO >> out.txt
mem /m COMMAND >> out.txt
mem /m CON >> out.txt
mem /m DOS >> out.txt
scroll out.txt memory
echo on
