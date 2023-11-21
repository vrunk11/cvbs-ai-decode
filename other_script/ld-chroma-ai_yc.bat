@echo off
chcp 65001
echo Configuration of the chroma decoder
echo
SET decoder=ntsc3d
SET /p ai-chroma=use AI chroma ? (1) :
SET /p luma-nr=luma-nr (0) :
SET /p chroma-nr=chroma-nr (0) : 
SET /p chroma-gain=chroma-gain (1.0) : 
SET /p chroma-phase=chroma-phase (0) :
SET /p ntscphasecomp=ntsc phase compensation (1):
set ntsc-phase-comp=0
echo
echo Ready to start
pause

if [%decoder%] == [] set decoder=ntsc3d
if [%luma-nr%] == [] set luma-nr=0
if [%chroma-nr%] == [] set chroma-nr=0
if [%chroma-gain%] == [] set chroma-gain=1
if [%chroma-phase%] == [] set chroma-phase=0

set name=%~n1
set name=%name:"=%
set lumafile=0
set chromafile=0

if "%name:~-7%" EQU "_chroma" set name=%name:_chroma=%
if "%name:~-5%" EQU "_aiyc" set name=%name:_aiyc=%

if %ai-chroma% NEQ 0 (set chromafile=%~dp1%name%_aiyc_chroma.tbc) else (set chromafile=set chromafile=%~dp1%name%.tbc)

set lumafile=%~dp1%name%_aiyc.tbc

set "audiofile= "
if exist %~dp1%name%.pcm set audiofile= -f s16le -r 44.1k -ac 2 -i %~dp1%~n1.pcm
if exist %~dp1%name%_cx.pcm set audiofile= -f s16le -r 44.1k -ac 2 -i %~dp1%~n1_cx.pcm
if exist %~dp1%name%.efm.pcm set audiofile= -f s16le -r 44.1k -ac 2 -i %~dp1%~n1.efm.pcm

if exist %~dp1%name%_aiyc.pcm set audiofile= -f s16le -r 44.1k -ac 2 -i %~dp1%~n1.pcm
if exist %~dp1%name%_aiyc_cx.pcm set audiofile= -f s16le -r 44.1k -ac 2 -i %~dp1%~n1_cx.pcm
if exist %~dp1%name%_aiyc.efm.pcm set audiofile= -f s16le -r 44.1k -ac 2 -i %~dp1%~n1.efm.pcm

if "%decoder%" EQU "ntsc1d" set ntsc-phase-comp=--ntsc-phase-comp
if "%decoder%" EQU "ntsc2d" set ntsc-phase-comp=--ntsc-phase-comp
if "%decoder%" EQU "ntsc3d" set ntsc-phase-comp=--ntsc-phase-comp
if "%decoder%" EQU "ntsc3dnoadapt" set ntsc-phase-comp=--ntsc-phase-comp

if %ntsc-phase-comp% NEQ 0 set "fps=(30000/1001)"
if %ntsc-phase-comp% EQU 0 set "fps=25"

if %ntscphasecomp% EQU 0 set "ntsc-phase-comp= "

set lumafile=%lumafile:"=%
set chromafile=%chromafile:"=%
set audiofile=%audiofile:"=%

title Decoding : %~n1   Decoder : %decoder% %ntsc-phase-comp%  Luma-nr : %luma-nr%   Chroma-nr : %chroma-nr%   Chroma-gain : %chroma-gain%   Chroma-phase : %chroma-phase%
ld-chroma-decoder.exe "%lumafile%" --input-json "%lumafile%.json" -f %decoder% --luma-nr %luma-nr% --chroma-nr 0 --chroma-gain 0 --chroma-phase 1 -p y4m | ffmpeg -y -i - -pix_fmt y8 -c:v ffv1 -coder 1 -context 0 -level 3 -slices 4 -slicecrc 0 -pass 1 "%lumafile%_bw.mkv"
ld-chroma-decoder.exe "%chromafile%" --input-json "%lumafile%.json" -f %decoder% %ntsc-phase-comp% --luma-nr 0 --chroma-nr %chroma-nr% --chroma-gain %chroma-gain% --chroma-phase %chroma-phase% -p y4m | ffmpeg -y -r %fps% -i "%lumafile%_bw.mkv" -r %fps% -i - %audiofile% -filter_complex "[0]format=pix_fmts=yuv444p,extractplanes=y[y]; [1]format=pix_fmts=yuv444p,extractplanes=u+v[u][v]; [y][u][v]mergeplanes=0x001020:yuv444p,format=pix_fmts=yuv444p,nnedi=weights='C\:\\ffmpeg\\nnedi3_weights.bin':field=tf:nsize=s16x6:nns=n64:qual=slow:pscrn=new" -r %fps%*2 -c:v ffv1 -coder 1 -context 0 -level 3 -slices 4 -slicecrc 0 -pass 1 -c:a flac -compression_level 11 "%lumafile%.mkv"
echo end of the script
pause
