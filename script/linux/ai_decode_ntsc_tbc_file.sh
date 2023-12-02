#!/bin/bash
cd $(dirname $0)
cd ../../
FILENAME=$(basename "$1" .tbc)
ffmpeg -thread_queue_size 4096 -hide_banner -loglevel error -f rawvideo -video_size 910x263 -pix_fmt gray16 -i "$(dirname $1)/$FILENAME.tbc" -vf crop=910:242:0:20 -c:v rawvideo -f rawvideo - | /lib64/ld-linux-x86-64.so.2 --library-path "./" "./cvbs_ai_decode" -m $(pwd)/model/ntsc_decode -o tbc -t 4 | ffmpeg -thread_queue_size 4096 -hide_banner -y -f rawvideo -pix_fmt y16 -video_size 910x242 -r "(30000/1001)*2" -i - -f rawvideo -video_size 910x263 -pix_fmt gray16 -r "(30000/1001)*2" -i "$(dirname $1)/$FILENAME.tbc" -filter_complex "[1][0]overlay=0:20" -pix_fmt y16 -f rawvideo -c:v rawvideo "$(dirname $1)/"$FILENAME"_aitbc.tbc"
cp $(dirname $1)/$FILENAME.tbc.json "$(dirname $1)/$FILENAME"_aitbc.tbc.json
read -n 1 -s -r -p "Press any key to continue"
