# Reference: Deployment & DevOps

> **Load this doc when:** Deploying, configuring servers, managing Dokploy, or handling CI/CD.

---

## Infrastructure

- **Dokploy UI**: `http://89.167.93.86:3000`
- **Server**: `89.167.93.86` (SSH access)
- **Critical**: Other projects run on this server. ALWAYS check for port conflicts.

---

## Deployment Checklist

### Pre-Deploy
```
□ All tests passing
□ Security audit completed
□ Check port availability: ssh to server → `ss -tlnp`
□ Cross-reference with Dokploy existing applications
□ Select available port — NEVER assume a port is free
□ Environment variables documented and set
```

### Deploy
```
□ Register application in Dokploy (or update existing)
□ Configure environment variables in Dokploy
□ Set up domain/port mapping
□ Deploy via Dokploy UI or GitHub auto-deploy
□ If deploying via SSH, ALWAYS register in Dokploy afterward
```

### Post-Deploy
```
□ Health check: verify service responds correctly
□ Verify no other services disrupted
□ Update project memory with deployment details (port, URL, config)
□ Update AGENTS.md project state
□ Update CRS with deployment record
□ Monitor logs for first 5 minutes
```

---

## Port Management

### Rules
- Before ANY deployment: run port scan and cross-reference with Dokploy
- Document assigned port in project memory AND Dokploy
- If port conflict detected: **STOP and resolve** before proceeding
- Maintain running list of all ports across projects

### Reserved Ports
| Port | Service |
|---|---|
| 3000 | Dokploy UI |
| 22 | SSH |
| 80 | HTTP (nginx/reverse proxy) |
| 443 | HTTPS (nginx/reverse proxy) |
| 8082 | BML LinkedIn — Annual Report static page |

---

## Environment Variables

### Rules
- Never commit `.env` files to git
- Use `.env.example` with placeholder values
- Document all required env vars in README
- Use Dokploy's env var management for production values
- Rotate secrets on any suspected compromise

### Standard Variables
```
NODE_ENV=production
PORT=<assigned-port>
DATABASE_URL=<connection-string>
JWT_SECRET=<generated-secret>
LOG_LEVEL=info
```

---

## CI/CD

### GitHub Actions (if configured)
- Run tests on every PR
- Lint and type-check on every push
- Auto-deploy `main` to production via Dokploy webhook
- Block merge if tests fail

### Rollback Plan
- Keep last 3 working Docker images tagged
- Document rollback steps in deployment record
- Test rollback procedure periodically
