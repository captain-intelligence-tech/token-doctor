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
- ❌ **常駐技能底噪洩漏**（未配置 `disable-model-invocation: true` 的技能每輪對話強制注入，累積數千 Tokens 靜態底噪）

你的 AI 環境將面臨嚴重的 **「上下文腐敗 (Context Rot)」**，導致：
1. **Token 嚴重浪費**：每輪對話平白燃燒 3,000+ 靜態底噪 Tokens。
2. **AI 智商衰減**：產生注意力「迷失於中段 (Lost in the middle)」的認知劣化。
3. **回應延遲飆升**：每次推論皆因龐大的前置 Prompt 產生額外延遲。

**Token Doctor** 能在數毫秒內全面掃描專案規則、代碼標準與**技能設定 (Skills)**，產出 0-100 健康評分，並提供**一鍵自動手術 (`--heal`)**，讓你的 AI 上下文重回極致精純！

---

## ⚡ 極速安裝

```bash
# 一鍵透過 curl 安裝（自動安裝 CLI，並偵測 Antigravity 環境注入 Agent 技能）
curl -fsSL https://raw.githubusercontent.com/captain-intelligence-tech/token-doctor/main/install.sh | bash
```

*或手動複製安裝：*
```bash
git clone https://github.com/captain-intelligence-tech/token-doctor.git
cd token-doctor
sudo cp bin/token-doctor /usr/local/bin/token-doctor # 或 /opt/homebrew/bin/

# 安裝 Agent 檢查技能 (適用於 Antigravity / Claude Code)
mkdir -p ~/.gemini/config/skills/token-doctor
cp skills/token-doctor/SKILL.md ~/.gemini/config/skills/token-doctor/
```

---

## 🚀 使用指南

### 1. 診斷當前專案與技能負載
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
⚠️  [常駐技能底噪過高] 偵測到 28 個技能未宣告 disable-model-invocation: true，每輪對話強制注入說明清單！(扣 10 分)
----------------------------------------------------------------
💊 【醫生處方箋 (Recommendations)】
  • 將代碼與樣式規範安全剪下，移植至 CODING_STANDARDS.md
  • 為低頻或專案專用技能補上 disable-model-invocation: true 改為按需載入

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

### 3. 官方預裝與外掛 Skills 深度盤點 (`--skills`)
許多軟體官方擴充套件（如 Google Data Cloud、Antigravity 內建套件）或外掛，預裝了數十個甚至上百個 Skills。若未配置 `disable-model-invocation: true`，AI 會在**每輪對話強制全量載入**所有技能清單，吃掉上萬 Tokens 底噪！
```bash
token-doctor --skills
```
終端輸出範例：
```text
================================================================
🩺 Token 健檢醫生 - 全域、外掛與官方預裝 Skills 深度盤點報告
================================================================
📊 總檢驗技能數: 131 個
🚨 常駐強制注入 (Active): 96 個 (每輪對話強制注入說明底噪)
🛡️ 按需喚起 (On-Demand): 35 個 (零靜態底噪)
⚡ 技能靜態 Prompt 底噪總計: ~20,276 Tokens / turn

【🏛️ 官方擴充套件預裝技能 (Official/DataCloud)】 (共 25 個常駐)
  • gcp-spark (~185 tokens)
  • gcp-dataflow (~359 tokens)
  • dbt-bigquery (~158 tokens)
  ...
【🔌 外掛套件預裝技能 (Plugins)】 (共 71 個常駐)
  • xlsx (~406 tokens)
  • pdf (~276 tokens)
  ...
----------------------------------------------------------------
💊 【醫生處方箋】
  👉 執行以下指令一鍵將所有常駐技能凍結為按需喚起：
     token-doctor --disable-skills
================================================================
```

### 4. 一鍵技能降噪手術 (`--disable-skills`)
一鍵自動為所有未設防的技能補上 `disable-model-invocation: true`：
```bash
token-doctor --disable-skills
```
- ✅ **零資料破壞**：技能本體與邏輯完全保留。
- ✅ **按需完全可用**：在 IDE 對話中依然能透過斜線指令（如 `/token-doctor`）或按需呼叫。
- ✅ **立刻省下數千至上萬 Tokens**：徹底阻斷每輪對話的無差別全量注入！

### 5. MCP 伺服器與 Tool Schema 底噪盤點 (`--mcp`)
檢測 `~/.gemini/config/mcp_config.json` 中啟用的伺服器，識別出哪些是官方擴充（如 `notebooks`, `visualization`, `data-agent-kit`）或外部工具，預估每輪推論消耗的 Tool Schema 底噪：
```bash
token-doctor --mcp
```

### 6. 多語言切換 (雙語 CLI)
Token Doctor 預設會根據終端環境自動偵測，亦可手動指定：
```bash
token-doctor --lang zh    # 繁體中文輸出
token-doctor --lang en    # 英文輸出
```

### 7. CI/CD 與腳本集成 (JSON 輸出)
```bash
token-doctor --json
```

---

## 🤖 專屬 AI 智能體「檢查技能」(`skills/token-doctor`)

Token Doctor 不僅是 CLI 工兵，更包含了一套開箱即用的 **AI 參謀「檢查技能」**（適用於 **Antigravity** 與 **Claude Code**）：

### 💡 雙軌無縫協同：
- **IDE (參謀)**：直接在對話中呼叫 `/token-doctor` 或說「檢查 Token」、「Token 健檢」，AI 會呼叫底層探針完成專案與技能診斷，並為你量身打造架構重構建議。
- **CLI (工兵)**：若需要一鍵大規模施工，AI 或工程師可在終端機執行 `token-doctor --heal`，毫秒級完成修復，避免在對話中浪費大量 Token 逐行重寫！

### 📦 技能手動安裝方法：
```bash
# 全域安裝 (所有專案皆可使用 /token-doctor)
mkdir -p ~/.gemini/config/skills/token-doctor
cp skills/token-doctor/SKILL.md ~/.gemini/config/skills/token-doctor/

# 或針對特定專案安裝 (僅在該專案生效)
mkdir -p .agents/skills/token-doctor
cp skills/token-doctor/SKILL.md .agents/skills/token-doctor/
```

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
