@echo off
%~d0
cd %~dp0
cd ../../
ffmpeg -hide_banner -loglevel error -f rawvideo -video_size 910x263 -pix_fmt gray16 -i "%~dp1%~n1.tbc" -vf crop=910:242:0:20 -c:v rawvideo -f rawvideo - | "cvbs_ai_decode.exe" -m %CD%/model/ntsc_1d -t 4 | ffmpeg -hide_banner -loglevel error -f rawvideo -r (30000/1001) -video_size 792x484 -pix_fmt rgb48 -i - -filter_complex "extractplanes=r+g+b[Ry][Gu][Bv];[Ry][Gu][Bv]mergeplanes=0x001020:yuv444p16,format=yuv444p16,il=l=i:c=i:a=i,setdar=4/3" -f nut -c:v rawvideo - | ffplay -hide_banner -i - -vf crop=760:484:16:0,w3fdif
pause