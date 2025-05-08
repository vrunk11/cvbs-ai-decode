@echo off
%~d0
cd %~dp0
cd ../../
echo YC separation :
ffmpeg -thread_queue_size 4096 -hide_banner -loglevel error -f rawvideo -video_size 910x263 -pix_fmt gray16 -i "%~dp1%~n1.tbc" -vf crop=910:242:0:20 -c:v rawvideo -f rawvideo - | "cvbs_ai_decode.exe" -m "%CD%/model/ntsc_yc" -o yc -t 4 | ffmpeg -thread_queue_size 4096 -hide_banner -loglevel error -y -f rawvideo -r (30000/1001)*2 -video_size 2x191664 -pix_fmt y16 -i - -filter_complex "split[i0][i1];[i0]crop=1:191664:0:0[y];[i1]crop=1:191664:1:0[c];[c]split[c1][c2];[y][c1]vstack[yc];[yc][c2]vstack" -pix_fmt y16 -f rawvideo -c:v rawvideo - | ffmpeg -thread_queue_size 4096 -hide_banner -y -f rawvideo -pix_fmt yuv444p16 -video_size 792x242 -r (30000/1001)*2 -i - -f rawvideo -video_size 910x263 -pix_fmt gray16 -r (30000/1001)*2 -i "%~dp1%~n1.tbc" -f rawvideo -video_size 910x263 -pix_fmt gray16 -r (30000/1001)*2 -i "%~dp1%~n1.tbc" -f rawvideo -video_size 910x263 -pix_fmt gray16 -r (30000/1001)*2 -i "%~dp1%~n1.tbc" -f lavfi -r (30000/1001)*2 -i color=0x808080:910x263:d=1,format=y16 -filter_complex "[0]extractplanes=y+u[y][c];[1][y]overlay=118:20[yburst];[3]crop=2:253:72:10,scale=1x1,tmix=frames=6:weights="111111",scale=50x253[replaceburst];[yburst][replaceburst]overlay=74:10[ytbc];[2]crop=50:253:74:10[burst];[4][c]overlay=118:20[cnoburst];[cnoburst][burst]overlay=74:10[ctbc]" -map [ytbc] -pix_fmt y16 -f rawvideo -c:v rawvideo "%~dp1%~n1_aiyc.tbc" -map [ctbc] -pix_fmt y16 -f rawvideo -c:v rawvideo "%~dp1%~n1_aiyc_chroma.tbc"
echo copy of the json file
copy "%~dp1%~n1.tbc.json" "%~dp1%~n1_aiyc.tbc.json"
pause