# Contributing to Token Doctor / 參與貢獻指南

[English](#english) | [繁體中文](#繁體中文)

---

<a name="english"></a>
## English

Thank you for your interest in contributing to **Token Doctor**! We welcome bug reports, feature requests, documentation improvements, and pull requests from developers around the world.

### Development Workflow

1. **Fork the Repository** on GitHub.
2. **Create a Feature Branch**:
   ```bash
   git checkout -b feature/support-cursor-rules
   ```
3. **Make your changes** and test locally:
   ```bash
   ./bin/token-doctor --lang en
   ./bin/token-doctor --lang zh
   ./bin/token-doctor --json
   ```
4. **Commit with Conventional Commits**:
   ```bash
   git commit -m "feat(diagnostics): add support for Cursor .cursorrules inspection"
   ```
5. **Push and Open a Pull Request**.

### Community Roadmap & Good First Issues

- [ ] **Cursor Support**: Detect and diagnose `.cursorrules` and `.cursor/rules/*.mdc`.
- [ ] **Windsurf Support**: Inspect `.windsurfrules`.
- [ ] **Claude Code Support**: Audit `.claude/` commands and prompt overhead.
- [ ] **Terminal UI (TUI)**: Interactive terminal dashboard with spinners and colored bar charts.
- [ ] **Automated Testing Suite**: Bats or shunit2 tests for CLI flags and edge cases.

---

<a name="繁體中文"></a>
## 繁體中文

非常感謝你對 **Token Doctor** 的關注與支持！我們熱烈歡迎全球開發者與華語社群提交 Issue、功能建議、文檔修訂以及 Pull Request。

### 開發與協同流程

1. **Fork 本倉庫** 到你的 GitHub 帳號。
2. **建立特徵分支 (Feature Branch)**：
   ```bash
   git checkout -b feature/support-cursor-rules
   ```
3. **進行修改並於本地驗證**：
   ```bash
   ./bin/token-doctor --lang en
   ./bin/token-doctor --lang zh
   ./bin/token-doctor --json
   ```
4. **遵循 Conventional Commits 規範提交**：
   ```bash
   git commit -m "feat(diagnostics): 新增 Cursor .cursorrules 規則檢測"
   ```
5. **推送到遠端並發起 Pull Request (PR)**。

### 社群路線圖與推薦任務 (Good First Issues)

- [ ] **Cursor 支援**：探測並診斷 `.cursorrules` 與 `.cursor/rules/*.mdc`。
- [ ] **Windsurf 支援**：檢測 `.windsurfrules` 的底噪負載。
- [ ] **Claude Code 支援**：審查 `.claude/` 設定與命令負擔。
- [ ] **互動式終端介面 (TUI)**：開發帶有進度條與視覺化條形圖的終端面板。
- [ ] **自動化測試套件**：引入 Bats 或 shunit2 進行參數與邊界條件的自動化測試。
