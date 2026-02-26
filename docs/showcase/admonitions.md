# Admonitions

Admonitions (call-outs) highlight side content. Use `!!!` for static blocks and `???` for collapsible ones.

## Basic types

!!! note
    A **note** for neutral, factual information.

!!! abstract "Summary"
    Use **abstract** for summaries or TL;DRs. You can set a custom title in quotes.

!!! info
    **Info** for general context or explanations.

!!! tip "Pro tip"
    **Tip** for helpful suggestions. Great for shortcuts or best practices.

!!! success
    **Success** for positive outcomes or confirmations.

!!! question
    **Question** for open questions or FAQs.

!!! warning
    **Warning** for something that might cause problems.

!!! failure
    **Failure** for errors or things that went wrong.

!!! danger
    **Danger** for critical or irreversible actions.

!!! bug
    **Bug** for known issues or workarounds.

!!! example "Custom title"
    **Example** for sample inputs, outputs, or usage.

!!! quote
    **Quote** for citations or attributed text.

## Collapsible blocks

Use `???` for blocks that start collapsed. Use `???+` to start expanded.

??? note "Click to expand"
    This block is collapsed by default. Requires `pymdownx.details`.

???+ tip "Already expanded"
    This one is expanded by default. Handy for “optional details” that most readers can skip.

??? abstract "Nested content"
    You can put **anything** inside:

    - Lists
    - **Formatting**
    - Even code:

    ```python
    def hello():
        print("Hello from inside an admonition")
    ```

## Inline admonitions

On wide viewports, admonitions with the `inline` modifier can sit beside body text (e.g. `!!! info inline "Side note"`). On narrow screens they fall back to full width.
