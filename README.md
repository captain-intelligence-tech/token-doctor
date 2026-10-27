# 🩺 Token Doctor (`token-doctor`)  Token 健檢醫生
> **Stop burning API tokens on prompt bloat and context rot.**  
> A lightweight diagnostic & auto-healing CLI for AI agent development environments (Antigravity, Claude Code, Cursor, Windsurf).

<p align="left">
  <a href="README.md"><b>English</b></a> |
  <a href="README.zh-TW.md"><b>繁體中文</b></a>
</p>

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-lightgrey.svg)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Organization](https://img.shields.io/badge/Maintained%20by-Captain%20Intelligence%20Tech-0A66C2.svg)](https://github.com/captain-intelligence-tech)

---

## 🌟 Why Token Doctor?

In modern AI-assisted engineering, agents like **Antigravity**, **Claude Code**, **Cursor**, and **Windsurf** automatically ingest workspace instruction files (`AGENTS.md`, `GEMINI.md`, `CLAUDE.md`, `.cursorrules`) on **every single interaction**.

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
curl -fsSL https://raw.githubusercontent.com/captain-intelligence-tech/token-doctor/main/install.sh | bash
```

*Or manual install:*
```bash
git clone https://github.com/captain-intelligence-tech/token-doctor.git
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
🩺 Token Doctor - Workspace Health Report
📂 Project: my-app (/Users/developer/Code/my-app)
================================================================
📊 Health Score: 70 / 100 [Minor Spillover]
⚡ Estimated Prompt Noise: ~2,450 Tokens / turn (Target: < 1,200 Tokens)

[🔍 Diagnostic Findings & Symptoms]
----------------------------------------------------------------
🚨 [Code Standard Spillover] AGENTS.md (lines 5,23) leaks styling, framework, or line-count rules! (-15 pts)
⚠️  [Bloated Context] AGENTS.md is 71 lines, exceeding the recommended 20-30 line context pointer. (-15 pts)
----------------------------------------------------------------
💊 [Doctor Recommendations]
  • Isolate coding & styling rules into CODING_STANDARDS.md

👉 To automatically heal all issues, run in your terminal:
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
- ✅ Backs up and deactivates conflicting `GEMINI.md`.
- ✅ Ensures `.scratch/` ticket sandbox exists with `.gitignore`.

### 3. Language Selection (Bilingual CLI)
Token Doctor automatically detects your terminal language (`LANG`/`LC_ALL`), but you can explicitly specify it:
```bash
token-doctor --lang en    # English output
token-doctor --lang zh    # Traditional Chinese output
```

### 4. CI/CD & JSON Output
```bash
token-doctor --json
```

---

## 🤖 AI Agent Skill Integration (`/token-doctor`)

Token Doctor comes bundled with an official Agent Skill for **Antigravity** and **Claude Code**:

1. Copy `skills/token-doctor` to your agent skills directory (`~/.gemini/config/plugins/...` or `.agents/skills/`).
2. Inside your IDE chat, simply type:
   ```text
   /token-doctor
   ```
   The AI will run the diagnosis and offer conversational recommendations!

---

## 🤝 Contributing & Community Roadmap

We welcome developers worldwide to collaborate and expand Token Doctor!
- [ ] Add support for Cursor `.cursorrules` and `.cursor/rules`
- [ ] Add support for Windsurf `.windsurfrules`
- [ ] Add token cost visualization / interactive terminal UI (TUI)
- [ ] Support AST-based automated code standard extraction

See [CONTRIBUTING.md](CONTRIBUTING.md) for full contribution guidelines.

---

## 📄 License

Maintained with ❤️ by [Captain Intelligence Tech 凱騰智慧科技](https://github.com/captain-intelligence-tech).  
Licensed under the [MIT License](LICENSE).
