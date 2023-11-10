@echo off

SET /p start_minute= start time minute :
SET /p start_second= start time second :
SET /p a_offset= audio offset :
set /a "time=((%start_minute% * 60) + %start_second%) * 30"
SET /p efm= is EFM (1) :
if %time% EQU 0 SET /p sharp= add sharpening (0,1,2,3..) :
if %time% NEQ 0 set sharp=0

set name=%~n1
set name=%name:"=%

if "%name:~-7%" EQU "_chroma" set name=%name:_chroma=%.tbc"

if %sharp% NEQ 0 set command=ffmpeg -f rawvideo -pix_fmt gray16 -video_size 910x526 -r (30000/1001) -i "%~dp1%name%.tbc" -vf cas=0.%sharp% -f rawvideo - ^| fl2k_file2 -d 0 -s ntsc -tbcR -R16 -R - -tbcB -B16 -B "%~dp1%name%_chroma.tbc"

if %sharp% EQU 0 set command=fl2k_file2 -d 0 -s ntsc -tbcR -R16 -R "%~dp1%name%.tbc" -tbcB -B16 -B "%~dp1%name%_chroma.tbc"

if %efm% NEQ 0 %command% -A "%~dp1%name%.efm.pcm" -FstartG %time% -audioOffset %a_offset% -syncA R -pipeMode A | ffmpeg -f s16le -ac 2 -i -  -f wav - | ffplay - & goto :eof

SET /p cx= is cx (1) :
if %cx% NEQ 0 %command% -A "%~dp1%name%_cx.pcm" -FstartG %time% -audioOffset %a_offset% -syncA R -pipeMode A | ffmpeg -f s16le -ac 2 -i -  -f wav - | ffplay - & goto :eof

SET /p pcm= is pcm (1) :
if %pcm% NEQ 0 %command% -A "%~dp1%name%.pcm" -FstartG %time% -audioOffset %a_offset% -syncA G -pipeMode A | ffmpeg -f s16le -ac 2 -i -  -f wav - | ffplay -  & goto :eof

%command% -FstartG %time%
