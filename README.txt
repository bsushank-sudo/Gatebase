================================================================
  GATEBASE v2.6 — GATE 2029 / 2030 MISSION CONTROL
  Offline-first study command center. No install, no accounts,
  no internet needed to use it, no cost.
================================================================

RUN IT IN 2 COMMANDS (ANY OS)
-----------------------------
Extract the ZIP, then open the app. That's the whole setup.

  Windows (Command Prompt or PowerShell):
      tar -xf GATE-Mission-Control-v2.zip
      start GateBase\index.html
      (or right-click the ZIP -> "Extract All", then double-click
       START-HERE-WINDOWS.bat or index.html)

  macOS (Terminal):
      unzip GATE-Mission-Control-v2.zip
      open GateBase/index.html
      (or double-click START-HERE-MAC.command — if macOS blocks it,
       right-click -> Open; index.html always works too)

  Linux (Terminal):
      unzip GATE-Mission-Control-v2.zip
      xdg-open GateBase/index.html
      (or run:  bash GateBase/START-HERE-LINUX.sh)

NO INTERNET, NO INSTALLS, NO SETUP. Everything works offline
except the "Fetch updates" buttons and the live opportunity radar,
which simply use the internet when it is available.

PREFER DOUBLE-CLICK? (ALSO 2 STEPS)
-----------------------------------
  1. Extract the ZIP (any method)
  2. Double-click one of these inside the GateBase folder:
       START-HERE-WINDOWS.bat   (Windows)
       START-HERE-MAC.command   (macOS)
       START-HERE-LINUX.sh      (Linux)
       index.html               (ANY OS — always works)
     The START-HERE launchers use Python for a nicer server mode
     if it is installed, and fall back to opening the app directly
     if it is not. You never need to install anything.

WHAT'S NEW IN v2.6 — THE PREMIUM COACH INTERFACE
------------------------------------------
- The AI Coach is rebuilt borderless, z.ai / ChatGPT style: no boxes,
  no outlined widgets. Provider/model/mode switchers are quiet pills,
  bot answers carry a branded gradient avatar, the composer is one
  floating rounded pill with an inline circular send button (it wakes
  up when you type, turns into stop while streaming), suggestion chips
  are soft borderless pills, and the whole conversation sits in a
  centered reading-width column. Dark mode and mobile follow along.

WHAT'S NEW IN v2.5 — THE AI COACH OVERHAUL
------------------------------------------
- CONNECT ANY AI, LOCAL OR PAID, IN 60 SECONDS (AI Coach -> Connect AI):
  * Local, free, private: Ollama, LM Studio, llama.cpp, Jan, GPT4All,
    KoboldCpp, vLLM, or any custom local server. "Find local AI"
    auto-detects what is running — one click, zero typing.
  * Cloud APIs (bring a key): Google Gemini (free tier), OpenAI,
    OpenRouter, Groq, DeepSeek, Mistral, xAI Grok, Anthropic Claude.
    Keys are stored ONLY in your browser's localStorage.
  * NO HOSTING NEEDED, EVER. A local AI runs on your own machine and
    this page talks to it straight from your browser. You never
    deploy, pay for, or configure a server for the app itself.
- SPEED & VRAM — the 4 GB fast lane (Ollama users):
  * Live GPU readout (ollama ps in the app): green = fully on GPU,
    amber = split GPU+CPU (slow), red = all CPU (crawls).
  * Curated fast-lane models that FIT a 4 GB card, with one-tap
    pull + progress: qwen2.5:3b, llama3.2:3b, qwen3:4b, phi3.5,
    gemma3:4b, gemma2:2b and more.
  * WHY DeepSeek-R1 8B is incredibly slow on 4 GB: it is ~5.2 GB —
    bigger than the card — so Ollama splits it across GPU+RAM (1-3
    tokens/s), and R1 models also generate a long hidden reasoning
    chain before every visible word. A 2-3 GB model that fits fully
    in VRAM answers 10-30x faster on the same machine.
  * Speed settings that apply automatically: answer-length cap
    (num_predict/max_tokens), context window, keep-model-loaded,
    temperature, and hide-reasoning-chains for R1-style models.
