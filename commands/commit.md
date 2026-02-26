# Command: /commit

## Trigger
Run after completing a logical unit of work.

## Steps

1. **Stage changes**: Review what's changed
   ```bash
   git status
   git diff --stat
   ```

2. **Review diff**: Ensure nothing unintended is included
   ```bash
   git diff
   ```

3. **Check for secrets**: Scan staged files for accidental secrets
   - Look for: API keys, passwords, tokens, connection strings
   - If found: STOP, remove, add to .gitignore

4. **Format commit message**: Use conventional commits
   ```
   type(scope): description
   
   [optional body with more detail]
   
   [optional footer: Breaking changes, issue refs]
   ```
   
   Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`, `ci`, `perf`

5. **Commit and push**:
   ```bash
   git add .
   git commit -m "type(scope): description"
   git push
   ```

6. **Update memory**: If the commit changes project state, update AGENTS.md project state

## Expected Output
- Clean commit with conventional message format
- Changes pushed to remote
- No secrets committed
