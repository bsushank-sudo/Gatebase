@echo off
title GateBase - GATE Mission Control
cd /d "%~dp0"
echo.
echo  ============================================================
echo    GATEBASE v2.3  -  GATE 2029 / 2030 MISSION CONTROL
echo    Works fully OFFLINE. Your data stays in this browser.
echo  ============================================================
echo.
rem --- find Python if it exists (optional, for server mode) ---
set "PY="
where py >nul 2>nul
if not errorlevel 1 set "PY=py"
if not defined PY (
  where python >nul 2>nul
  if not errorlevel 1 set "PY=python"
)
if defined PY (
  echo  Starting server mode... your browser will open at:
  echo      http://localhost:8377
  echo.
  echo  KEEP THIS WINDOW OPEN while using GateBase.
  echo  Close this window (or press Ctrl+C) when you are done.
  echo.
  start "" /b cmd /c "timeout /t 2 >nul & start http://localhost:8377"
  %PY% -m http.server 8377
  if errorlevel 1 (
    echo.
    echo  Server could not start - opening the app directly instead...
    start "" "%~dp0index.html"
    timeout /t 5 >nul
  )
) else (
  echo  Opening GateBase in your default browser...
  start "" "%~dp0index.html"
  echo.
  echo  Done. You can close this window.
  echo  (If nothing opened, just double-click index.html in this folder.)
  timeout /t 5 >nul
)
