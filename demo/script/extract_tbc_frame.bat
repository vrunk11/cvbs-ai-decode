@echo off
SET /p frame_nb=frame to extract :
SET /A frame_start = %frame_nb% - 1
ffmpeg -f rawvideo -pix_fmt y16 -r 1 -video_size 910x526 -ss %frame_start% -t 1 -i %~dp1%~n1.tbc -vf il=l=i:c=i:a=i -pix_fmt y16 %~dp0frame_%frame_nb%_%~n1.pgm
pause