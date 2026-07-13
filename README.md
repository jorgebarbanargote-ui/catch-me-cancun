# Catch Me Cancun — Private Airport Transportation

Static website (single page, bilingual EN/ES) served by nginx.

## Deploy on EasyPanel (Dockerfile)
1. Push this repo to GitHub.
2. EasyPanel → Create Service → **App**.
3. **Source**: GitHub → select this repository (branch `main`).
4. **Build**: Dockerfile (auto-detected).
5. **Port**: `80`.
6. Deploy, then attach the domain (e.g. catchmecancun.mx).

## Local preview
Open `index.html` in a browser, or:
```
docker build -t catchmecancun .
docker run -p 8080:80 catchmecancun
# visit http://localhost:8080
```
