# Getting started

## Serve locally (with live reload)

From the project root:

```bash
make serve
```

(or `uv run mkdocs serve`). Open **http://127.0.0.1:8000** and leave the server running. Edits to any file under `docs/` or to `mkdocs.yml` will trigger an automatic rebuild and browser refresh.

## Build static site

To export the site for deployment:

```bash
uv run mkdocs build
```

Output is written to the `site/` directory. Deploy that folder to any static host (e.g. GitHub Pages, Netlify, or S3).

## Project layout

| Path         | Purpose                    |
| ------------ | -------------------------- |
| `mkdocs.yml` | MkDocs and theme config    |
| `docs/`      | Markdown source for pages  |
| `site/`      | Generated output (after build) |
