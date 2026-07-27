# Example: footer line for a website

Pick the form that matches the rest of your footer's style. The examples use `CC0-1.0`; substitute `Unlicense` or `CC0-1.0 OR Unlicense` to match the variant you adopted.

## HTML

```html
<p>This site is dedicated to the public domain under <a href="https://github.com/pjedlund/soli-deo-gloria-dedication">SDG</a> (CC0 1.0). SPDX-License-Identifier: CC0-1.0.</p>
```

## Markdown

```markdown
This site is dedicated to the public domain under [SDG](https://github.com/pjedlund/soli-deo-gloria-dedication) (CC0 1.0). SPDX-License-Identifier: CC0-1.0.
```

## Even shorter

If you are tight on space:

```html
<p>Public domain under <a href="https://github.com/pjedlund/soli-deo-gloria-dedication">SDG</a>.</p>
```

The shorter form omits the identifier. Prefer the longer form if your site is likely to be archived, mirrored, or scanned by tooling that looks for one.

## Linking convention

Point at the SDG project rather than directly at the CC0 or Unlicense page. SDG names your dedication; the base is the operative layer beneath it. Linking at SDG keeps the dedication visible, and a reader who wants the legal text will find it one click further in. Linking straight at the base skips past the part that says why.

Whichever you link, also keep a `LICENSE` file at your site's repository root. Footers get lost when pages are scraped, mirrored, or converted; the `LICENSE` file survives.
