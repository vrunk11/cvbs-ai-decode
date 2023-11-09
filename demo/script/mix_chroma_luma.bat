@echo off
ffmpeg -i %~1 -i %~2 -filter_complex "[0]setsar=1,crop=910:525,format=pix_fmts=yuv444p,extractplanes=y[y]; [1]setsar=1,crop=910:525,format=pix_fmts=yuv444p,extractplanes=u+v[u][v]; [y][u][v]mergeplanes=0x001020:yuv444p" %~dp1%~n1_merged.png
pause