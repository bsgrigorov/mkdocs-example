# Code blocks

Syntax highlighting and the **copy** button are provided by the theme (feature `content.code.copy`). Minification is handled by the `mkdocs-minify-plugin`.

## Inline code

Use backticks for `inline code` and `` `escaped ` backticks ``.

## Block code with language

```python
def fibonacci(n: int) -> list[int]:
    if n <= 0:
        return []
    if n == 1:
        return [0]
    seq = [0, 1]
    for _ in range(2, n):
        seq.append(seq[-1] + seq[-2])
    return seq
```

```yaml
# mkdocs.yml snippet
site_name: My Docs
theme:
  name: material
  palette:
    - scheme: default
    - scheme: slate
```

```bash
uv run mkdocs serve
# → http://127.0.0.1:8000
```

## No language (plain text)

```
No syntax highlighting.
Good for logs or opaque snippets.
```

## JSON

```json
{
  "name": "mydocs",
  "dependencies": ["mkdocs>=1.6", "mkdocs-material>=9.7"]
}
```

## Search

The **search** plugin indexes page content and code. Try searching for "fibonacci" or "palette" to see suggestions and highlighting.
