# Frequently Asked Questions

## Why not just use CC0 directly?

You can, and for many adopters that is the right answer. SDG exists for projects that want a short statement of intent — the Bach-and-Tolstoy framing — in front of the legal text. The legal effect is identical, because the operative text is CC0 1.0 verbatim. If you do not want the framing, use CC0 directly and skip the wrapper.

## Can I use SDG for code?

Technically yes — the operative text is CC0 1.0, and CC0 can be applied to code. In practice it is not recommended, because CC0 does not include a patent grant and Fedora stopped accepting CC0 for code in 2022. For source code, prefer [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt) (which has an explicit patent grant) or [MIT-0](https://spdx.org/licenses/MIT-0.html). If you want SDG framing for a mixed project, dedicate the prose and documentation under SDG and the code under Apache 2.0 or MIT-0 in the same repository. See [docs/patents-and-code.md](docs/patents-and-code.md) for the longer version.

## Does SDG work in Germany, France, Italy, Spain?

It works as well as any public-domain dedication can work in civil-law jurisdictions, and that is the most that anyone can honestly claim. Civil-law systems treat moral rights as inalienable, and no dedication — SDG, CC0, Unlicense, or anything else — can fully waive them. CC0's three-layer construction (waiver, then fallback license, then a broadest-permissible-construction clause) is specifically designed for this case and is widely regarded as the strongest available tool. See [docs/moral-rights.md](docs/moral-rights.md) for the detail.

## Can I modify the SDG wrapper?

Yes, but you cannot call your modified version "SDG" if the modification changes the meaning. The narrative paragraphs around the CC0 text are themselves dedicated under SDG (CC0 1.0), so the bytes are free to reuse and adapt. The constraint is naming, not copying: a forked, materially different wrapper should be given a different name to avoid confusing downstream adopters. The operative CC0 1.0 text inside `LICENSE` must remain verbatim under any circumstance. See [docs/trademark.md](docs/trademark.md).

## Can I use the Creative Commons or CC0 logo on my SDG-dedicated work?

Not as part of SDG branding. Creative Commons has a [trademark and branding policy](https://creativecommons.org/policies/) that restricts use of the CC logo, the CC0 mark image, and the words "Creative Commons" to identify works under unmodified Creative Commons tools. SDG is a wrapper around CC0, not a Creative Commons product, and presenting SDG with CC branding would misrepresent the relationship. Plain-text references such as "CC0 1.0" — used to identify the operative legal text — are fine and required.

If you wish to follow Creative Commons' own attribution conventions for the CC0 layer (for example, including a "No Rights Reserved" notice as Creative Commons recommends), you may do so. That is separate from SDG branding.

## What is the SPDX identifier?

The SPDX identifier for any file dedicated under SDG is `CC0-1.0`. SDG does not have a separate SPDX identifier, because SDG is the wrapper project, not a separate license. Tools that want to track the wrapper specifically can use `LicenseRef-SDG` alongside `CC0-1.0`, for example as the SPDX expression `CC0-1.0 AND LicenseRef-SDG`.

## Will my SDG-dedicated work be accepted by Fedora, Debian, or other distributions?

For non-code material, generally yes: CC0 is on the SPDX list and on most distributions' allowed-licenses lists. For code, the answer depends on the distribution: Fedora does not accept new CC0-licensed code packages as of 2022, while several other distributions still do. If you are publishing code intended for broad distribution packaging, use Apache 2.0 or MIT-0 and skip SDG for those files. See [docs/patents-and-code.md](docs/patents-and-code.md).

## Where did SDG come from?

SDG was first written for and adopted by the [tolstoy.life](https://tolstoy.life/) project. The Bach-and-Tolstoy framing reflects that origin: Tolstoy himself renounced copyright on his later writings, and the framing draws an honest line from that tradition to the present. SDG is now maintained as a neutral, standalone project so any third party can adopt it without inheriting tolstoy.life branding. Tolstoy is the first adopter, not the home.

## Is SDG endorsed by Creative Commons?

No. SDG is an independent wrapper project. It uses CC0 1.0 verbatim as its operative legal text, which Creative Commons published and placed on the SPDX list, but Creative Commons does not endorse SDG and is not responsible for it.

## Can I dedicate work I did not create under SDG?

No. Only the actual rights-holders can dedicate a work to the public domain. If you compile, edit, or curate a collection, you can dedicate your own editorial and structural contributions under SDG while pointing readers at the licenses of the underlying material. Make the boundary clear in your own LICENSE or NOTICE file; this is how nearly all heritage and archive projects handle the question.
