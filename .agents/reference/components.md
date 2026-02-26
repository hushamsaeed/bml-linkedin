# Reference: Frontend Components (Static HTML)

> **Load this doc when:** Working on the single-page HTML/CSS/JS annual report.

---

## Project: BML LinkedIn Annual Report

This is a **single static HTML page** — no framework, no build step, no backend.

### File Structure
```
/
├── index.html           ← The single-page annual report
├── inbox/               ← Source files (original HTML from design)
└── assets/              ← Any extracted images/fonts (if needed)
```

### CSS Architecture
- All styles are inline in `<style>` within `index.html`
- Uses CSS custom properties (`:root` variables) for theming
- Fonts: `DM Serif Display` (headings) + `Outfit` (body) — loaded from Google Fonts
- Color palette defined in `:root`: deep indigo, BML red, cyan, magenta accents

### Design Tokens (CSS Variables)
```css
--deep: #0D0A2E;       /* Primary dark background */
--indigo: #1B1454;      /* Secondary dark */
--violet: #2E1F7A;      /* Accent purple */
--bml-red: #ED1C24;     /* BML brand red */
--cyan: #4EE0F2;        /* Accent cyan */
--magenta: #E040A0;     /* Accent magenta */
--white: #FFFFFF;
--off: #F6F5F8;         /* Off-white background */
--gray-1 to --gray-4;   /* Gray scale */
--text: #2A2540;        /* Primary text */
```

### Accessibility
- Use semantic HTML (`<header>`, `<nav>`, `<section>`, `<footer>`, `<main>`)
- All interactive elements must be keyboard-accessible
- Include `aria-label` on icon-only buttons/links
- Ensure color contrast meets WCAG AA minimum
- Add `alt` attributes on all images

### Performance
- Base64 images are embedded (BML logo) — consider extracting for caching
- Scroll animations use IntersectionObserver (efficient)
- CSS animations use `transform` and `opacity` (GPU-accelerated)

### Responsive Design
- Breakpoints: 1024px (tablet), 768px (small tablet), 600px (mobile)
- Grid layouts collapse gracefully
- Navigation hidden on mobile (consider adding hamburger menu)
