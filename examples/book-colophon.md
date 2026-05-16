# Example: colophon paragraph for a book or EPUB

The colophon below is suitable for the back-matter of a print book or an EPUB. It names both the SDG wrapper and the operative CC0 1.0 layer, and it is short enough to fit on a single page.

## Short form

> This book is dedicated to the worldwide public domain under the Soli Deo Gloria Public Domain Dedication, whose operative legal text is the Creative Commons CC0 1.0 Universal Public Domain Dedication. Anyone may copy, modify, publish, use, compile, sell, or distribute this book, in any form and for any purpose, commercial or non-commercial, without asking permission and without paying anything. The work is provided as-is, with no warranty of any kind. The full text of the dedication is available at https://github.com/pjedlund/sdg-license.

## Longer form

For projects that want the full wrapper narrative in the colophon, paste the first half of the SDG `LICENSE` file (everything before the CC0 1.0 legal code begins, plus the handoff sentence). Then add:

> The full legal text of the CC0 1.0 Universal Public Domain Dedication, which is the operative layer of this dedication, is available at https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt and at https://github.com/pjedlund/sdg-license/blob/main/LICENSE.cc0.txt.

## Metadata

If your book is published through a system that supports `dc:rights` metadata (most EPUB toolchains do), include:

```xml
<dc:rights>SPDX-License-Identifier: CC0-1.0</dc:rights>
```

Many EPUB readers also accept a license URL in the OPF metadata; pointing at the canonical CC0 1.0 URL is appropriate.
