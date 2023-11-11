#!/bin/sh
cd $(dirname $0)
cd ../../
ffmpeg -hide_banner -loglevel error -f rawvideo -video_size 910x263 -pix_fmt gray16 -i "$(dirname $1)/$(basename -s $1).tbc" -vf crop=910:242:0:20 -c:v rawvideo -f rawvideo - | "cvbs_ai_decode" -m $pwd/model/ntsc_1d -t 4 | ffmpeg -hide_banner -y -f rawvideo -r (30000/1001) -video_size 792x484 -pix_fmt rgb48 -i - -filter_complex "extractplanes=r+g+b[Ry][Gu][Bv];[Ry][Gu][Bv]mergeplanes=0x001020:yuv444p16,format=yuv422p,il=l=i:c=i:a=i,setdar=4/3,crop=760:484:16:0" -c:v ffv1 -coder 1 -context 0 -level 3 -slices 4 -slicecrc 0 -pass 1 -top 1 "$(dirname $1)/$(basename -s $1)_aidecode.mkv"
read -n 1 -s -r -p "Press any key to continue"
