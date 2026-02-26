# Command: /review

## Trigger
Run before merging any PR or shipping any code.

## Steps

1. **Code Quality**:
   ```
   □ Code is readable and well-structured
   □ Functions are focused (single responsibility)
   □ No dead code or commented-out code
   □ Naming is clear and consistent
   □ No magic numbers/strings — use constants
   □ Error handling is comprehensive
   □ No TODO/FIXME without issue reference
   ```

2. **Standards Compliance**:
   ```
   □ Follows project naming conventions
   □ Uses @/ path aliases (no deep relative imports)
   □ Follows the patterns in relevant reference docs
   □ Conventional commit messages
   □ TypeScript types are specific (no `any`)
   ```

3. **Performance**:
   ```
   □ No N+1 queries
   □ Appropriate caching
   □ No unnecessary re-renders (React)
   □ Lazy loading where appropriate
   □ No blocking operations on main thread
   ```

4. **Security** (defer to Security Auditor for deep review):
   ```
   □ No secrets in code
   □ Input validation present
   □ Output encoding for user-generated content
   □ Auth checks on all protected routes
   ```

5. **Tests**:
   ```
   □ New code has tests
   □ Edge cases covered
   □ All tests passing
   □ No flaky tests introduced
   ```

## Expected Output
- Review summary with pass/fail for each section
- List of issues to address (if any)
- Approval or request for changes
