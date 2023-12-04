#!/bin/bash
cd $(dirname $0)
FILENAME=$(basename "$1" .tbc)

echo "chroma gain (default 1):" && read CHROMAGAIN
echo "chroma phase (default 0):" && read CHROMAPHASE
echo "NTSC phase compensation (default 1):" && read PHASECOMP

if [ "$CHROMAGAIN" = "" ] ; then CHROMAGAIN="1" ;fi
if [ "$CHROMAPHASE" = "" ] ; then CHROMAPHASE="0" ;fi
if [ "$PHASECOMP" != "0" ] && [ "$PHASECOMP" != "1" ]; then PHASECOMP="1" ;fi
if [ "$PHASECOMP" = "1" ]; then PHASECOMP="--ntsc-phase-comp" ;else PHASECOMP="" ;fi

mkfifo lumapipe
ld-chroma-decoder "$(dirname $1)/$FILENAME.tbc" --input-json "$(dirname $1)/$FILENAME.tbc.json" -f ntsc3d --luma-nr 0 --chroma-nr 0 --chroma-gain 0 --chroma-phase 1 -p y4m | ffmpeg -hide_banner -loglevel error -thread_queue_size 4096 -y -i - -c:v rawvideo -f nut pipe:1 > lumapipe | ld-chroma-decoder "$(dirname $1)/"$FILENAME"_chroma.tbc" --input-json "$(dirname $1)/$FILENAME.tbc.json" -f ntsc2d --ntsc-phase-comp --luma-nr 0 --chroma-nr 0 --chroma-gain $CHROMAGAIN --chroma-phase $CHROMAPHASE -p y4m | ffmpeg -hide_banner -thread_queue_size 4096 -y -r "(30000/1001)" -i lumapipe -r "(30000/1001)" -i - -filter_complex "[0]format=pix_fmts=yuv444p,extractplanes=y[y]; [1]format=pix_fmts=yuv444p,extractplanes=u+v[u][v]; [y][u][v]mergeplanes=0x001020:yuv444p,format=pix_fmts=yuv444p" -r "(30000/1001)" -top 1 -c:v ffv1 -coder 1 -context 0 -level 3 -slices 4 -slicecrc 0 -pass 1 -c:a flac -compression_level 11 "$(dirname $1)/$FILENAME.mkv"
rm lumapipe
echo "end of the script"
read -n 1 -s -r -p "Press any key to continue"
