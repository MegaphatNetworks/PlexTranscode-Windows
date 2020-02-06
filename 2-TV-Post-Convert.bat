@echo off
rem C:\HandBrakeCLI\HandBrakeCLI.exe -i %1 -o %1.mp4 -e x264 
C:\HandBrakeCLI\HandBrakeCLI.exe -i %1 -o %1.mkv -e x264_10bit -f av_mkv
rename %1 %1.old