- Full note-style answers: streaming, markdown, tables, worked
  examples — grounded in YOUR real app data (progress, PYQ scores,
  streak, weakest subjects). It never asks for info it already has.
- PYQ precision: "explain OS question 3" (or DS/TOC/CN/algo...) —
  exact question + options + baked answer key + worked explanation,
  offline; with a connected AI it becomes a full teaching walkthrough.
- Answer Keys tab in the PYQ Vault: every practice-bank answer with
  its explanation, baked in, works offline.
- Mode switch (GATE / JNTUH / GATE+JNTUH) on the coach bar.
- Module separation: opportunity HUNTING moved to Parallel Tracks ->
  Opportunity Radar; the coach is now pure Q&A, teaching and
  cross-checking your finds.

WHAT'S NEW IN v2.4
------------------
- NEW MODULE: "JNTUH Sem Command" (your R25 regulation, 2026-2030):
  * Sem Papers (PYQs) tab - 223 real JNTUH paper links across all 8
    semesters (last ~5 years: R16/R18/R22 regular exams). Click a
    subject -> download page opens -> Download. Plus an old-pattern
    to-R25 conversion table and official portals.
  * Important Topics tab - R25 unit-wise topics for every 1st/2nd-year
    subject (from the official R25 syllabus book), unit-wise
    most-repeated topics for later semesters, the official R25 marks
    system (40 internal + 60 external, CBT best-2-of-3, either-or
    Part B), the absolute grade table, and the 8-9 CGPA playbook.
  * Repeated Models tab - actual repeated-question sets per subject
    (mined from R18/R22/R25 papers), Study-FIRST lists, extra-high
    priority lists, full question banks, and "Guarantee" sets.
  * Why it works: R25 mids cover only HALF the syllabus each, the CBT
    is a free third attempt, every unit in the final offers 2 questions
    (answer 1), and JNTUH recycles a small question-model bank -
    that is how you hold 8-9 CGPA without reading the whole syllabus.

WHAT'S NEW IN v2.3
------------------
- "The 500 Route" now has TWO sections:
  * Simulated Data — the 36-agent, 863-day stress test:
    phases, hour loads, non-negotiables, deadly patterns, protocols,
    the 2030 safety net. Full autopsy:
    GateBase_500_Route_Stress_Test_Report.pdf (in this folder).
  * Organic Data — Real People — ten real GATE CSE aspirants who
    finished at/near the sub-500 line, collected from r/GATEtard,
    Quora, GATE Overflow blogs, Medium and topper interviews:
    their windows, hours, workflows, exact sources and quotes;
    filterable by context (in college / with a job / full-time).
  * The 5-month reality check: why the sim's 5-month sprint failed
    at college pace while real 5-monthers went full-time —
    hours x consistency is the currency, not calendar months.
  * Organic consensus (what 9-10 of 10 did), community marks-to-rank
    data, the actual free-first source stack, and a sim-vs-organic
    cross-check.

WHAT WAS NEW IN v2.2
--------------------
- "The 500 Route" module (simulation section)
- Dark mode (clean, deliberate palette — toggle in the sidebar)
- Opportunity radar now runs inside the AI Coach module and organizes
  every find into sections: hackathons, internships, live sessions...

WHAT'S INSIDE
-------------
index.html                 the app (open this)
style.css                  the clean design system (light + dark)
js/                        all logic + data (syllabus, questions,
                           plan, 500 Route, knowledge base)
pyq/                       15 REAL GATE CSE papers (2016-2026) PDFs
                             - open them from the PYQ Vault inside
                               the app
                             - solve on paper, then log your score
                               in the tracker
