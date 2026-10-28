#!/bin/bash
# GateBase launcher for Linux — run:  bash START-HERE-LINUX.sh
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
  ( sleep 1; xdg-open "http://localhost:8377" 2>/dev/null ) &
  python3 -m http.server 8377 || xdg-open "index.html" 2>/dev/null
else
  echo "  Opening GateBase in your default browser..."
  xdg-open "index.html" 2>/dev/null || echo "  Please open index.html in your browser to start."
  sleep 3
fi
