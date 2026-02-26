# CLAUDE.md — Agentic Engineering System

> **The operating contract for this project. All agents must follow it without exception.**
> This system implements the 5 compounding meta-skills for top-tier agentic engineering.

---

## 🔑 CORE PRINCIPLES

1. **PRD-First** — Document before you code. The PRD is the source of truth.
2. **Modular Rules** — Load only what's relevant. No context pollution.
3. **Command-ify Everything** — Repetitive workflows become reusable commands.
4. **Context Reset** — Plan and execute in separate conversations. Fresh starts matter.
5. **System Evolution** — Every bug is an opportunity to make the system smarter.

---

## 📐 1. PRD-FIRST DEVELOPMENT

**Every project starts with a PRD. Every feature starts with a PRD update.**

Your PRD is the source of truth for every AI conversation and each granular feature.

### For New Projects
Create a full PRD with features broken into phases:
- See `plans/PRD-TEMPLATE.md` for the standard template
- Break features into Auth, API, UI, Tests sections
- Each phase should be independently deliverable

### For Brownfield (Existing) Projects
- Document existing code + what comes next
- Audit current state before proposing changes
- Update PRD to reflect reality, then plan forward

### Why This Matters
**Without a PRD:** AI makes assumptions, context drifts, you fight the tool.
**With a PRD:** Every conversation starts grounded, every agent knows the plan.

### PRD Workflow
```
1. Create/update PRD in plans/PRD.md
2. Reference PRD section in every task prompt
3. After implementation, update PRD to reflect current state
4. PRD is always the canonical description of the project
```

---

## 🧩 2. MODULAR RULES ARCHITECTURE

**Stop dumping everything in one massive file. Split by concern, load only what's relevant.**

### Directory Structure
```
.agents/
├── AGENTS.md              ← Agent registry + role index (always loaded)
├── reference/
│   ├── components.md      ← Frontend component rules & patterns
│   ├── api.md             ← API design rules & conventions
│   ├── documentation.md   ← Documentation standards
│   ├── deploy.md          ← Deployment rules & Dokploy config
│   ├── security.md        ← Security rules & audit checklist
│   └── testing.md         ← Testing standards & QA process
```

### Loading Rules
| Working on...       | Load only...                          |
|---------------------|---------------------------------------|
| UI Design/Mockups   | `design.md`                           |
| Frontend            | `design.md`, `components.md`          |
| API                 | `api.md`                              |
| Deployment          | `deploy.md`                           |
| Security review     | `security.md`                         |
| Testing             | `testing.md`                          |
| Writing docs/README | `documentation.md`                    |

**Context stays lean. No irrelevant rules polluting your agent.**

### How AGENTS.md Works
- AGENTS.md is the **index file** — always loaded, lightweight
- It contains references to the detailed context docs
- Agents load only the reference docs relevant to their current task
- This prevents context window degradation on long sessions

---

## ⚡ 3. COMMAND-IFY EVERYTHING

**If you do something more than twice, make it a command.**

All reusable commands live in `/commands/`. Each command saves thousands of keystrokes and makes your system reliable + repeatable.

### Commands (in `/commands/`)

These have full workflow definitions with steps, checklists, and expected outputs:

| Command | What it does | File |
|---|---|---|
| `/commit` | Stage, format commit message (conventional commits), push | `commands/commit.md` |
| `/sync` | Full memory sync across all layers | `commands/sync.md` |
| `/plan` | Create a structured plan doc for a feature | `commands/plan.md` |
| `/deploy` | Run deployment checklist (port check → deploy → verify) | `commands/deploy.md` |
| `/review` | Run full code review checklist against current changes | `commands/review.md` |
| `/security-audit` | Run security checklist against codebase | `commands/security-audit.md` |

### Quick Commands (no file needed — single-action)

| Command | What it does |
|---|---|
| `/test` | Run test suite, report failures with context |
| `/generate-tests` | Generate tests for new/changed code |
| `/refactor` | Analyze and refactor selected code with reasoning |
| `/fix-types` | Find and fix TypeScript/type errors |

### Creating New Commands
When you notice a repetitive pattern:
1. Capture the workflow steps
2. Create a command file in `/commands/command-name.md`
3. Document: trigger, steps, expected output
4. The system gets smarter every time you add a command

