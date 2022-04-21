
default: seh.exe

clean: 
	del /Q seh.exe seh.obj

rebuild: clean default

seh.exe: seh.obj
	link.exe /INCREMENTAL:NO /MACHINE:X64 /SUBSYSTEM:CONSOLE /OUT:$@ seh.obj /STUB:STUB.EXE

seh.obj: seh.c
	cl.exe /TC /std:c17 /sdl- /GS- /MD /O2 /W3 /c seh.c