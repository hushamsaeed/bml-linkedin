# PRD: BML LinkedIn Annual Report

**Version**: 2.0
**Date**: 2026-02-27
**Author**: Project Director
**Status**: Live

---

## 1. Overview

### Problem Statement
Bank of Maldives needs an engaging, visually polished single-page web report showcasing their 2025 Annual Results — designed to be shared on LinkedIn and drive engagement among investors, stakeholders, and the public.

### Solution
A single static HTML/CSS/JS webpage presenting BML's 2025 annual financial results with modern design, scroll animations, responsive layout, and downloadable report links.

### Success Metrics
- [x] Visually polished, brand-consistent design suitable for LinkedIn sharing
- [x] Fast load time (< 2s) — page is 36KB
- [x] Fully responsive (mobile, tablet, desktop)
- [x] WCAG AA accessible
- [x] Clean, shareable Open Graph meta tags for LinkedIn preview
- [x] Rich OG image for LinkedIn/Twitter sharing

---

## 2. Architecture

### Tech Stack
| Layer | Technology | Rationale |
|---|---|---|
| Frontend | Static HTML / CSS / JavaScript | Single page, no framework needed |
| Backend | None | Static site, no server logic |
| Database | None | No data persistence needed |
| Hosting | Dokploy on 89.167.93.86 (nginx:alpine) | Standard infra |
| Port | 8082 | Assigned port |
| Domain | bmlannualreport2025.thecrayfish.tech | CNAME → thecrayfish.tech |
| SSL | Let's Encrypt (auto via Traefik) | Free, auto-renewed |

### System Diagram
```
[Browser] → [Traefik (443/80)] → [nginx container (80)] → [index.html + assets]
                                      ↑
                            Docker port mapping 8082→80
```

### Assets
| File | Size | Purpose |
|---|---|---|
| index.html | 36KB | Main page (CSS + HTML + JS inline) |
| logo-bml.png | 252KB | BML logo (header + footer) |
| og-image.png | 42KB | LinkedIn/Twitter sharing preview |
| favicon.ico | 1KB | Browser tab icon |
| apple-touch-icon.png | 3KB | iOS home screen icon |

### Data Model
N/A — Static content only.

---

## 3. Features — Phase 1 (MVP) — COMPLETE

### Feature 1: Annual Report Landing Page
**Priority**: P0 — **Status**: Complete

#### Sections
| Section | Description | Status |
|---|---|---|
| Hero | Year title, key stats, CTA to download report | Done |
| Ticker | Scrolling marquee of key metrics | Done |
| At a Glance | 6 KPI cards with growth indicators | Done |
| Highlights | Key achievements list | Done |
| CEO Quote | Blockquote from CEO | Done |
| Chairperson Quote | Accent card from Chairperson | Done |
| Performance | Metrics bar + detailed comparison table | Done |
| Vision 2029 | Strategic aspiration banner | Done |
| Outlook | 3 strategic pillars + economic context | Done |
| Milestones | 6 landmark achievement cards | Done |
| Downloads | Report cover + download links | Done (links placeholder) |
| Footer | Copyright, legal links | Done |

#### Acceptance Criteria
- [x] All sections render correctly on desktop, tablet, mobile
- [x] Scroll animations work (IntersectionObserver)
- [x] Constellation background animation renders
- [x] All financial data matches source document
- [x] BML branding (colors, fonts) is consistent
- [x] No accessibility violations (semantic HTML, contrast, alt text)
- [x] Open Graph meta tags present for LinkedIn sharing

---

## 4. Features — Phase 2 — COMPLETE

### Feature 2: LinkedIn Optimization
**Priority**: P1 — **Status**: Complete
- [x] Add Open Graph / Twitter Card meta tags
- [x] OG image (1200x630) with BML branding + key stats
- [x] og:url pointing to production domain
- [ ] Add structured data (JSON-LD) for rich snippets (deferred)

### Feature 3: Performance Optimization
**Priority**: P2 — **Status**: Complete
- [x] Extract base64 images to separate files (700KB → 36KB)
- [x] Transform-based hover transitions (GPU-accelerated)
- [ ] CSS/JS minification (deferred — already 36KB)

### Feature 4: Accessibility Audit
**Priority**: P1 — **Status**: Complete
- [x] Skip-to-content link
- [x] Focus-visible outlines (2px cyan)
- [x] prefers-reduced-motion media query
- [x] Heading hierarchy fix (h4→h3, h5→h4)
- [x] scope="col" on table headers
- [x] aria-hidden on decorative SVG
- [x] role="marquee" + aria-label on ticker
- [x] Semantic <main> wrapper
- [x] CEO attribution in blockquote as footer/cite
- [x] Color contrast fix (--bml-red-text #C41920 for AA)

### Feature 5: Responsive Mobile
**Priority**: P0 — **Status**: Complete
- [x] Hamburger nav at 1024px breakpoint
- [x] 100dvh fallback for hero
- [x] Table horizontal scroll wrapper
- [x] Hero mobile top padding
- [x] Favicon + apple-touch-icon

---

## 5. Non-Functional Requirements

### Performance
- [x] Page load: < 2s on 3G (36KB total HTML)
- [x] Total page weight: ~334KB (HTML 36KB + logo 252KB + OG image 42KB + icons 4KB)

### Security
- [x] No sensitive data — public report
- [x] Security headers: X-Frame-Options, X-Content-Type-Options, Referrer-Policy
- [x] HTTPS with valid Let's Encrypt certificate

### Accessibility
- [x] WCAG AA compliance
- [x] Semantic HTML throughout

---

## 6. Deployment

- **Port**: 8082
- **Domain**: bmlannualreport2025.thecrayfish.tech
- **DNS**: CNAME bmlannualreport2025 → thecrayfish.tech (1hr TTL)
- **SSL**: Let's Encrypt via Traefik certResolver
- **Environment Variables**: None needed
- **Dokploy Project ID**: GhDeJsuEo3NXtHuc9zP1e
- **Dokploy App ID**: foC8zllGuS_iM1SrRzhnL

---

## 7. Open Questions

- [x] ~~Should base64 images be extracted to separate files?~~ Yes, done.
- [ ] What are the actual download URLs for the annual report PDFs? (2025 report available at CMDA: informinvestor.cmda.gov.mv/storage/uploads/vgo0APwZ/mwf6qxlu.pdf — BML hasn't published individual section PDFs yet)
- [x] ~~Is there a specific LinkedIn post format/image to optimize for?~~ OG image created (1200x630)
- [x] ~~Mobile navigation — add hamburger menu?~~ Yes, done.

---

## Changelog

| Date | Version | Change | Author |
|---|---|---|---|
| 2026-02-27 | 1.0 | Initial draft | Project Director |
| 2026-02-27 | 2.0 | Updated to reflect all completed work: audit fixes, deployment, domain, OG image, favicon | Frontend Developer / DevOps |