---

## 🔄 4. THE CONTEXT RESET

**Planning and execution are SEPARATE conversations.**
**Context window degradation is real — fresh starts are important.**

### The Protocol
```
PLAN (Conversation 1)
  → Research, design, create plan doc
  → All context captured in plans/PLAN-{feature}.md

DOC (Output)
  → Plan doc contains everything needed to execute
  → No assumptions, no "we discussed earlier"

↻ CLEAR CONVERSATION / FRESH START

EXEC (Conversation 2)
  → Load plan doc
  → Clean context, sharp focus
  → Way better results
```

### Why?
After many messages, coding agents get overwhelmed and repeat mistakes/bad assumptions. Fresh start = sharp focus. Context window degradation is real.

### Plan Doc Standard
Every plan doc must contain:
- **Goal**: What we're building/fixing
- **Context**: Current state, relevant architecture
- **Steps**: Numbered implementation steps
- **Acceptance Criteria**: How we know it's done
- **References**: Which `.agents/reference/` docs to load

---

## 🧬 5. SYSTEM EVOLUTION MINDSET

**Every bug is an opportunity to evolve your SYSTEM for AI coding.**

### The Loop
```
BUG! → "What to fix...?" → + RULE
```

### What You Can Fix
- **Global rules** — Update CLAUDE.md or reference docs
- **On-demand context** — Add new reference doc in `.agents/reference/`
- **Commands/workflows** — Create or improve a command

### Examples
| Bug | System Fix |
|---|---|
| AI uses wrong import style | New rule: "Always use @/ path aliases" |
| AI forgets to run tests | Update plan template to include test section |
| AI doesn't understand auth flow | New context doc: `reference/auth-architecture.md` |
| AI creates port conflicts | New deploy checklist step in `reference/deploy.md` |

### The Goal
Every time you develop a feature, your coding agent gets smarter. The system compounds.

---

## 🧠 6. MEMORY SYNCHRONIZATION SYSTEM

**All memory layers must stay in sync at all times.**

### Memory Layers
| Layer | Purpose | Location |
|---|---|---|
| **Workspace Memory** | Global preferences, tools, credentials | Workspace-level config |
| **Project Memory** | Architecture decisions, current state | `CLAUDE.md` + `.agents/` |
| **Agent Memory** | Per-agent task context, discoveries | Agent conversation context |
| **Journal** | Chronological log of decisions & outcomes | `journal/YYYY-MM-DD.md` |
| **CRS** | Structured changelog of every modification | `journal/CRS.md` |

### Memory Sync Protocol
After **every completed task**, run `/sync`:
```
□ Update project memory with new context/decisions
□ Update workspace memory if global preferences changed
□ Append to journal with timestamp, agent, action, and result
□ Update CRS with structured change record
□ Commit and push to GitHub
□ Notify coordinating agent of completion
```

**Never allow memory drift.** If any layer is stale, pause and reconcile.

---

## 👥 7. AGENT TEAM & ORGANIZATIONAL HIERARCHY

### Leadership Layer
| Role | Responsibility |
|---|---|
| **Project Director** | Oversight, priorities, conflict resolution, final approvals |
| **Technical Architect** | System design, architecture, technology choices |

### Core Team Layer
| Role | Responsibility |
|---|---|
| **Design Lead** | UI/UX design, visual identity, design system, Pencil mockups |
| **Frontend Developer** | UI implementation, components, responsive design |
| **Backend Developer** | API design, business logic, database, server-side |
| **DevOps Engineer** | Deployment, CI/CD, Dokploy, port management |
| **QA Engineer** | Testing, verification, regression, acceptance criteria |

### Oversight Layer
| Role | Responsibility |
|---|---|
| **Security Auditor** | Security review, dependency scanning, secrets management |
| **Code Reviewer** | Code quality, standards, performance, best practices |

### Coordination Rules
- No code ships without QA verification AND Security Auditor sign-off
- No design is implemented without Design Lead approval
- No deployment without DevOps port-conflict check
- Every agent logs actions to journal and updates memory on completion
- Agent handoff format: `[FROM: Agent] → [TO: Agent] | Status | Context | Next Action`

