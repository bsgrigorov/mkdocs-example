# Material for MkDocs – Insider features review

This doc reviews the listed Material for MkDocs **Insiders** features and whether any support **auth gating** (restricting which content is shown to which users).

---

## Auth gating: none

**None of the listed Insider features implement authentication or user-based content restriction.**

- **“Access management”** in the Insiders docs refers to **how you get access to the Insiders repo** (GitHub sponsorship, tokens), not to restricting documentation content by user or role.
- MkDocs (and Material) produce **static HTML**. User identity and permissions are out of scope; to gate content you need something in front of the site (e.g. nginx + auth, Netlify Identity, Cloudflare Access, or a separate app that serves different builds by role).

So: **no Insider feature can “restrict which content is shown to which users” by itself.** Use Insiders for better UX and build-time features; add auth at the hosting/proxy layer if you need gating.

---

## Feature-by-feature review

| Feature | What it does | Auth-related? | Use it? |
|--------|----------------|---------------|---------|
| **Blog plugin: pinned posts** | Pin specific posts to the top of the blog index. | No | ✅ If you use the blog plugin and want featured posts. |
| **Instant previews** | Hover over internal links to see a small preview popup without leaving the page. | No | ✅ Good UX for dense docs; low cost. |
| **Footnote tooltips** | Show footnote content in a tooltip on hover instead of jumping to the bottom. | No | ✅ Nice if you use footnotes a lot. |
| **Tags plugin: advanced settings** | Fine-tune tag slugification, front matter property, templates, scoped listings, inline tag lists, etc. | No | ✅ If you rely on tags and need more control. |
| **Tags plugin: nested tags** | Hierarchical tags (e.g. `foo/bar`). | No | ✅ When you need taxonomy hierarchy. |
| **Tags plugin: shadow tags** | Define tags by list, prefix, or suffix so they appear in nav/listings without editing every page. | No | ✅ Good for consistent tagging at scale. |
| **Stay on page when switching languages** | Language switcher updates content in place instead of full navigation. | No | ✅ Better UX for i18n sites. |
| **Blog plugin: author profiles** | Author metadata and profile display for blog posts. | No | ✅ If the blog is multi-author. |
| **Blog plugin: advanced settings** | Pagination, category/archive options, sorting, etc. | No | ✅ When you need more blog control. |
| **Projects plugin** | Multiple MkDocs projects in one repo; build/preview together (monorepo docs). | No | ✅ Only if you have multiple doc projects in one repo. |
| **Instant prefetching** | Prefetch linked pages in the background for faster navigation. | No | ✅ Good for perceived speed; watch cache/bandwidth if many links. |
| **Social plugin: custom layouts** | Customize layout of generated social/OG cards. | No | ✅ When default cards aren’t enough. |
| **Social plugin: background images** | Use custom background images on social cards. | No | ✅ For branding and richer previews. |
| **Code range selection** | Allow users to select a line range in code blocks (e.g. for “copy lines X–Y”). | No | ✅ Very useful for tutorials and long snippets. |
| **Code annotations: custom selectors** | Attach annotations to code blocks via custom CSS-style selectors (not only line numbers). | No | ✅ When line-based annotations are limiting. |
| **Privacy plugin: advanced settings** | Log levels, concurrency, cache dir, `assets_include` / `assets_exclude`, etc. | No | ✅ When you use the privacy plugin and need tuning or allow/deny lists. |
| **Optimize plugin** | Compress/optimize assets (often used with privacy plugin for self-hosted + smaller output). | No | ✅ Good for performance and offline bundles. |
| **Navigation path (breadcrumbs)** | Show a breadcrumb path (e.g. Home > Section > Page) in the header/nav. | No | ✅ Helps orientation in deep doc trees. |
| **Typeset plugin** | Preserve rich formatting (code, icons, emojis) in nav and TOC instead of plain text. | No | ✅ When nav/TOC titles use code or icons. |
| **Privacy plugin: external links** | Annotate external links (e.g. `rel="noopener"`, `target="_blank"`) for security and behavior. | No | ✅ Recommended if you have many external links. |

---

## Which ones are actually useful?

Below is what each *category* means and when it’s worth using.

### Better navigation UX

**What it is:** Features that make moving around the site faster and clearer without changing the content.

