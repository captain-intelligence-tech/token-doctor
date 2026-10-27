# 🩺 Token Doctor (`token-doctor`)

> **Stop burning API tokens on prompt bloat and context rot.**  
> A lightweight diagnostic & auto-healing CLI for AI agent development environments (Antigravity, Claude Code, Cursor, Windsurf).

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-lightgrey.svg)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## 🌟 Why Token Doctor?

In modern AI-assisted engineering, agents like **Antigravity**, **Claude Code**, and **Cursor** automatically ingest files like `AGENTS.md`, `GEMINI.md`, and `CLAUDE.md` on **every single interaction**.

When these instruction files become bloated with:
- ❌ **Leaked Code Standards** (e.g., component line limits, CSS rules, framework specifics)
- ❌ **Duplicate Global Directives** (e.g., repeated conventional commits or language rules)
- ❌ **Conflicting Rule Files** (e.g., having both `GEMINI.md` and `AGENTS.md` loaded simultaneously)

... your AI environment suffers from **Context Rot**, causing:
1. **Massive Token Waste**: Burning 3,000+ extra tokens *per message*.
2. **Degraded AI Intelligence**: "Lost in the middle" attention degradation.
3. **Slow Latency**: Extra second delays per generation.

**Token Doctor** diagnoses your workspace in milliseconds, scores your token health (0-100), and performs **one-click surgery (`--heal`)** to keep your prompt lean and pure.

---

## ⚡ Quick Install

```bash
# One-line install via curl
curl -fsSL https://raw.githubusercontent.com/tony/token-doctor/main/install.sh | bash
```

*Or manual install:*
```bash
git clone https://github.com/tony/token-doctor.git
cd token-doctor
sudo cp bin/token-doctor /usr/local/bin/token-doctor # or /opt/homebrew/bin/
```

---

## 🚀 Usage

### 1. Diagnose Current Project
```bash
token-doctor
```

Output:
```text
================================================================
🩺 Token 健檢醫生 - 專案健康診斷報告
📂 專案名稱: customer-web (/Users/tony/Documents/Code/customer-web)
================================================================
📊 健康綜合評分: 70 / 100 [輕度超重 (Minor Spillover)]
⚡ 預估每輪對話靜態底噪: ~2,450 Tokens (建議目標: < 1,200 Tokens)

【🔍 病灶盤點與診斷清單】
----------------------------------------------------------------
🚨 [代碼標準外溢] AGENTS.md (第 5,23 行) 混入組件行數、樣式或框架調用規範！(扣 15 分)
⚠️  [文檔體積過重] AGENTS.md 高達 71 行，已偏離 20~30 行純粹業務指針的標準。(扣 15 分)
----------------------------------------------------------------
💊 【醫生處方箋 (Recommendations)】
  • 將代碼與樣式規範安全剪下，移植至 CODING_STANDARDS.md

👉 想要自動完成上述修復？請在終端機執行：
   token-doctor --heal
================================================================
```

### 2. One-Click Auto-Heal (`--heal` / `--fix`)
```bash
token-doctor --heal
```
Automatically:
- ✅ Isolates code standards from `AGENTS.md` into `CODING_STANDARDS.md`.
- ✅ Removes duplicate global rules.
- ✅ Backs up and removes conflicting `GEMINI.md`.
- ✅ Ensures `.scratch/` ticket sandbox exists with `.gitignore`.

### 3. Diagnose Any Path
```bash
token-doctor /path/to/any/project
```

### 4. CI/CD & JSON Output
```bash
token-doctor --json
```

---

## 🤖 AI Agent Skill Integration (`/token-doctor`)

Token Doctor comes bundled with an official Agent Skill for **Antigravity** and **Claude Code**:

1. Copy `skills/token-doctor` to your agent skills directory (`~/.gemini/config/plugins/...` or `.agents/skills/`).
2. Inside your IDE, simply type:
   ```text
   /token-doctor
   ```
   The AI will run the diagnosis and offer conversational recommendations!

---

## 🤝 Contributing

We welcome contributions from the community!
- [ ] Support Cursor `.cursorrules` / `.cursor/rules` diagnostic checks
- [ ] Support Windsurf `.windsurfrules` checks
- [ ] Add AST-based code standard extraction
- [ ] Web UI Dashboard

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📄 License

MIT License. Free and open source for everyone.
