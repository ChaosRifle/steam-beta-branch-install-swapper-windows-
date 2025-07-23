@echo off
title PTU-LIVE file swap
set steamDir="C:\Program Files (x86)\Steam\steamapps\common\Starbase"
set liveDir=C:\Starbase
set ptuDir=C:\Starbase
set saveDir=C:\Starbase

IF exist %saveDir%\Currently_PTU (
  echo going to LIVE!
  rmdir %steamDir%
  mklink /D %steamDir% %liveDir%\LIVE
  ren %saveDir%\Currently_PTU Currently_LIVE
) else ( 
  echo going to PTU!
  rmdir %steamDir%
  mklink /D %steamDir% %ptuDir%\PTU
  ren %saveDir%\Currently_LIVE Currently_PTU
)
pause