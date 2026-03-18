@echo off
REM Uncomment one of the following lines.  If you have a GPU, uncomment nvenc_h264 to use it, otherwise use av_mkv
REM But DO NOT have BOTH HandbrakeCLI commands uncommented!!!
REM Additionally I am including the first 3 streams (usually English, Spanish and English Subtitles in the U.S. ATSC streams)
REM HandBrakeCLI.exe -e x264_10bit -f av_mkv -a "1,2,3" --all-subtitles -i %1 -o %1.mkv
HandBrakeCLI.exe -e nvenc_h264 -f av_mkv -a "1,2,3" --all-subtitles -i %1 -o %1.mkv 
rename %1 %1.old
