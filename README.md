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

**Before first production deploy:**

1. **Set `site_url`** in `mkdocs.yml` to your live URL (e.g. `https://docs.example.com`). Required for correct sitemap, canonical links, and social previews.
2. **Optional:** Uncomment and set `repo_url`, `repo_name`, and `edit_uri` if the docs live in a Git repo (enables “Edit this page”).
3. **Optional:** Set `copyright` in `mkdocs.yml` for the footer.
