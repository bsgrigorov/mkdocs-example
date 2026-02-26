# Data & tables

Standard Markdown tables and `attr_list` for styling. The **search** plugin indexes table content.

## Basic table

| Command           | Description        |
| ----------------- | ------------------ |
| `make serve`      | Start dev server   |
| `make build`      | Build static site  |
| `make clean`      | Remove `site/`     |

## Alignment

| Left    | Center  | Right   |
| :------ | :-----: | ------: |
| left    | center | right   |
| a       | b      | c       |

## Wide content

| Extension        | Purpose                                  |
| ---------------- | ----------------------------------------- |
| `admonition`     | Call-outs (note, warning, tip, etc.)      |
| `pymdownx.tabbed`| Content tabs (e.g. code per language)     |
| `pymdownx.details` | Collapsible blocks (??? / ???+)         |
| `footnotes`      | Footnote references and definitions       |
| `def_list`       | Definition lists (term : definition)      |
| `toc`            | Table of contents with permalinks         |

## Tables in admonitions

!!! note "Quick reference"
    | Key   | Action   |
    | ----- | -------- |
    | `make`| Show help |
    | `make serve` | Run server |

## Navigation features (from theme)

These are enabled in `mkdocs.yml` under `theme.features`:

- **navigation.instant** – No full page reload when changing pages
- **navigation.tracking** – Active section highlighted in sidebar
- **navigation.tabs** – Top-level nav as tabs
- **navigation.sections** – Collapsible sidebar sections
- **navigation.expand** – Control which sections start expanded
- **navigation.top** – Back-to-top button
- **navigation.footer** – Previous/next page in footer
- **search.suggest** – Search suggestions as you type
- **search.highlight** – Highlight matches in results
- **content.code.copy** – Copy button on code blocks
- **content.tabs.link** – Tabs with same label stay in sync

Try the **search** box (top right) and the **table of contents** in the sidebar to see navigation and search in action.
