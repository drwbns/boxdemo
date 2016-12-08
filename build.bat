@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64 10.0.10586.0  

set preprocessorflags=/D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_UNICODE" /D "UNICODE"

set optimizationflags=/Od /Oy- 

set codegenflags=/fp:precise /Gm /Gd /GS /RTC1 /EHsc
 
set languageflags=/Zc:wchar_t /Zc:inline /Zi /Zc:forScope

set outputflags=/FoDebug/ /Fe /Fd *.cpp

set compilerflags=/MTd /analyze- /W3 /errorReport:prompt /WX- /nologo /DEBUG:FULL

set linkerflags= /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.10586.0\um\x86" /LIBPATH:"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.10.24629\lib\x86" /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.14393.0\ucrt\x86" /LIBPATH:"C:\Users\Andrew\Source\Repos\boxdemo\packages\directxtk12_desktop_2015.2016.9.15.1\build\native\lib\Win32\Debug"

set includedirs=/I\INCLUDE /I"E:\Graphics Code\vc14\DirectXTK\Inc" /I"C:\PROGRAM FILES (X86)\WINDOWS KITS\10\INCLUDE\10.0.10586.0\SHARED" /I"C:\Users\Andrew\Source\Repos\boxdemo\packages\directxtk12_desktop_2015.2016.9.15.1\build\native\include" /I"C:\PROGRAM FILES (X86)\WINDOWS KITS\10\INCLUDE\10.0.10586.0\UCRT" /I"C:\PROGRAM FILES (X86)\WINDOWS KITS\10\INCLUDE\10.0.10586.0\UM" /I"C:\DirectXCode\imgui-master" /I"C:\DirectXCode\imgui-master\examples\directx11_example" /I"c:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\include"

set linklibs="d3d11.lib" "d3dcompiler.lib" "dxgi.lib" "dxguid.lib" "kernel32.lib" "user32.lib" "gdi32.lib" "winspool.lib" "comdlg32.lib" "advapi32.lib" "shell32.lib" "ole32.lib" "oleaut32.lib" "uuid.lib" "odbc32.lib" "odbccp32.lib" "DirectXTK12.lib"

"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\cl.exe" /c %outputflags% %preprocessorflags% %optimizationflags% %codegenflags% %languageflags% %includedirs% %compilerflags% 

"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\link.exe" /MANIFEST /NXCOMPAT /PDB:".\Debug\Box.pdb" /DYNAMICBASE Debug/*.obj /DEBUG /MACHINE:X86 /OUT:".\Debug\Box.exe" /SUBSYSTEM:WINDOWS /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /ManifestFile:"box.exe.manifest" /ERRORREPORT:PROMPT /NOLOGO /TLBID:1 %linklibs% %linkerflags% 