START-HERE-WINDOWS.bat     Windows launcher (optional)
START-HERE-MAC.command     macOS launcher (optional)
START-HERE-LINUX.sh        Linux launcher (optional)
START-AI-WINDOWS.bat       Windows + local AI in one double-click
START-AI-MAC.command       macOS + local AI in one double-click
START-AI-LINUX.sh          Linux + local AI in one run
GateBase_500_Route_...pdf  the full 500-route stress-test report

YOUR PROGRESS LIVES IN THE BROWSER
----------------------------------
All progress (steps done, quiz history, PYQ scores, check-ins) is
stored in the SAME browser you use. Rules of thumb:
- Keep using the same browser (Chrome remembers Chrome's data)
- Every few weeks: Settings -> Export backup (saves a .json file)
- Moving devices? Copy the file, then Settings -> Import backup

AI COACH
--------
Fully offline by default. Tell it in plain English what you finished —
"finished pointers in C", "solved GATE 2020, got 52",
"add hackathon TechFest, deadline March 15" — it updates everything.
It also answers the whole syllabus: weightages, topics, resources,
cutoffs, strategy, your plan, your analytics, and PYQ questions
("explain OS question 3").

WANT A BIGGER BRAIN? THE 60-SECOND LOCAL-AI WALKTHROUGH
-------------------------------------------------------
You do NOT host anything, and you do NOT need the internet app
hosted anywhere. The AI runs on your machine; the app is just files.

  Step 1 (once): install Ollama from https://ollama.com/download
         (or LM Studio / Jan / GPT4All — all work too)
  Step 2: get a model that FITS a 4 GB GPU — in a terminal:
             ollama pull qwen2.5:3b        (best all-round, 1.9 GB)
         (deepseek-r1:8b needs ~5.2 GB — it will NOT fit and will
          be incredibly slow. The app's Speed & VRAM panel shows
          exactly what fits, with one-tap pulls.)
  Step 3: double-click START-AI-WINDOWS.bat (or START-AI-MAC.command /
         START-AI-LINUX.sh). It starts Ollama with browser access
         allowed + serves the app + opens your browser. One window.
         (Manual way, if you prefer: quit the Ollama tray app, then
          run:   OLLAMA_ORIGINS=* ollama serve   and open index.html)
  Step 4: in the app — AI Coach -> Connect AI -> "Find local AI
         automatically" -> Connect. Pick the model. Done.
  Step 5: ask anything. Answers stream in full study-note style,
         grounded in your real progress data.

PREFER CLOUD? Same 60 seconds: Connect AI -> Google Gemini (free
tier key from aistudio.google.com) or OpenAI / Groq / OpenRouter /
DeepSeek / Mistral / xAI / Claude. Paste the key, Connect. Keys live
only in your browser. Note: a page opened via file:// or a plain
local server cannot reach some cloud endpoints — if a cloud preset
fails, use the START-AI launcher (http://localhost:8377) or the
hosted preview instead.

GPU SPEED, IN ONE PARAGRAPH
---------------------------
4 GB VRAM fits models up to ~3-4B at 4-bit quant (qwen2.5:3b,
llama3.2:3b, qwen3:4b, phi3.5, gemma3:4b, gemma2:2b, llama3.2:1b).
Anything bigger (deepseek-r1:8b = ~5.2 GB) gets SPLIT: part on GPU,
part in system RAM on the CPU — 1-3 tokens/s, painful. Check live in
the app: AI Coach -> Speed & VRAM -> "what's on your GPU right now".
Green chip = fully on GPU. Keep answers capped (default 512 tokens)
and keep the model loaded (default 30 min) so replies stay instant.

OPTIONAL: PHONE / LAN ACCESS
----------------------------
index.html works by double-click. If you want GateBase on your
phone via Wi-Fi: keep the START-HERE launcher running (server mode),
find your computer's IP (ipconfig / ifconfig), then on the phone
open  http://YOUR-COMPUTER-IP:8377  — both devices must be on the
same Wi-Fi.

TARGETS
-------
Primary:  GATE Feb 2029  (6th semester — first eligible attempt)
Backup:   GATE Feb 2030  (8th semester — only if needed)
