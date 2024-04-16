@echo off
md "Upscaled"
md "upscale-temp"
attrib +h upscale-temp /s /d
copy "*.mp4" "upscale-temp\"
cd upscale-temp
echo Downloading ffmpeg
powershell -Command "Invoke-WebRequest https://github.com/Jeopardy101/ffmpeg/raw/master/ffmpeg.exe -Outfile ffmpeg.exe"
powershell -Command "Invoke-WebRequest https://github.com/Jeopardy101/ffmpeg/raw/master/upscale/upscale.bat -Outfile upscale.bat"
CALL "upscale.bat"
cd..
rd /s /q "upscale-temp"