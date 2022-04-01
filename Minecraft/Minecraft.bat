@echo off
title Starting Minecraft...
IF NOT EXIST "%CD%\bin\Minecraft.exe" (
  md "%CD%\bin"
  curl -o "%CD%\bin\Minecraft.exe" https://launcher.mojang.com/download/Minecraft.exe
  echo Download Complete
  timeout 3
)
start "" "%CD%\bin\Minecraft.exe" --workDir "%CD%\data\.minecraft"
