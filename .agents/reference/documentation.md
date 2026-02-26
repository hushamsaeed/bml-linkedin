# Reference: Documentation Standards

> **Load this doc when:** Writing docs, READMEs, inline comments, or API documentation.

---

## README Structure

Every project README must contain:

```markdown
# Project Name

Brief description of what this project does.

## Quick Start

1. Clone: `git clone ...`
2. Install: `npm install`
3. Configure: `cp .env.example .env` and fill in values
4. Run: `npm run dev`

## Architecture

Brief overview of the tech stack and system design.

## Project Structure

Key directories and what they contain.

## Development

How to run, test, and contribute.

## Deployment

How to deploy (reference deploy.md for full details).

## Environment Variables

Table of all required env vars with descriptions.
```

## Inline Comments

- Comment **why**, not **what** (the code shows what)
- Use JSDoc/TSDoc for public function signatures
- Add `TODO:` comments for known improvements
- Add `HACK:` comments for intentional workarounds (with context)
- Never leave commented-out code — delete it (git has history)

## API Documentation

- Document all endpoints with method, path, params, body, response
- Include example requests and responses
- Document error responses
- Keep API docs co-located with route definitions or in a dedicated `/docs` folder
