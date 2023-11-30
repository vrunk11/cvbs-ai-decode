@echo on
chcp 65001
echo Configuration of the chroma decoder
echo
SET decoder=ntsc3d
SET ai-chroma=1
SET luma-nr=0
SET chroma-nr=0
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

if %ai-chroma% NEQ 0 (set chromafile=%~dp1%name%_chroma.tbc) else (set chromafile=set chromafile=%~dp1%name%.tbc)

set lumafile=%~dp1%name%.tbc

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
ld-chroma-decoder.exe -q "%chromafile%" --input-json "%lumafile%.json" -f %decoder% %ntsc-phase-comp% --luma-nr 0 --chroma-nr %chroma-nr% --chroma-gain %chroma-gain% --chroma-phase %chroma-phase% -p y4m | ffmpeg -r (30000/1001) -i - -f rawvideo -video_size 910x526 -r (30000/1001) -pixel_format y16 -i "%lumafile%" %audiofile% -filter_complex "[1]il=l=i,crop=760:488:131:38,colorlevels=rimin=0.2753:gimin=0.2753:bimin=0.2753:rimax=0.7812:gimax=0.7812:bimax=0.7812,setsar=1,format=pix_fmts=y16,extractplanes=y[y]; [0]setsar=1,format=pix_fmts=yuv444p16,extractplanes=u+v[u][v]; [y][u][v]mergeplanes=0x001020:yuv444p16" -f nut -c:a copy -c:v rawvideo - | ffplay - -vf crop=760:480,setdar=4/3,w3fdif
pause