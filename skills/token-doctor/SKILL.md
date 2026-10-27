---
name: token-doctor
description: Token 健檢醫生 - 深入診斷專案與全域環境的 Token 洩漏、代碼標準外溢與規範重複，並提供一鍵處方與手術修復。
disable-model-invocation: true
---

# Token 健檢醫生 (Token Doctor)

診斷當前專案或全域環境的 Token 消耗、規範隔離完整性與底噪負載。

## 執行流程

當使用者輸入 `/token-doctor` 或要求「檢查 Token」、「Token 健檢」時，依序執行：

1. **執行體檢探針**：
   在目前專案目錄執行終端指令：
   ```bash
   token-doctor
   ```

2. **分析診斷報告**：
   - **檢視健康評分 (0-100)** 與每輪底噪估算。
   - **檢視病灶清單**：
     - 是否存在雙重載入 (`GEMINI.md` 與 `AGENTS.md` 同時存在)？
     - 是否有代碼標準外溢至 `AGENTS.md` (例如組件行數、樣式、框架呼叫規範)？
     - 是否重複定義了全域已有規範 (例如 Conventional Commits、繁中溝通)？
     - 是否缺少 `CODING_STANDARDS.md` 或 `.scratch/` 工單沙盒？

3. **提供處方與一鍵修復**：
   - 向使用者展示診斷結果與具體改善建議。
   - 若使用者希望立即修復，引導執行：
     ```bash
     token-doctor --heal
     ```
     或由 AI 直接進行精準重構，將代碼標準抽離至 `CODING_STANDARDS.md`。
