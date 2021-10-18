for %%a in ("*.mp4") do (
	ffmpeg -i "%%a" -vsync cfr -c:a copy -c:v libx264 -crf 10 -preset veryfast "..\FPS Fixed\%%~na fixed.mp4"
)