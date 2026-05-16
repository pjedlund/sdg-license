# Example: drop-in LICENSE for a downstream repository

You have two options. The first is recommended for most projects.

## Option 1: long form (recommended, self-contained)

Copy the full `LICENSE` file from this project verbatim into your own project's root. The result is a self-contained dedication that does not require your readers to follow an outside link to understand the legal layer.

```text
cp path/to/sdg-license/LICENSE /path/to/your-project/LICENSE
```

This is the recommended form because the dedication is then complete in your own repository, regardless of whether the SDG project remains hosted at the URL you currently know.

## Option 2: short form (pointer)

For projects that prefer a short LICENSE file pointing at the canonical SDG project, use this text:

```text
This work is dedicated to the worldwide public domain under the
Soli Deo Gloria (SDG) Public Domain Dedication. The operative
legal text is the Creative Commons CC0 1.0 Universal Public
Domain Dedication. See https://github.com/pjedlund/sdg-license
for the full text.

SPDX-License-Identifier: CC0-1.0
```

The short form is acceptable but slightly riskier: if the SDG project is ever moved or unavailable, your LICENSE points at nothing. The long form has no such dependency.

## Either way

Whichever form you choose, also add an SPDX header to any source files you want individually tagged. See [single-file-header.md](single-file-header.md).
