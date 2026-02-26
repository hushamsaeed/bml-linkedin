# PRD: BML LinkedIn Annual Report

**Version**: 1.0
**Date**: 2026-02-27
**Author**: Project Director
**Status**: Draft

---

## 1. Overview

### Problem Statement
Bank of Maldives needs an engaging, visually polished single-page web report showcasing their 2025 Annual Results — designed to be shared on LinkedIn and drive engagement among investors, stakeholders, and the public.

### Solution
A single static HTML/CSS/JS webpage presenting BML's 2025 annual financial results with modern design, scroll animations, responsive layout, and downloadable report links.

### Success Metrics
- Visually polished, brand-consistent design suitable for LinkedIn sharing
- Fast load time (< 2s)
- Fully responsive (mobile, tablet, desktop)
- WCAG AA accessible
- Clean, shareable Open Graph meta tags for LinkedIn preview

---

## 2. Architecture

### Tech Stack
| Layer | Technology | Rationale |
|---|---|---|
| Frontend | Static HTML / CSS / JavaScript | Single page, no framework needed |
| Backend | None | Static site, no server logic |
| Database | None | No data persistence needed |
| Hosting | Dokploy on 89.167.93.86 (nginx) | Standard infra |
| Port | 8082 | Assigned port |

### System Diagram
```
[Browser] → [nginx on port 8082] → [index.html + assets]
```

### Data Model
N/A — Static content only.

---

## 3. Features — Phase 1 (MVP)

### Feature 1: Annual Report Landing Page
**Priority**: P0
**Description**: Single-page HTML report with all financial highlights, CEO/Chair quotes, KPIs, performance table, strategic outlook, milestones, and download links.

#### Sections
| Section | Description |
|---|---|
| Hero | Year title, key stats, CTA to download report |
| Ticker | Scrolling marquee of key metrics |
| At a Glance | 6 KPI cards with growth indicators |
| Highlights | Key achievements list |
| CEO Quote | Blockquote from CEO |
| Chairperson Quote | Accent card from Chairperson |
| Performance | Metrics bar + detailed comparison table |
| Vision 2029 | Strategic aspiration banner |
| Outlook | 3 strategic pillars + economic context |
| Milestones | 6 landmark achievement cards |
| Downloads | Report cover + download links |
| Footer | Copyright, legal links |

#### Acceptance Criteria
- [ ] All sections render correctly on desktop, tablet, mobile
- [ ] Scroll animations work (IntersectionObserver)
- [ ] Constellation background animation renders
- [ ] All financial data matches source document
- [ ] BML branding (colors, fonts) is consistent
- [ ] No accessibility violations (semantic HTML, contrast, alt text)
- [ ] Open Graph meta tags present for LinkedIn sharing

---

## 4. Features — Phase 2

### Feature 2: LinkedIn Optimization
**Priority**: P1
- [ ] Add Open Graph / Twitter Card meta tags
- [ ] Optimize preview image for LinkedIn sharing
- [ ] Add structured data (JSON-LD) for rich snippets

### Feature 3: Performance Optimization
**Priority**: P2
- [ ] Extract base64 images to separate files
- [ ] Minify CSS/JS
- [ ] Add lazy loading for below-fold content

---

## 5. Non-Functional Requirements

### Performance
- Page load: < 2s on 3G
- Total page weight: minimize (currently ~700KB due to base64 images)

### Security
- No sensitive data — public report
- CSP headers recommended

### Accessibility
- WCAG AA compliance minimum
- Semantic HTML throughout

---

## 6. Deployment

- **Port**: 8082
- **Domain**: TBD
- **Environment Variables**: None needed

---

## 7. Open Questions

- [ ] Should base64 images be extracted to separate files?
- [ ] What are the actual download URLs for the annual report PDFs?
- [ ] Is there a specific LinkedIn post format/image to optimize for?
- [ ] Mobile navigation — add hamburger menu?

---

## Changelog

| Date | Version | Change | Author |
|---|---|---|---|
| 2026-02-27 | 1.0 | Initial draft | Project Director |
