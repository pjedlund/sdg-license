# How to apply SDG

Two steps: pick a base, then use the recipe for what you are publishing.

## Step 1: pick a base

| Variant | SPDX identifier | Use for |
| --- | --- | --- |
| `variants/SDG-Either.txt` | `CC0-1.0 OR Unlicense` | Most projects, and anything mixed. |
| `variants/SDG-CC0.txt` | `CC0-1.0` | Prose, art, scholarship, data, cultural-heritage material. |
| `variants/SDG-Unlicense.txt` | `Unlicense` | Source code. |

The recipes below are written with `SDG-Either` identifiers. If you picked a single-base variant, substitute `CC0-1.0` or `Unlicense` wherever `CC0-1.0 OR Unlicense` appears. [docs/choosing-a-base.md](docs/choosing-a-base.md) explains the trade-offs.

## A whole repository

Copy your chosen variant to the root of the repository as `LICENSE`:

```
my-project/
├── LICENSE         <-- copied verbatim from variants/SDG-Either.txt
├── README.md
└── ...
```

You can either copy the full variant (the recommended self-contained form) or use a short pointer that references SDG and includes the SPDX identifier. See [examples/repo-LICENSE.md](examples/repo-LICENSE.md) for both forms.

In your `README.md`, add a one-line "License" section pointing at the file:

```markdown
## License

Dedicated to the public domain under SDG. See `LICENSE`.
`SPDX-License-Identifier: CC0-1.0 OR Unlicense`.
```

## A single source file

Add an SPDX header at the top of the file, using the comment syntax of the file's language:

```text
# SPDX-License-Identifier: CC0-1.0 OR Unlicense
```

```text
// SPDX-License-Identifier: Unlicense
```

That identifier is the complete legal position of the file. Do not add `AND LicenseRef-SDG`; SDG imposes no obligations, so an `AND` expression asserts a conjunction that does not exist and gives compliance tooling an unknown component to flag. SDG 1.0 recommended that form and the advice is withdrawn — see [docs/trademark.md](docs/trademark.md).

For five common comment syntaxes (shell/Python, C-family, HTML, CSS, Lisp), see [examples/single-file-header.md](examples/single-file-header.md).

## A book or EPUB

Books are content, so `SDG-CC0` is usually the right base. Add a colophon paragraph in the back matter:

> This book is dedicated to the worldwide public domain under the Soli Deo Gloria Dedication, whose operative legal text is the Creative Commons CC0 1.0 Universal Public Domain Dedication. Anyone may copy, modify, publish, use, compile, sell, or distribute this book, in any form and for any purpose, without asking permission.

For a longer version suitable for print colophons or EPUB back matter, see [examples/book-colophon.md](examples/book-colophon.md). Include the SDG URL alongside the prose if your publishing format supports a link.

## A website

Add a line in the footer naming SDG and linking to your local `LICENSE` page or to the SDG project:

```html
<p>This site is dedicated to the public domain under <a href="https://github.com/pjedlund/soli-deo-gloria-dedication">SDG</a>. SPDX-License-Identifier: CC0-1.0.</p>
```

For the Markdown variant and notes on linking conventions, see [examples/website-footer.md](examples/website-footer.md).

## A dataset

Datasets are content, and CC0 covers database rights explicitly where the Unlicense is silent on them — so use `SDG-CC0` unless you have a specific reason not to.

Include the identifier in the dataset's metadata file. For Frictionless Data datapackages, add a `licenses` entry to `datapackage.json`:

```json
{
  "name": "my-dataset",
  "title": "My Dataset",
  "licenses": [
    {
      "name": "CC0-1.0",
      "title": "Creative Commons CC0 1.0 Universal",
      "path": "https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt"
    }
  ]
}
```

For Zenodo, figshare, Dataverse, and similar repositories, select "CC0 1.0 Universal (Public Domain Dedication)" from the licence dropdown. Mention SDG in the dataset description if you want readers to see the dedication; the legal layer is CC0 either way.

Always include a `LICENSE` file at the root of the dataset bundle as well, in case the metadata is stripped during redistribution.

## A NOTICE file, if you need one

If your project contains material whose rights you do not hold — quoted sources, third-party fixtures, included images — keep a `NOTICE` file at the repository root listing those pieces and their separate licences. The `LICENSE` file dedicates *your* contributions under SDG; the `NOTICE` file clears the perimeter for everything else. This is the conventional pattern in archive and heritage projects.
