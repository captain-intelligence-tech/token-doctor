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
- ❌ **Always-Loaded Skills Noise** (skills lacking `disable-model-invocation: true`, forcing thousands of tokens of static documentation into every interaction)

... your AI environment suffers from **Context Rot**, causing:
1. **Massive Token Waste**: Burning 3,000+ extra tokens *per message*.
2. **Degraded AI Intelligence**: "Lost in the middle" attention degradation.
3. **Slow Latency**: Extra second delays per generation.

**Token Doctor** comprehensively scans workspace rules, coding standards, and **agent skills**, scores your token health (0-100), and performs **one-click surgery (`--heal`)** to keep your prompt lean and pure.

---

## ⚡ Quick Install

```bash
# One-line install via curl (installs CLI and auto-configures Antigravity Agent Skill)
curl -fsSL https://raw.githubusercontent.com/captain-intelligence-tech/token-doctor/main/install.sh | bash
```

*Or manual install:*
```bash
git clone https://github.com/captain-intelligence-tech/token-doctor.git
cd token-doctor
sudo cp bin/token-doctor /usr/local/bin/token-doctor # or /opt/homebrew/bin/

# Install Agent Skill (for Antigravity / Claude Code)
mkdir -p ~/.gemini/config/skills/token-doctor
cp skills/token-doctor/SKILL.md ~/.gemini/config/skills/token-doctor/
```

---

## 🚀 Usage

### 1. Diagnose Workspace & Skills Noise
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
⚠️  [Excessive Always-Loaded Skills] Detected 28 skills without disable-model-invocation: true, preloading into every turn! (-10 pts)
----------------------------------------------------------------
💊 [Doctor Recommendations]
  • Isolate coding & styling rules into CODING_STANDARDS.md
  • Add disable-model-invocation: true to low-frequency skills for on-demand loading

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

### 3. Deep-Audit Official & Plugin Skills (`--skills`)
Official extensions (such as Google DataCloud, Antigravity built-ins) and third-party plugins often preload dozens or hundreds of skills. If they lack `disable-model-invocation: true`, your AI environment injects the full catalog into **every turn**, burning 20,000+ tokens of prompt noise!
```bash
token-doctor --skills
```
Output:
```text
================================================================
🩺 Token Doctor - Global, Plugin & Official Skills Audit
================================================================
📊 Total Skills Audited: 131
🚨 Always-Loaded (Active): 96 (injected into every interaction)
🛡️ On-Demand: 35 (zero prompt noise)
⚡ Estimated Skills Prompt Noise: ~20,276 Tokens / turn

[🏛️ Official / Built-in Pre-installed Skills] (25 active)
  • gcp-spark (~185 tokens)
  • gcp-dataflow (~359 tokens)
  • dbt-bigquery (~158 tokens)
  ...
[🔌 Plugin Pre-installed Skills] (71 active)
  • xlsx (~406 tokens)
  • pdf (~276 tokens)
  ...
----------------------------------------------------------------
💊 [Doctor Recommendations]
  👉 Run one-click surgery to freeze them to on-demand:
     token-doctor --disable-skills
================================================================
```

### 4. One-Click Skills Noise Surgery (`--disable-skills`)
Safely injects `disable-model-invocation: true` into all always-loaded skills:
```bash
token-doctor --disable-skills
```
- ✅ **Zero Destruction**: Retains 100% of the skill code, logic, and resources.
- ✅ **Fully Usable On-Demand**: Trigger them anytime via explicit slash commands (e.g. `/token-doctor`) or contextual queries.
- ✅ **Instant Savings**: Reclaims thousands of tokens per conversation turn immediately!

### 5. Audit MCP Servers & Tool Schema Noise (`--mcp`)
Inspects active servers in `~/.gemini/config/mcp_config.json`, identifies official extensions (e.g., `notebooks`, `visualization`, `data-agent-kit`) vs custom tools, and estimates tool schema overhead:
```bash
token-doctor --mcp
```

### 6. Language Selection (Bilingual CLI)
Token Doctor automatically detects your terminal language (`LANG`/`LC_ALL`), but you can explicitly specify it:
```bash
token-doctor --lang en    # English output
token-doctor --lang zh    # Traditional Chinese output
```

### 7. CI/CD & JSON Output
```bash
token-doctor --json
```

---

## 🤖 Bundled AI Agent "Diagnostic Skill" (`skills/token-doctor`)

Token Doctor is more than a CLI tool — it includes an official **Diagnostic Agent Skill** built for **Antigravity** and **Claude Code**:

### 💡 Dual-Surface Workflow:
- **IDE (Staff Officer)**: Type `/token-doctor` or ask "diagnose token health" in your chat. The AI agent executes probe diagnostics and provides tailored architecture advice.
- **CLI (Engineer)**: When mass refactoring is needed, execute `token-doctor --heal` in the terminal for sub-second surgery without burning chat tokens on repetitive rewrites.

### 📦 Manual Skill Installation:
```bash
# Global install (accessible across all workspaces)
mkdir -p ~/.gemini/config/skills/token-doctor
cp skills/token-doctor/SKILL.md ~/.gemini/config/skills/token-doctor/

# Project-level install (active in current repository only)
mkdir -p .agents/skills/token-doctor
cp skills/token-doctor/SKILL.md .agents/skills/token-doctor/
```

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
