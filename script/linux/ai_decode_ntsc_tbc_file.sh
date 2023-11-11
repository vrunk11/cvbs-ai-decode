#!/bin/sh
cd $(dirname $0)
cd ../../
ffmpeg -hide_banner -loglevel error -f rawvideo -video_size 910x263 -pix_fmt gray16 -i "$(dirname $1)/$(basename -s $1).tbc" -vf crop=910:242:0:20 -c:v rawvideo -f rawvideo - | "cvbs_ai_decode" -m $pwd/model/ntsc_decode -o tbc -t 4 | ffmpeg -hide_banner -y -f rawvideo -pix_fmt y16 -video_size 910x242 -r (30000/1001)*2 -i - -f rawvideo -video_size 910x263 -pix_fmt gray16 -r (30000/1001)*2 -i "$(dirname $1)/$(basename -s $1).tbc" -filter_complex "[1][0]overlay=0:20" -pix_fmt y16 -f rawvideo -c:v rawvideo "$(dirname $1)/$(basename -s $1)_aitbc.tbc"
read -n 1 -s -r -p "Press any key to continue"