---

## 🎨 8. DESIGN-FIRST WORKFLOW (PENCIL MCP)

**Every feature, page, component, and change MUST be designed before implementation.**

### Pencil MCP — The Design Tool
- **Pencil MCP** is the single source of truth for how the project looks
- All mockups, wireframes, and visual designs are created and maintained in Pencil
- If not connected, configure the Pencil MCP server in your Claude Code MCP settings before any design work
- Full design rules and workflows are in `.agents/reference/design.md`

### Mandatory Rules
1. **No UI code without a Pencil mockup** — no exceptions
2. **Pencil mockup wins** — if code and mockup disagree, fix the code
3. **Every visual change updates the FULL project** — not just the changed part
4. **Design Lead owns Pencil** — other agents don't modify mockups without approval

### Design Workflow
```
1. Design Lead creates/updates Pencil mockup for feature
   → Include all states: default, loading, error, empty, success
   → Include responsive breakpoints: mobile, tablet, desktop
2. Apply frontend-design skill principles (Purpose → Tone → Constraints → Differentiation)
3. Project Director reviews and approves
4. Design Lead hands off approved mockup to Frontend Developer
   → Include design tokens, component hierarchy, interaction notes
5. Frontend Developer implements pixel-perfect from the Pencil mockup
6. QA Engineer verifies implementation matches design (side-by-side)
7. Any deviation → back to step 1
```

### Design Change Rule
When ANY visual change is requested (even small tweaks):
- Open the **full project mockup** in Pencil
- Make the change and verify it doesn't break visual coherence across all pages
- Update any affected component mockups
- Get approval, then implement

### Frontend Design Skill
Anthropic's built-in `frontend-design` skill must be enabled and applied to every frontend task:
- **Enable**: Claude.ai Settings → Capabilities → Skills, or Claude Code `/plugin marketplace add anthropics/skills`
- Follows the design-thinking process: **Purpose → Tone → Constraints → Differentiation**
- No generic AI aesthetics — be distinctive, bold, and intentional
- Full details in `.agents/reference/design.md`

---

## 📦 9. GITHUB & DEPLOYMENT

### Git Workflow
- Conventional commits: `type(scope): description`
- Branch structure: `main` / `develop` / `feature/*` / `fix/*` / `hotfix/*`
- Push after every logical unit of work
- Tag releases with semantic versioning

### Deployment (Dokploy)
- **Dokploy UI**: `http://89.167.93.86:3000`
- **ALWAYS check port conflicts before deploying**: `ss -tlnp`
- Register every deployment in Dokploy
- Health check after every deploy
- Document port assignments in project memory

---

## ✅ 10. TASK COMPLETION CHECKLIST

Run after EVERY completed task:

```
□ GIT — Committed, pushed, PR if needed, README updated
□ MEMORY — Project/workspace/agent memory updated
□ JOURNAL — Entry with timestamp, agent, task, result, next steps
□ CRS — Structured change record (what, why, who, impact, rollback)
□ DESIGN — Pencil mockups updated for ENTIRE project if UI-related
         — All states mocked (default, loading, error, empty)
         — Responsive breakpoints verified
         — Design system tokens updated if visual changes occurred
□ DEPLOY — Deployed, registered in Dokploy, health check passed
□ SECURITY — Auditor reviewed, no secrets in git, deps scanned
□ QA — Acceptance criteria met, no regressions
□ SYSTEM EVOLUTION — New rule/command/context doc if pattern discovered
```

**A task is NOT done until every applicable checkbox is checked.**

---

## 📋 Quick Reference

| Action | Steps |
|---|---|
| New project | PRD → Design → Architecture → Repo → Deploy setup → Sync |
| New feature | Update PRD → Plan doc → Context reset → Design → Implement → QA → Security → Deploy → Sync → Evolve system |
| Bug fix | Reproduce → Fix → QA → Security → Deploy → Sync → **Add rule to prevent recurrence** |
| UI change | Update ALL designs → Approve → Implement → QA → Deploy → Sync |
| Deployment | Check ports → Deploy → Register Dokploy → Health check → Sync |
| Any task done | `/commit` → `/sync` → Journal → CRS → Verify |
