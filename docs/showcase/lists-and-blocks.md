# Lists & blocks

This page showcases **definition lists**, **footnotes**, **abbreviations**, and **formatting** (caret, mark, tilde from pymdown-extensions).

## Definition lists

Requires the `def_list` extension.

Term 1
:   Definition for the first term. Can span multiple lines.

Term 2
:   Another definition.

Term 3
:   You can have multiple definitions for one term.

:   This is a definition without a term (useful for glossaries).

## Footnotes

Requires the `footnotes` extension. Reference with `[^1]` and define at the bottom[^1].

You can use named footnotes[^named] and reuse them[^named].

[^1]: This is the first footnote. It appears at the end of the page.
[^named]: Named footnotes let you refer to the same note multiple times.

## Abbreviations

Requires the `abbr` extension. Define once at the end of the document, then use in text: HTML, CSS, API (hover to see full form).

*[HTML]: Hyper Text Markup Language
*[CSS]: Cascading Style Sheets
*[API]: Application Programming Interface

## Formatting (pymdownx)

- **Caret** for ^superscript^ and ^^double superscript^^.
- **Tilde** for ~subscript~ and ~~double subscript~~.
- **Mark** for ==highlighted text==.

Useful for H~2~O, x^2^, or ==key terms==.

## Blockquotes

> Single-level blockquote.
> Multiple lines in the same block.

> Nested blockquote
>> Inner quote
>>> Deeper quote

## Horizontal rule

Three or more hyphens, asterisks, or underscores:

---

Above is a horizontal rule.
