# Reference: Security

> **Load this doc when:** Reviewing security, auditing code, scanning dependencies, or managing secrets.

---

## Security Audit Checklist

### Code Review
```
□ No secrets/credentials hardcoded in source
□ No API keys in client-side code
□ All user input validated and sanitized
□ SQL injection prevention (parameterized queries)
□ XSS prevention (output encoding, CSP headers)
□ CSRF protection on state-changing endpoints
□ Authentication required on all non-public endpoints
□ Authorization checked at every access point
□ No sensitive data in logs
□ Error messages don't leak internal details
```

### Dependencies
```
□ Run `npm audit` / `pip audit` / equivalent
□ No critical/high vulnerabilities in dependencies
□ Dependencies are actively maintained (not abandoned)
□ Lock files committed (package-lock.json, poetry.lock, etc.)
□ No unnecessary dependencies
```

### Secrets Management
```
□ All secrets in environment variables (never in code)
□ .env files in .gitignore
□ .env.example has placeholder values only
□ Production secrets managed via Dokploy
□ Secrets rotated on any suspected compromise
□ Different secrets for dev/staging/production
```

### Infrastructure
```
□ HTTPS enforced in production
□ Security headers set (HSTS, CSP, X-Frame-Options, etc.)
□ Rate limiting on auth endpoints
□ CORS configured restrictively
□ File uploads validated (type, size, content)
□ No directory listing enabled
□ Server software versions not exposed
```

---

## Blocking Authority

The Security Auditor can **block any deployment** until security concerns are resolved. This is non-negotiable.

Blocking triggers:
- Critical/high dependency vulnerabilities
- Hardcoded secrets detected
- Missing authentication on endpoints
- SQL injection or XSS vectors found
- Sensitive data exposure risk

---

## Incident Response

If a security issue is found in production:
1. **Contain**: Disable affected functionality immediately
2. **Assess**: Determine scope and impact
3. **Fix**: Patch the vulnerability
4. **Rotate**: Change any potentially compromised secrets
5. **Document**: Full incident report in journal + CRS
6. **Evolve**: Add new rule/check to prevent recurrence (System Evolution!)
