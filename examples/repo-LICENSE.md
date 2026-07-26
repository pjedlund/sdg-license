# Example: drop-in LICENSE for a downstream repository

Pick a variant first — see [choosing-a-base.md](../docs/choosing-a-base.md). The examples below use `SDG-Either`; substitute `SDG-CC0.txt` / `CC0-1.0` or `SDG-Unlicense.txt` / `Unlicense` if you chose a single base.

## Option 1: long form (recommended, self-contained)

Copy your chosen variant verbatim into your project root as `LICENSE`:

```text
cp path/to/soli-deo-gloria-dedication/variants/SDG-Either.txt /path/to/your-project/LICENSE
```

This is the recommended form. The dedication is then complete inside your own repository, regardless of whether the SDG project remains hosted at the URL you currently know.

## Option 2: short form (pointer)

For projects that prefer a short `LICENSE` file pointing at the canonical project:

```text
This work is dedicated to the worldwide public domain under the
Soli Deo Gloria (SDG) Dedication. The operative legal text is the
Creative Commons CC0 1.0 Universal Public Domain Dedication, or
the Unlicense, at your option. See
https://github.com/pjedlund/soli-deo-gloria-dedication
for the full text.

SPDX-License-Identifier: CC0-1.0 OR Unlicense
```

The short form is acceptable but riskier: if the SDG project moves or goes offline, your `LICENSE` points at nothing and a reader cannot reconstruct the terms. The long form has no such dependency. For anything you expect to outlive its hosting — a book, an archive, a heritage dataset — use the long form.

## Either way

Also add an SPDX header to any source files you want individually tagged. See [single-file-header.md](single-file-header.md).
