#!/bin/bash
# GateBase launcher for macOS — double-click this file or run it in Terminal.
cd "$(dirname "$0")"
echo ""
echo "  ============================================================"
echo "    GATEBASE v2.3  -  GATE 2029 / 2030 MISSION CONTROL"
echo "    Works fully OFFLINE. Your data stays in this browser."
echo "  ============================================================"
echo ""
if command -v python3 >/dev/null 2>&1; then
  echo "  Starting server mode... your browser will open at:"
  echo "      http://localhost:8377"
  echo ""
  echo "  KEEP THIS TERMINAL WINDOW OPEN while using GateBase."
  echo "  Press Ctrl+C (or close the window) when you are done."
  echo ""
  ( sleep 1; open "http://localhost:8377" ) &
  python3 -m http.server 8377 || open "index.html"
else
  echo "  Opening GateBase in your default browser..."
  open "index.html"
  echo "  (If nothing opened, just double-click index.html in this folder.)"
  sleep 3
fi
