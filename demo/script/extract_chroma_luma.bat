@echo off
ffmpeg -i %~1 -f lavfi -i color=0x808080:910x525:d=1,format=y16 -filter_complex "[0]crop=910:525,format=pix_fmts=yuv444p,extractplanes=y+u+v[y][u][v]; [1][u][v]mergeplanes=0x001020:yuv444p[c]" -map [y] %~dp1%~n1_luma.png -map [c] %~dp1%~n1_chroma.png
pause