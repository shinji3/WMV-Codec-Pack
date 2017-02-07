IF EXIST "%~dp0" cd /D "%~dp0"

MSYS\bin\sh --login -i -c /build_all.sh

md bin

copy MSYS\AACACM\bin\AACACM.acm bin
copy MSYS\AACACM\bin\AACACM.inf bin
copy MSYS\AACACM\bin\AACACM.bat bin

copy MSYS\x264vfw\bin\x264vfw.dll bin
copy MSYS\x264vfw\bin\x264vfw.inf bin
copy MSYS\x264vfw\bin\x264vfw.bat bin

copy MSYS\x265vfw\bin\x265vfw.dll bin
copy MSYS\x265vfw\bin\x265vfw.inf bin
copy MSYS\x265vfw\bin\x265vfw.bat bin

start /wait bin\AACACM.bat
start /wait bin\x264vfw.bat
start /wait bin\x265vfw.bat