- **Instant previews** – Hover an internal link and a small popup shows a preview of that page. You can skim without clicking. *Use when:* Lots of cross-links (e.g. reference docs, tutorials with “see also”).
- **Instant prefetching** – When a link enters the viewport, the next page is fetched in the background so the first click feels instant. *Use when:* You want snappier navigation; skip or tune if you have huge pages or care about bandwidth.
- **Navigation path (breadcrumbs)** – A line like `Home > Section > Subsection > This page` near the top. *Use when:* Deep doc trees; helps people see where they are and go back up.
- **Stay on page when switching languages** – Language switcher replaces content in place instead of a full reload. *Use when:* You have real i18n (multiple languages), not just one locale.

**Verdict:** Breadcrumbs and instant previews are the most broadly useful. Prefetching and “stay on page” matter mainly for large or multilingual sites.

---

### Better code UX

**What it is:** Improvements to how code blocks behave for readers.

- **Code range selection** – In code blocks, users can select a *range* of lines (e.g. lines 3–7) and copy or highlight just that. Without it, they often copy the whole block. *Use when:* Tutorials, “add this to your file” snippets, or any long code block where only part is relevant.
- **Code annotations: custom selectors** – Annotations (callouts on specific lines) can target lines by CSS-style selectors (e.g. “the line containing `function foo`”) instead of only fixed line numbers. *Use when:* You annotate code a lot and line numbers change often (so you’d rather tie annotations to content).

**Verdict:** Code range selection is very useful for any code-heavy or tutorial-style docs. Custom selectors are a power-user feature when you lean heavily on annotations.

---

### Blog

**What it is:** Material’s *blog* is a way to have date-ordered, post-style pages (changelog, announcements, articles). “Blog” Insider features improve that experience.

- **Pinned posts** – Keep one or more posts always at the top of the blog index (e.g. “Start here” or “Current release”).
- **Author profiles** – Attach authors to posts and show names/avatars/bios.
- **Advanced settings** – Pagination, how categories/archives are sorted, etc.

**Verdict:** Only relevant if you *use the blog plugin* (date-based posts). If your site is “docs only” and you don’t have a blog section, skip these.

---

### Tags

**What it is:** Tagging pages (e.g. “API”, “Tutorial”, “v2”) and auto-generating tag index pages. Insider features make tags more flexible.

- **Nested tags** – Hierarchy like `lang/python` and `lang/rust` so you can browse by parent tag.
- **Shadow tags** – Tags applied by rule (e.g. “all under `docs/legacy/` get tag `legacy`”) so you don’t tag every file by hand.
- **Advanced settings** – Custom slug format, scoped listings (only under a section), custom layouts, etc.

**Verdict:** Useful when you already use or want *tag-based discovery* (e.g. “show me everything tagged Tutorial”). Nested and shadow tags help at scale; advanced settings when you need different listing behavior.

---

### Fancy nav (typeset / rich nav)

**What it is:** The left nav and table-of-contents usually show *plain text* titles. If a title in Markdown uses code, icons, or emojis (e.g. `` `GET /users` `` or “:material-check:”), the **typeset plugin** (Insiders) can preserve that in the nav/TOC instead of stripping it.

**Verdict:** Only useful when your *page titles* use code, icons, or emojis and you want that to appear in the sidebar/TOC. Most docs use plain titles, so this is optional.

---

## Quick wins (no blog/tags)

For a typical **docs-only** site, the most generally useful Insiders features are:

1. **Navigation path (breadcrumbs)** – Low effort, helps orientation.
2. **Instant previews** – Better scanning of links.
3. **Code range selection** – Better for any code/tutorial content.
4. **Footnote tooltips** – Nicer if you use footnotes.
5. **Privacy plugin: external links** – Safer and more consistent external links; combine with **Optimize** and **Privacy (advanced)** if you self-host or care about GDPR.

If you add a **blog** or **tags** section, then pinned posts, author profiles, nested/shadow tags, and the corresponding advanced settings become relevant.

---

## References

- [Getting started with Insiders](https://squidfunk.github.io/mkdocs-material/insiders/getting-started/) – install and token setup.
- [Built-in plugins](https://squidfunk.github.io/mkdocs-material/plugins/) – privacy, optimize, social, tags, typeset, etc.
- [Insiders changelog](https://squidfunk.github.io/mkdocs-material/insiders/changelog/) – when each feature was added.
- Content restriction: use hosting-layer auth (e.g. [Netlify + Identity](https://github.com/squidfunk/mkdocs-material/discussions/3567), nginx, or Cloudflare Access), not an Insider feature.
