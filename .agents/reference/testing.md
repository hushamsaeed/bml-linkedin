# Reference: Testing & QA

> **Load this doc when:** Writing tests, running QA verification, or validating acceptance criteria.

---

## Testing Standards

### Test Types
| Type | Purpose | When to Run |
|---|---|---|
| Unit | Test individual functions/components | Every commit |
| Integration | Test module interactions | Every PR |
| E2E | Test full user flows | Before deploy |
| Security | Vulnerability scanning | Before deploy |

### Coverage Requirements
- Minimum 80% code coverage for new code
- All API endpoints must have integration tests
- All critical user flows must have E2E tests
- Edge cases and error paths must be tested

### Test Naming
```
describe('ComponentName', () => {
  it('should [expected behavior] when [condition]', () => {
    // ...
  });
});
```

### Test Structure (Arrange-Act-Assert)
```
// Arrange — set up test data and preconditions
// Act — perform the action being tested
// Assert — verify the expected outcome
```

---

## QA Verification Checklist

### Functional
```
□ Feature meets acceptance criteria from PRD/plan
□ Happy path works correctly
□ Edge cases handled gracefully
□ Error states display appropriate messages
□ Loading states shown during async operations
```

### UI (if applicable)
```
□ Implementation matches approved design
□ Responsive across breakpoints (mobile, tablet, desktop)
□ Cross-browser tested (Chrome, Firefox, Safari minimum)
□ Keyboard navigation works
□ Screen reader compatible
□ No layout shifts on load
```

### Regression
```
□ Existing tests still pass
□ No visual regressions on other pages
□ No performance degradation
□ No broken links or missing assets
□ API backward compatibility maintained
```

### Data
```
□ Database migrations run cleanly (up and down)
□ No data loss scenarios
□ Handles concurrent access correctly
□ Pagination works with large datasets
```

---

## QA Sign-off

QA Engineer must explicitly sign off before deployment:

```
[QA SIGN-OFF]
Feature: {feature name}
Agent: QA Engineer
Date: {date}
Status: ✅ APPROVED / ❌ REJECTED
Notes: {any observations or conditions}
Tested: {list of test types run}
```
