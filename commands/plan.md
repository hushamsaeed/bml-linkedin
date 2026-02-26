# Command: /plan

## Trigger
Run before implementing any feature, fix, or significant change. This supports the Context Reset principle.

## Steps

1. **Create plan document**: `plans/PLAN-{feature-name}.md`

2. **Fill in the template**:

```markdown
# Plan: {Feature Name}

**Date**: YYYY-MM-DD
**Author**: {Agent}
**PRD Section**: {Reference to relevant PRD section}

## Goal
What are we building/fixing? One clear sentence.

## Context
- Current state of the relevant system
- Why this change is needed
- Any constraints or dependencies

## Architecture Decisions
- Technology choices and rationale
- Integration points with existing system
- Data model changes (if any)

## Implementation Steps
1. Step one (with detail)
2. Step two
3. ...

## Reference Docs to Load
- [ ] `.agents/reference/components.md` (if frontend)
- [ ] `.agents/reference/api.md` (if backend)
- [ ] `.agents/reference/deploy.md` (if deployment)
- [ ] `.agents/reference/security.md` (always for new features)
- [ ] `.agents/reference/testing.md` (always)

## Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] ...

## Testing Plan
- Unit tests for: ...
- Integration tests for: ...
- E2E tests for: ...

## Security Considerations
- Authentication/authorization requirements
- Input validation needed
- Potential attack vectors

## Rollback Plan
How to undo this change if something goes wrong.
```

3. **Review plan** with Project Director / Technical Architect

4. **Context Reset**: Close the planning conversation. Open a new conversation for execution with the plan doc loaded.

## Expected Output
- Complete plan doc in `plans/`
- Ready for execution in a fresh context
