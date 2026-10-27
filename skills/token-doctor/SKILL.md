---
name: token-doctor
description: Token Doctor - Diagnose workspace token leaks, code standard spillovers, prompt noise, and rule duplicates with one-click healing surgery. (Token 健檢醫生 - 深入診斷專案與全域環境的 Token 洩漏、代碼標準外溢與規範重複，並提供一鍵處方與手術修復)
disable-model-invocation: true
---

# 🩺 Token Doctor (Token 健檢醫生)

Diagnose prompt noise, token bloat, and context rot for current workspace or global agent environment.  
(診斷當前專案或全域環境的 Token 消耗、規範隔離完整性與底噪負載)

## Execution Workflow (執行流程)

Trigger when the user types `/token-doctor` or asks to "diagnose token", "token health check", "檢查 Token", "Token 健檢":

1. **Run Diagnostic Probe (執行體檢探針)**:
   Execute in project root:
   ```bash
   token-doctor
   ```

2. **Analyze Report (分析診斷報告)**:
   - **Health Score (0-100)** and estimated prompt noise per conversation turn.
   - **Check Identified Symptoms (檢視病灶清單)**:
     - Duplicate root config files (`GEMINI.md` and `AGENTS.md` simultaneously)?
     - Code standard spillovers in `AGENTS.md` (e.g., line limits, CSS/styling rules, framework calls)?
     - Redundant global directives repeated across files?
     - Missing `CODING_STANDARDS.md` or `.scratch/` ticket sandbox?

3. **Offer Prescriptions & Auto-Heal (提供處方與一鍵修復)**:
   - Present diagnostic summary and concrete recommendations to the user.
   - If user wishes to auto-fix, guide them to run:
     ```bash
     token-doctor --heal
     ```
     or surgically refactor the workspace directly to isolate standards into `CODING_STANDARDS.md`.
