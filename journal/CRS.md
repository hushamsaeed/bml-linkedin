# CRS — Change Record System

> Structured changelog of every modification with reason, author-agent, and timestamp.

---

<!-- Add new entries at the top -->

### [2026-02-27 06:15] — OG Image, Favicon, Apple Touch Icon

- **What changed**: Added `og-image.png` (1200x630), `favicon.ico`, `apple-touch-icon.png`. Added og:image, twitter:image, link rel="icon", link rel="apple-touch-icon" meta tags. Updated Dockerfile.
- **Why**: LinkedIn sharing showed no preview image; browsers showed blank tab icon
- **Agent**: Frontend Developer
- **Impact**: LinkedIn/Twitter shares now display rich preview card with BML branding and key financial stats
- **Rollback**: Remove assets and meta tags, revert Dockerfile

---

### [2026-02-27 06:00] — Mobile Hero Padding Fix

- **What changed**: `.hero-inner` padding changed from `0 28px` to `48px 28px` in 1024px media query
- **Why**: Hero content was cramped against header on mobile (user reported from screenshot)
- **Agent**: Frontend Developer
- **Impact**: Proper breathing room between header and hero content on mobile
- **Rollback**: Revert padding to `0 28px`

---

### [2026-02-27 05:00] — Domain Configuration

- **What changed**: Added domain `bmlannualreport2025.thecrayfish.tech` via Dokploy API. Added `og:url` meta tag.
- **Why**: Production URL needed for LinkedIn sharing
- **Agent**: DevOps Engineer
- **Impact**: Site accessible via HTTPS with valid Let's Encrypt certificate
- **Rollback**: Remove domain from Dokploy, revert og:url

---

### [2026-02-27 04:30] — Dokploy Deployment

- **What changed**: Created Dockerfile, nginx.conf, .dockerignore. Deployed to Dokploy (project: BML LinkedIn, app: bml-annual-report, port 8082).
- **Why**: Page needed to be hosted for LinkedIn sharing
- **Agent**: DevOps Engineer
- **Impact**: Site live at 89.167.93.86:8082
- **Rollback**: Remove Dokploy project via API

---

### [2026-02-27 03:00] — 13-Item Audit Fix Plan Implementation

- **What changed**: Comprehensive accessibility, SEO, responsive, and performance fixes to index.html
- **Why**: Design audit identified 9 must-fix and should-fix issues blocking LinkedIn sharing
- **Agent**: Frontend Developer + Design Lead (Pencil MCP)
- **Changes**:
  - Extracted base64 logos to `logo-bml.png` (700KB → 36KB)
  - Added 11 meta tags (OG, Twitter Card, description, theme-color, preconnect)
  - Added `--bml-red-text` and `--footer-bg` CSS custom properties
  - Fixed color contrast for section labels and negative values
  - Added `100dvh` fallback, `prefers-reduced-motion` media query
  - Added skip-to-content link + `<main>` wrapper
  - Added focus-visible outlines (2px cyan)
  - Added hamburger nav (visible at 1024px breakpoint)
  - Fixed heading hierarchy (h4→h3, h5→h4 + CSS selectors)
  - Wrapped table in scroll container
  - Added scope="col", aria-hidden, role="marquee", aria-label
  - Moved CEO attribution into blockquote as footer/cite
  - Replaced padding-left hovers with transform:translateX
- **Impact**: Page passes WCAG AA, has proper SEO tags, responsive mobile nav, 95% smaller file size
- **Rollback**: Revert to pre-audit commit

---

### [2026-02-27 02:00] — Agentic Engineering System Initialized

- **What changed**: Set up full agentic engineering system: CLAUDE.md, .agents/, commands/, journal/, plans/. Customized all reference docs for static HTML project. Created PRD.md. Moved source HTML to index.html.
- **Why**: Project kickoff — establishing system infrastructure for BML LinkedIn Annual Report
- **Agent**: Project Director
- **Impact**: All system files now project-specific. Ready for development.
- **Rollback**: Revert to initial zip contents

---
