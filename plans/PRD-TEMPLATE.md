# PRD: {Project Name}

**Version**: 1.0
**Date**: YYYY-MM-DD
**Author**: Project Director
**Status**: Draft | In Review | Approved

---

## 1. Overview

### Problem Statement
What problem does this project solve? Who has this problem?

### Solution
Brief description of what we're building.

### Success Metrics
How do we know this project is successful?

---

## 2. Architecture

### Tech Stack
| Layer | Technology | Rationale |
|---|---|---|
| Frontend | | |
| Backend | | |
| Database | | |
| Hosting | Dokploy on 89.167.93.86 | Standard infra |
| CI/CD | GitHub Actions | Standard workflow |

### System Diagram
```
[Describe or diagram the system architecture]
```

### Data Model
```
[Key entities and relationships]
```

---

## 3. Features — Phase 1 (MVP)

### Feature 1: {Name}
**Priority**: P0 | P1 | P2
**Description**: What this feature does
**User Story**: As a [user], I want to [action] so that [benefit]

#### Auth Requirements
- [ ] Public / Authenticated / Admin-only

#### API Endpoints
| Method | Path | Description |
|---|---|---|
| | | |

#### UI Components
| Component | Description |
|---|---|
| | |

#### Tests
| Type | What to Test |
|---|---|
| Unit | |
| Integration | |
| E2E | |

#### Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2

---

### Feature 2: {Name}
_(Repeat structure above)_

---

## 4. Features — Phase 2

_(Same structure as Phase 1)_

---

## 5. Non-Functional Requirements

### Performance
- Page load: < 2s
- API response: < 500ms
- Concurrent users: {target}

### Security
- Authentication method: {JWT / Session / OAuth}
- Data encryption: {at rest / in transit}
- Compliance: {GDPR / SOC2 / none}

### Accessibility
- WCAG AA compliance minimum

---

## 6. Deployment

- **Port**: {assigned port}
- **Domain**: {if applicable}
- **Environment Variables**: See `.env.example`

---

## 7. Open Questions

- [ ] Question 1
- [ ] Question 2

---

## Changelog

| Date | Version | Change | Author |
|---|---|---|---|
| | 1.0 | Initial draft | |
