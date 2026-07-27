# Example: colophon paragraph for a book or EPUB

Books are content, so `SDG-CC0` is normally the right base — see [choosing-a-base.md](../docs/choosing-a-base.md). The colophon below names the dedication and its operative layer, and is short enough for a single page.

## Short form

> This book is dedicated to the worldwide public domain under the Soli Deo Gloria Dedication, whose operative legal text is the Creative Commons CC0 1.0 Universal Public Domain Dedication. Anyone may copy, modify, publish, use, compile, sell, or distribute this book, in any form and for any purpose, commercial or non-commercial, without asking permission and without paying anything. The work is provided as-is, with no warranty of any kind. The full text of the dedication is available at https://github.com/pjedlund/sdg-license.

## Longer form

For a colophon that carries the dedication itself, paste the statement from the top of your `LICENSE` file — everything above the `OPERATIVE LEGAL TEXT` rule. Then add:

> The full legal text of the CC0 1.0 Universal Public Domain Dedication, which is the operative layer of this dedication, is available at https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt and at https://github.com/pjedlund/sdg-license/blob/main/LICENSE.cc0.txt.

This is the form to prefer for print. A printed book outlives the URLs in it, and a colophon carrying the statement in full still says what it means when the links have rotted.

## Metadata

If your book is published through a system supporting `dc:rights` metadata (most EPUB toolchains do), include:

```xml
<dc:rights>SPDX-License-Identifier: CC0-1.0</dc:rights>
```

Many EPUB readers also accept a licence URL in the OPF metadata; the canonical CC0 1.0 URL is appropriate there.
