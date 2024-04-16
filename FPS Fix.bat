@echo off
md "FPS Fixed"
md "fpsfix-temp"
attrib +h fpsfix-temp /s /d
copy "*.mp4" "fpsfix-temp\"
cd fpsfix-temp
powershell -Command "Invoke-WebRequest https://github.com/Jeopardy101/ffmpeg/raw/master/ffmpeg.exe -Outfile ffmpeg.exe"
powershell -Command "Invoke-WebRequest https://github.com/Jeopardy101/ffmpeg/raw/master/fpsfix/fpsfix.bat -Outfile fpsfix.bat"
CALL "fpsfix.bat"
cd..
rd /s /q "fpsfix-temp"