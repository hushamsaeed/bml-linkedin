# AGENTS.md — Agent Registry & Context Index

> **This file is always loaded.** It's the lightweight index pointing to detailed context docs.

---

## 🏗️ Active Agents

| Agent | Status | Current Task | Reference Docs |
|---|---|---|---|
| Project Director | 🟢 Active | — | All |
| Technical Architect | 🟢 Active | — | `api.md`, `components.md` |
| Design Lead | ⚪ Standby | — | `components.md` |
| Frontend Developer | ⚪ Standby | — | `components.md` |
| Backend Developer | ⚪ Standby | — | `api.md` |
| DevOps Engineer | ⚪ Standby | — | `deploy.md` |
| QA Engineer | ⚪ Standby | — | `testing.md` |
| Security Auditor | ⚪ Standby | — | `security.md` |
| Code Reviewer | ⚪ Standby | — | All |

---

## 📁 Reference Documents

Load **only** what's relevant to your current task:

| Document | Path | Use When |
|---|---|---|
| Design | `.agents/reference/design.md` | **Any UI work** — Pencil MCP mockups, design system, visual changes |
| Components | `.agents/reference/components.md` | Building/modifying UI components |
| API | `.agents/reference/api.md` | Designing/building API endpoints |
| Deployment | `.agents/reference/deploy.md` | Deploying, configuring servers, Dokploy |
| Security | `.agents/reference/security.md` | Security reviews, audits, dependency checks |
| Testing | `.agents/reference/testing.md` | Writing tests, QA verification |
| Documentation | `.agents/reference/documentation.md` | Writing docs, READMEs, comments |

---

## 🔀 Handoff Protocol

When passing work between agents:

```
[FROM: {sending_agent}] → [TO: {receiving_agent}]
Status: {complete|blocked|needs-review}
Context: {brief description of what was done}
Next Action: {what the receiving agent should do}
Reference Docs Needed: {which .agents/reference/ files to load}
```

---

## 📊 Project State

- **Project**: BML LinkedIn — BML LinkedIn Annual Report (single static webpage)
- **Current Phase**: `Phase 0 — Setup`
- **PRD Location**: `plans/PRD.md`
- **Latest Plan**: `plans/PLAN-{latest}.md`
- **Deploy Status**: `Not yet deployed`
- **Port Assignment**: `8082`
- **Tech Stack**: Static HTML / CSS / JavaScript (single-page)
