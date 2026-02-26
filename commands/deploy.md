# Command: /deploy

## Trigger
Run when deploying any changes to the server.

## Steps

1. **Pre-flight checks**:
   ```bash
   # Run tests
   npm test  # or equivalent
   
   # Check for security issues
   npm audit
   
   # Verify build succeeds
   npm run build  # or equivalent
   ```

2. **Port check** (CRITICAL):
   ```bash
   # SSH to server and check ports
   ssh user@89.167.93.86 "ss -tlnp"
   
   # Cross-reference with Dokploy
   # Visit http://89.167.93.86:3000 and check existing apps
   ```

3. **Deploy**:
   - Via Dokploy UI: Register/update application, set env vars, trigger deploy
   - Via SSH: Deploy and then register in Dokploy

4. **Verify**:
   ```bash
   # Health check
   curl -f http://89.167.93.86:{PORT}/health
   
   # Check logs
   ssh user@89.167.93.86 "docker logs {container} --tail 50"
   
   # Verify other services still running
   ssh user@89.167.93.86 "ss -tlnp"
   ```

5. **Document**:
   - Update AGENTS.md with deploy status and port
   - Update `reference/deploy.md` reserved ports table
   - Add CRS entry for deployment

## Expected Output
- Application deployed and healthy
- Registered in Dokploy
- No port conflicts
- All services verified
- Memory updated
