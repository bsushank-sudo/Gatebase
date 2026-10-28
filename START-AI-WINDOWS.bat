@echo off
title GateBase + Local AI (one window)
cd /d "%~dp0"
echo.
echo  ============================================================
echo    GATEBASE + LOCAL AI  -  everything starts from here
echo    App + AI run 100%% on THIS machine. Nothing is hosted.
echo  ============================================================
echo.

rem ---------- 1. start Ollama with browser access allowed ----------
set "OLLAMA_ORIGINS=*"
set "HAS_OLLAMA="
where ollama >nul 2>nul
if not errorlevel 1 set "HAS_OLLAMA=1"

if defined HAS_OLLAMA (
  echo  [1/3] Starting Ollama (browser access allowed)...
  rem if the tray app is already running, restart it our way
  taskkill /IM "ollama app.exe" /F >nul 2>nul
  start "" /b cmd /c "set OLLAMA_ORIGINS=* && ollama serve"
  timeout /t 3 >nul
) else (
  echo  [1/3] Ollama not found - skipping. The app still works
  echo        fully offline with its built-in brain.
  echo        To add a free local AI later: install from ollama.com,
  echo        then run this file again.
)

rem ---------- 2. serve this folder ----------
echo  [2/3] Starting GateBase...
set "PY="
where py >nul 2>nul
if not errorlevel 1 set "PY=py"
if not defined PY (
  where python >nul 2>nul
  if not errorlevel 1 set "PY=python"
)
if defined PY (
  start "" /b cmd /c "timeout /t 2 >nul & start http://localhost:8377"
  echo.
  echo  KEEP THIS WINDOW OPEN while using GateBase.
  echo.
  echo  [3/3] Browser opening at http://localhost:8377
  echo        In the app: AI Coach ^> Connect AI ^> Find local AI
  echo        (or the Ollama card) ^> Connect. Done.
  %PY% -m http.server 8377
) else (
  echo  [3/3] No Python - opening the app file directly.
  start "" "%~dp0index.html"
  echo        In the app: AI Coach ^> Connect AI ^> Find local AI
  timeout /t 6 >nul
)
echo.
echo  TIP for a 4 GB GPU: fast models that fit are
echo      ollama pull qwen2.5:3b     (best all-round)
echo      ollama pull llama3.2:3b    (fast + dependable)
echo  DeepSeek-R1 8B does NOT fit in 4 GB and will crawl.
echo.
