# How to apply SDG

This page contains copy-paste recipes for the five most common contexts: a whole repository, a single source file, a book or EPUB, a website, and a dataset. Pick the one that matches what you are publishing.

## A whole repository

Drop a single `LICENSE` file at the root of the repository, copied from this project's `LICENSE`. The resulting tree looks like:

```
my-project/
├── LICENSE         <-- copied verbatim from sdg-license/LICENSE
├── README.md
└── ...
```

You can either copy the full `LICENSE` (the recommended self-contained form) or use a short pointer that references SDG and includes the SPDX identifier. See [examples/repo-LICENSE.md](examples/repo-LICENSE.md) for both forms.

In your `README.md`, add a one-line "License" section pointing at the file:

```markdown
## License

Dedicated to the public domain under SDG. See `LICENSE`. `SPDX-License-Identifier: CC0-1.0`.
```

## A single source file

Add an SPDX header at the top of the file using the comment syntax of the file's language. The minimum form is just the SPDX identifier:

```text
# SPDX-License-Identifier: CC0-1.0
```

```text
// SPDX-License-Identifier: CC0-1.0
```

For tools that want to track the SDG wrapper alongside the CC0 layer, use:

```text
// SPDX-License-Identifier: CC0-1.0 AND LicenseRef-SDG
```

For five common comment syntaxes (shell/Python, C-family, HTML, CSS, Lisp), see [examples/single-file-header.md](examples/single-file-header.md).

## A book or EPUB

Add a colophon paragraph in the back-matter of the book that names both SDG and the operative CC0 1.0 layer. A short version reads:

> This book is dedicated to the worldwide public domain under the Soli Deo Gloria Public Domain Dedication, whose operative legal text is the Creative Commons CC0 1.0 Universal Public Domain Dedication. Anyone may copy, modify, publish, use, compile, sell, or distribute this book, in any form and for any purpose, without asking permission.

For the longer version suitable for print colophons or EPUB back-matter, see [examples/book-colophon.md](examples/book-colophon.md). Include the SDG URL alongside the prose if your publishing format supports a link.

## A website

Add a single line in the footer naming SDG and linking either to your local `LICENSE` page or directly to the SDG project. A minimal version reads:

```html
<p>This site is dedicated to the public domain under <a href="https://github.com/pjedlund/sdg-license">SDG</a>. SPDX-License-Identifier: CC0-1.0.</p>
```

For the Markdown variant and notes on linking conventions, see [examples/website-footer.md](examples/website-footer.md).

## A dataset

For datasets, the convention is to include the license identifier in the dataset's metadata file. For Frictionless Data datapackages, this means adding a `licenses` entry to `datapackage.json`:

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

For Zenodo, figshare, Dataverse, and similar repositories, select "CC0 1.0 Universal (Public Domain Dedication)" from the license dropdown. Mention SDG in the dataset description if you want adopters to see the framing — the legal layer is CC0 either way.

Always include a `LICENSE` file at the root of the dataset bundle as well, in case the metadata is stripped during redistribution. Use the same `LICENSE` file as for a repository.

## A NOTICE file, if you need one

If your project contains material whose rights you do not hold — quoted sources, third-party fixtures, included images — keep a `NOTICE` file at the repository root that lists those pieces and their separate licenses. The `LICENSE` file dedicates *your* contributions under SDG; the `NOTICE` file clears the perimeter for anything else. This is the conventional pattern in archive and heritage projects.
