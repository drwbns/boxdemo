@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64 10.0.10586.0  

set compilerflags=/GS /analyze- /W3 /Zc:wchar_t /I"E:\Graphics Code\vc14\DirectXTK\Inc" /ZI /Gm /Od /Fd"Debug\vc140.pdb" /Zc:inline /fp:precise /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_UNICODE" /D "UNICODE" /errorReport:prompt /WX- /Zc:forScope /RTC1 /Gd /Oy- /MDd /EHsc /nologo /Fp"Debug\ModernBox.pch"

set linkerflags= /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.10586.0\um\x86" /LIBPATH:"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.10.24629\lib\x86" /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.14393.0\ucrt\x86" /LIBPATH:"C:\Users\Andrew\Source\Repos\boxdemo\packages\directxtk12_desktop_2015.2016.9.15.1\build\native\lib\Win32\Debug"

set includedirs=/I\INCLUDE /I"C:\PROGRAM FILES (X86)\WINDOWS KITS\10\INCLUDE\10.0.10586.0\SHARED" /I"C:\Users\Andrew\Source\Repos\boxdemo\packages\directxtk12_desktop_2015.2016.9.15.1\build\native\include" /I"C:\PROGRAM FILES (X86)\WINDOWS KITS\10\INCLUDE\10.0.10586.0\UCRT" /I"C:\PROGRAM FILES (X86)\WINDOWS KITS\10\INCLUDE\10.0.10586.0\UM" /I"C:\DirectXCode\imgui-master" /I"C:\DirectXCode\imgui-master\examples\directx11_example" /I"c:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\include"

set linklibs="d3d11.lib" "d3dcompiler.lib" "dxgi.lib" "dxguid.lib" "kernel32.lib" "user32.lib" "gdi32.lib" "winspool.lib" "comdlg32.lib" "advapi32.lib" "shell32.lib" "ole32.lib" "oleaut32.lib" "uuid.lib" "odbc32.lib" "odbccp32.lib" "DirectXTK12.lib"

"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\cl.exe" /c -DUNICODE -D_UNICODE %includedirs% %compilerflags% *.cpp

"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\link.exe" /MANIFEST /NXCOMPAT /PDB:"C:\Users\Andrew\Source\Repos\boxdemo\Debug\ModernBox.pdb" /DYNAMICBASE *.obj /DEBUG /MACHINE:X86 /OUT:Box.exe /SUBSYSTEM:WINDOWS /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /ManifestFile:"Debug\ModernBox.exe.intermediate.manifest" /ERRORREPORT:PROMPT /NOLOGO /TLBID:1 %linklibs% %linkerflags% 