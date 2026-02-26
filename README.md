# My Docs

Documentation site built with [MkDocs](https://www.mkdocs.org) and the [Material](https://squidfunk.github.io/mkdocs-material/) theme.

## Quick start

```bash
uv sync
make serve
```

Then open **http://127.0.0.1:8000**. The site uses **live reload**: keep the server running and edit files under `docs/` or `mkdocs.yml` to see changes immediately.

## Commands

| Command        | Description |
|----------------|-------------|
| `make serve`   | Dev server with live reload (localhost:8000) |
| `make serve-lan` | Same, but listen on all interfaces (e.g. test on phone) |
| `make build`   | Build static site into `site/` |
| `make clean`   | Remove `site/` and `.cache/` |

## Project layout

- `mkdocs.yml` – single config (minify enabled only when `MKDOCS_MINIFY=true`, e.g. `make build`)
- `docs/` – Markdown source
- `docs/stylesheets/extra.css` – custom (high-contrast) colors
- `site/` – generated output (git-ignored)

## Deploy

After `make build`, deploy the contents of `site/` to any static host (GitHub Pages, Netlify, Vercel, S3, etc.).

### Before first production deploy (checklist)

1. **Set `site_url`** in `mkdocs.yml` to your real base URL (e.g. `https://docs.yourproject.com` or `https://<user>.github.io/<repo>/` for GitHub Pages). Without it, sitemap and canonical URLs are wrong and some hosts may not serve the site correctly.
2. **Optional:** Set `repo_url`, `repo_name`, and `edit_uri` in `mkdocs.yml` for “Edit this page” links.
3. **Optional:** Set `copyright` in `mkdocs.yml` for the footer.
4. **Optional – Favicon:** Add `docs/images/favicon.ico` and set `theme.favicon: images/favicon.ico` in `mkdocs.yml` if you want a custom icon.
5. **CI:** A GitHub Action runs `make build` and deploys `site/` to GitHub Pages on push to `main`. Enable **Settings → Pages → Build and deployment → Source: GitHub Actions** in the repo.
