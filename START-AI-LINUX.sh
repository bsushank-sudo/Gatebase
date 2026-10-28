#!/bin/bash
# GateBase + Local AI — run me (Linux)
cd "$(dirname "$0")"
echo ""
echo "  ============================================================"
echo "    GATEBASE + LOCAL AI  -  everything starts from here"
echo "    App + AI run 100% on THIS machine. Nothing is hosted."
echo "  ============================================================"
echo ""

# 1. Ollama with browser access allowed
if command -v ollama >/dev/null 2>&1; then
  echo "[1/3] Starting Ollama (browser access allowed)..."
  if curl -s --max-time 2 http://localhost:11434/api/version >/dev/null 2>&1; then
    echo "      Ollama is already running. If Connect fails with a CORS"
    echo "      error, stop it and run this file again."
  else
    OLLAMA_ORIGINS="*" nohup ollama serve > /tmp/gatebase-ollama.log 2>&1 &
    sleep 3
  fi
else
  echo "[1/3] Ollama not found — skipping. The app works fully offline"
  echo "      with its built-in brain. Add a free local AI anytime:"
  echo "      install from ollama.com, then run this file again."
fi

# 2. serve this folder
echo "[2/3] Starting GateBase..."
PORT=8377
if command -v python3 >/dev/null 2>&1; then
  ( sleep 2; (xdg-open "http://localhost:$PORT" >/dev/null 2>&1 || true) ) &
  echo ""
  echo "  KEEP THIS WINDOW OPEN while using GateBase."
  echo ""
  echo "[3/3] Browser opening at http://localhost:$PORT"
  echo "      In the app: AI Coach > Connect AI > Find local AI"
  echo "      (or the Ollama card) > Connect. Done."
  cd "$(dirname "$0")" && python3 -m http.server "$PORT"
else
  echo "[3/3] No python3 — opening the app file directly."
  xdg-open "$(dirname "$0")/index.html" >/dev/null 2>&1 || true
  sleep 4
fi
echo ""
echo "TIP for a 4 GB GPU: fast models that fit:"
echo "    ollama pull qwen2.5:3b    (best all-round)"
echo "    ollama pull llama3.2:3b   (fast + dependable)"
echo "DeepSeek-R1 8B does NOT fit in 4 GB and will crawl."
