# Command: /security-audit

## Trigger
Run before every deployment and periodically during development.

## Steps

1. **Load reference**: Load `.agents/reference/security.md`

2. **Dependency scan**:
   ```bash
   npm audit          # Node.js
   pip audit          # Python
   # Review output, address critical/high issues
   ```

3. **Secrets scan**:
   ```bash
   # Search for common secret patterns
   grep -rn "password\|secret\|api_key\|token\|private_key" --include="*.ts" --include="*.js" --include="*.py" --include="*.env" .
   
   # Verify .gitignore includes:
   # .env, *.pem, *.key, credentials.json
   ```

4. **Run security checklist** from `reference/security.md`

5. **Document findings** in journal and CRS

## Expected Output
- Security audit report with pass/fail
- List of vulnerabilities (if any) with severity
- Approval or block recommendation
