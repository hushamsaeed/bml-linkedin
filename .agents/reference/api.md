# Reference: Serving & Deployment (Static Site)

> **Load this doc when:** Configuring how to serve or deploy the static HTML page.

---

## Project: BML LinkedIn Annual Report

This is a **static single-page HTML site** — no backend, no database, no API.

### Serving Locally
```bash
# Simple Python server
python3 -m http.server 8082

# Or with Node
npx serve -p 8082
```

### Deployment
- Serve as static files via nginx/caddy on Dokploy
- No build step required
- No environment variables needed (no backend)
- Can also be hosted on GitHub Pages, Netlify, or Vercel

### Nginx Config (if needed)
```nginx
server {
    listen 8082;
    root /var/www/bml-linkedin;
    index index.html;
    location / {
        try_files $uri $uri/ /index.html;
    }
}
```

### Optimization Checklist
- [ ] Extract base64 images to separate files for browser caching
- [ ] Minify CSS and JS for production
- [ ] Add appropriate cache headers
- [ ] Enable gzip compression
- [ ] Add Open Graph meta tags for LinkedIn sharing
