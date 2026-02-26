# Reference: Design System & Pencil MCP

> **Load this doc when:** Creating UI designs, reviewing mockups, planning visual changes, or starting any frontend feature.

---

## Pencil MCP — Single Source of Truth for Design

**Pencil MCP is the design tool for this project.** All UI decisions flow through Pencil before any code is written.

### Setup
- Pencil MCP server must be configured in your Claude Code MCP settings
- Verify connection: ensure Pencil tools are available in your agent's tool list
- If not connected, add the Pencil MCP server configuration before proceeding with any design work

### Core Rules

1. **No UI code without a Pencil mockup first** — this is non-negotiable
2. **Pencil is the canonical source** — if the mockup and code disagree, the mockup wins
3. **Every visual change updates the FULL project mockup** — not just the changed component
4. **Design Lead owns Pencil** — other agents reference mockups but don't modify them without Design Lead approval

---

## Design-First Workflow

### New Feature
```
1. Design Lead creates Pencil mockup for the feature
   → Use Pencil MCP tools to create wireframes/mockups
   → Include all states: default, loading, error, empty, success
   → Include responsive breakpoints: mobile, tablet, desktop

2. Apply frontend-design skill principles:
   → Purpose: What is this feature trying to accomplish?
   → Tone: What emotion/experience should it convey?
   → Constraints: Technical limits, accessibility, performance
   → Differentiation: What makes this distinctive (no generic AI aesthetics)

3. Project Director reviews and approves the mockup
   → Check alignment with PRD requirements
   → Verify consistency with existing design language

4. Design Lead hands off to Frontend Developer
   → Handoff message includes:
     - Pencil mockup reference
     - Design tokens to use
     - Component hierarchy
     - Interaction notes (hover, focus, animation)
     - Responsive behavior notes

5. Frontend Developer implements pixel-perfect from mockup
   → Reference Pencil mockup continuously during implementation
   → Use design tokens, not hardcoded values
   → Match spacing, typography, and color exactly

6. QA Engineer verifies implementation matches design
   → Side-by-side comparison with Pencil mockup
   → Check all states (loading, error, empty)
   → Check all breakpoints
   → Check accessibility

7. Any deviation → back to step 1
```

### UI Change (Even Small Tweaks)
```
1. Design Lead opens the FULL project mockup in Pencil
2. Makes the requested change
3. Verifies the change doesn't break visual coherence across:
   → All pages that share the changed component
   → The overall design language and spacing system
   → Color contrast and accessibility
4. Updates any affected component mockups
5. Project Director approves
6. Frontend Developer implements
7. QA verifies
```

### Bug Fix (Visual)
```
1. QA documents the visual bug with screenshots
2. Design Lead updates Pencil mockup to show correct behavior
3. Frontend Developer fixes code to match updated mockup
4. QA re-verifies
```

---

## Design Handoff Format

When Design Lead hands off to Frontend Developer:

```
[FROM: Design Lead] → [TO: Frontend Developer]
Status: Design approved
Feature: {feature name}
Pencil Mockup: {reference/link to mockup}

Components needed:
- ComponentName — description, states, responsive notes

Design tokens:
- Colors: {list specific tokens}
- Typography: {font sizes, weights}
- Spacing: {margins, padding values}

Interactions:
- Hover: {behavior}
- Focus: {behavior}
- Transitions: {timing, easing}

Responsive:
- Mobile (<768px): {layout changes}
- Tablet (768-1024px): {layout changes}
- Desktop (>1024px): {default layout}

Accessibility:
- Focus order: {tab sequence}
- Screen reader: {aria labels, announcements}
- Contrast: {verified AA compliance}
```

---

## Design System Maintenance

### When to Update the Design System
- New component type introduced
- Color palette changes
- Typography scale changes
- Spacing system changes
- New interaction pattern established

### Design System Artifacts (maintain in Pencil)
- **Color palette**: All project colors with tokens
- **Typography scale**: All font sizes, weights, line heights
- **Spacing scale**: Standard spacing values
- **Component library**: All reusable components with states
- **Page templates**: Standard page layouts
- **Icon set**: All icons used in the project

### System Evolution for Design
When a design pattern is used 3+ times:
1. Extract it as a reusable component in Pencil
2. Add it to the component library mockup
3. Document it in `.agents/reference/components.md`
4. Create a reusable code component to match

---

## Frontend Design Skill Integration

Anthropic's **`frontend-design` skill** is a built-in skill that guides production-grade frontend aesthetics. It must be applied to every frontend implementation task.

### Setup
- **Claude.ai**: Enable in Settings → Capabilities → Skills (toggle `frontend-design` on)
- **Claude Code**: Install via `/plugin marketplace add anthropics/skills`, or it may already be available as a built-in skill
- **Do NOT** use the old `skills install anthropics/skills/frontend-design` syntax — this is deprecated

### When It Loads
The skill loads automatically when Claude detects frontend work. You can also explicitly invoke it by referencing it in your prompt: "Use the frontend-design skill for this component."

### Design Thinking Process (from the skill)
1. **Purpose** — What problem does this interface solve? Who uses it?
2. **Tone** — Pick a bold aesthetic direction: brutally minimal, maximalist, retro-futuristic, organic, luxury, playful, editorial, brutalist, art deco, soft/pastel, industrial, etc. Commit fully.
3. **Constraints** — Technical requirements (framework, performance, accessibility)
4. **Differentiation** — What makes this UNFORGETTABLE? What's the one thing someone will remember?

### Aesthetics Focus Areas
- **Typography**: Distinctive, characterful fonts — never generic (no Arial, Inter, Roboto). Pair a display font with a refined body font.
- **Color & Theme**: Cohesive palette via CSS variables. Dominant colors with sharp accents beat timid, evenly-distributed palettes.
- **Motion**: High-impact moments — orchestrated page load with staggered reveals, scroll-triggered effects, surprising hover states. CSS-only for HTML, Motion library for React.
- **Spatial Composition**: Unexpected layouts, asymmetry, overlap, diagonal flow, grid-breaking elements, generous negative space OR controlled density.
- **Backgrounds & Depth**: Gradient meshes, noise textures, geometric patterns, layered transparencies, dramatic shadows, grain overlays — never flat solid colors by default.

### Anti-Patterns (NEVER do these)
- Generic AI aesthetics (purple gradients on white, Inter/Roboto everywhere)
- Cookie-cutter layouts (hero → features grid → CTA)
- Overuse of rounded corners and shadows without intention
- Default Tailwind color palettes without customization
- Converging on the same "safe" fonts across projects (e.g., Space Grotesk everywhere)
- Timid design that plays it safe

### What to Aim For
- Bold, intentional visual choices with a clear aesthetic point-of-view
- Implementation complexity matching the vision (maximalist = elaborate code; minimal = precise restraint)
- Every interface distinctive and context-appropriate
- Vary between light/dark themes, different fonts, different aesthetics across projects
- Meticulously refined in every detail
