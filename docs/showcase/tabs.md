# Content tabs

Group alternative content (e.g. different languages or options) with **content tabs**. Requires `pymdownx.superfences` and `pymdownx.tabbed`. With `content.tabs.link` enabled, tabs with the same label stay in sync across the site.

## Code in tabs

=== "Python"
    ```python
    def greet(name: str) -> str:
        return f"Hello, {name}!"
    ```

=== "JavaScript"
    ```javascript
    function greet(name) {
        return `Hello, ${name}!`;
    }
    ```

=== "Bash"
    ```bash
    greet() { echo "Hello, $1!"; }
    greet "World"
    ```

## Mixed content in tabs

=== "Unordered list"
    - First item
    - Second item
    - Third item

=== "Ordered list"
    1. First step
    2. Second step
    3. Third step

=== "Paragraph"
    Plain paragraph with **bold** and *italic* text. Tabs can hold any Markdown.

## Tabs inside an admonition

!!! example "Tabs inside call-outs"
    === "Option A"
        Choose this for scenario A.
    === "Option B"
        Choose this for scenario B.
