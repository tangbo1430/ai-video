@echo off
setlocal
chcp 65001 >nul
title AI 漫剧工作台
cd /d "%~dp0"

if not exist "ComfyUI\python_embeded\python.exe" (
  echo [缺少组件] 请确认 ComfyUI 运行环境已经安装到本目录。
  echo 应存在：ComfyUI\python_embeded\python.exe
  pause
  exit /b 1
)

curl -s -m 3 http://127.0.0.1:7861/ >nul 2>&1
if not errorlevel 1 (
  start "" http://127.0.0.1:7861/
  exit /b 0
)

curl -s -m 3 http://127.0.0.1:8190/system_stats >nul 2>&1
if errorlevel 1 start "AI Video ComfyUI" /min "ComfyUI\run_nvidia_gpu_fast_fp16_accumulation.bat"

echo 正在启动 AI 漫剧工作台：http://127.0.0.1:7861
start "" http://127.0.0.1:7861/
"ComfyUI\python_embeded\python.exe" app.py
pause
exit /b %ERRORLEVEL%
