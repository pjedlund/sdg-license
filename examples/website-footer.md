# Example: footer line for a website

Pick the form that matches the rest of your footer's style. Both versions link to the SDG project for the dedication's full text.

## HTML

```html
<p>This site is dedicated to the public domain under <a href="https://github.com/pjedlund/sdg-license">SDG</a> (CC0 1.0). SPDX-License-Identifier: CC0-1.0.</p>
```

## Markdown

```markdown
This site is dedicated to the public domain under [SDG](https://github.com/pjedlund/sdg-license) (CC0 1.0). SPDX-License-Identifier: CC0-1.0.
```

## Even shorter

If you are tight on space, a one-line variant:

```html
<p>Public domain under <a href="https://github.com/pjedlund/sdg-license">SDG</a>.</p>
```

The shorter form omits the explicit SPDX identifier. Prefer the longer form if your site is likely to be archived, mirrored, or scanned by tooling that looks for the identifier.

## Linking convention

When linking from a website footer, point at the SDG project URL rather than at the Creative Commons CC0 page directly. SDG identifies your dedication choice; CC0 is the operative layer that SDG references. Linking at SDG keeps the framing visible; linking at the CC0 page bypasses it.
