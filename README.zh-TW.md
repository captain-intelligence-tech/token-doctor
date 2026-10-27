# 🩺 Token 健檢醫生 (`token-doctor`)

> **停止在 AI 提示詞中浪費寶貴的 API Tokens！**  
> 專為 AI 代理開發環境（Antigravity、Claude Code、Cursor、Windsurf）量身打造的極速 Prompt 底噪診斷與一鍵手術治理工具。

<p align="left">
  <a href="README.md"><b>English</b></a> |
  <a href="README.zh-TW.md"><b>繁體中文</b></a>
</p>

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-lightgrey.svg)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Organization](https://img.shields.io/badge/維護者-Captain%20Intelligence%20Tech-0A66C2.svg)](https://github.com/captain-intelligence-tech)

---

## 🌟 為什麼需要 Token Doctor？

在現代 AI 協同工程中，**Antigravity**、**Claude Code**、**Cursor** 與 **Windsurf** 等 Agent 會在**每一次對話時，無差別載入**專案內的設定檔（如 `AGENTS.md`、`GEMINI.md`、`CLAUDE.md`、`.cursorrules`）。

當這些規則文件隨時間推移產生下列病灶：
- ❌ **代碼標準外溢**（如混入組件行數上限、CSS 樣式規範、框架調用細節）
- ❌ **全域指令重複定義**（如重複宣告 Conventional Commits 或語言格式）
- ❌ **衝突規則雙重載入**（如根目錄同時存在 `GEMINI.md` 與 `AGENTS.md`）

你的 AI 環境將面臨嚴重的 **「上下文腐敗 (Context Rot)」**，導致：
1. **Token 嚴重浪費**：每輪對話平白燃燒 3,000+ 靜態底噪 Tokens。
2. **AI 智商衰減**：產生注意力「迷失於中段 (Lost in the middle)」的認知劣化。
3. **回應延遲飆升**：每次推論皆因龐大的前置 Prompt 產生額外延遲。

**Token Doctor** 能在數毫秒內掃描專案，產出 0-100 健康評分，並提供**一鍵自動手術 (`--heal`)**，讓你的 AI 上下文重回極致精純！

---

## ⚡ 極速安裝

```bash
# 一鍵透過 curl 安裝
curl -fsSL https://raw.githubusercontent.com/captain-intelligence-tech/token-doctor/main/install.sh | bash
```

*或手動複製安裝：*
```bash
git clone https://github.com/captain-intelligence-tech/token-doctor.git
cd token-doctor
sudo cp bin/token-doctor /usr/local/bin/token-doctor # 或 /opt/homebrew/bin/
```

---

## 🚀 使用指南

### 1. 診斷當前專案
```bash
token-doctor
```

終端診斷報告範例：
```text
================================================================
🩺 Token 健檢醫生 - 專案健康診斷報告
📂 專案名稱: customer-web (/Users/developer/Code/customer-web)
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

### 2. 一鍵自動手術治理 (`--heal` / `--fix`)
```bash
token-doctor --heal
```
自動完成以下手術：
- ✅ 將 `AGENTS.md` 內的代碼審查標準安全隔離至 `CODING_STANDARDS.md`。
- ✅ 清除重複宣告的全域指令。
- ✅ 備份並凍結重複注入的 `GEMINI.md`（阻斷雙重載入）。
- ✅ 建立 `.scratch/` 工單規格沙盒並配置 `.gitignore`。

### 3. 多語言切換 (雙語 CLI)
Token Doctor 預設會根據終端環境自動偵測，亦可手動指定：
```bash
token-doctor --lang zh    # 繁體中文輸出
token-doctor --lang en    # 英文輸出
```

### 4. CI/CD 與腳本集成 (JSON 輸出)
```bash
token-doctor --json
```

---

## 🤖 AI 智能體技能整合 (`/token-doctor`)

Token Doctor 隨附開箱即用的 Agent 技能（適用於 **Antigravity** 與 **Claude Code**）：

1. 將 `skills/token-doctor` 複製到你的技能目錄（如 `~/.gemini/config/plugins/...` 或專案 `.agents/skills/`）。
2. 在 IDE 對話框中輸入：
   ```text
   /token-doctor
   ```
   AI 便會自動調用探針進行專案健檢，並向你提供互動式診斷處方！

---

## 🤝 參與貢獻與社群路線圖

我們熱烈歡迎全球開發者與華語社群共同擴展 Token Doctor！
- [ ] 支援 Cursor `.cursorrules` 與 `.cursor/rules` 多檔案規則診斷
- [ ] 支援 Windsurf `.windsurfrules` 規則診斷
- [ ] 開發互動式終端 UI (TUI) 與 Token 消耗視覺化儀表板
- [ ] 基於 AST 的智能代碼標準自動提煉引擎

詳情請參閱 [CONTRIBUTING.md](CONTRIBUTING.md)。

---

## 📄 開源授權

本專案由 [Captain Intelligence Tech 凱騰智慧科技](https://github.com/captain-intelligence-tech) 維護。  
採用 [MIT License](LICENSE) 開源授權，歡迎自由使用與交流。
