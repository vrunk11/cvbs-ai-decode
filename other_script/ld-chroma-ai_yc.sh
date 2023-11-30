#!/bin/bash
cd $(dirname $0)
FILENAME=$(basename "$1" .tbc)
mkfifo lumapipe
ld-chroma-decoder.exe $FILENAME --input-json "$(dirname $1)/$FILENAME.json" -f ntsc3d --luma-nr 0 --chroma-nr 0 --chroma-gain 0 --chroma-phase 1 -p y4m | ffmpeg -y -i - -c:v rawvideo -f nut pipe:1 > lumapipe
ld-chroma-decoder.exe "$(dirname $1)/$FILENAME_chroma.tbc" --input-json "$(dirname $1)/$FILENAME.json" -f ntsc2d --ntsc-phase-comp --luma-nr 0 --chroma-nr 0 --chroma-gain 1 --chroma-phase 0 -p y4m | ffmpeg -y -r "(30000/1001)*2" -i lumapipe -r "(30000/1001)*2" -i - -filter_complex "[0]format=pix_fmts=yuv444p,extractplanes=y[y]; [1]format=pix_fmts=yuv444p,extractplanes=u+v[u][v]; [y][u][v]mergeplanes=0x001020:yuv444p,format=pix_fmts=yuv444p,nnedi=weights='C\:\\ffmpeg\\nnedi3_weights.bin':field=tf:nsize=s16x6:nns=n64:qual=slow:pscrn=new" -r "(30000/1001)*2" -c:v ffv1 -coder 1 -context 0 -level 3 -slices 4 -slicecrc 0 -pass 1 -c:a flac -compression_level 11 "$(dirname $1)/$FILENAME.mkv"
echo end of the script
read -n 1 -s -r -p "Press any key to continue"