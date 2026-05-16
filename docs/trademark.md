# Trademark, branding, and SPDX

SDG is the name of a wrapper project. The operative legal text is CC0 1.0. This page explains why the distinction matters, how to identify SDG-dedicated work to tools, and what is not allowed.

## SDG is the project, CC0-1.0 is the identifier

For software tooling — package metadata, SBOMs, SPDX documents, file headers — the identifier of any file dedicated under SDG is `CC0-1.0`. That is the [SPDX short identifier](https://spdx.org/licenses/CC0-1.0.html) for CC0 1.0, and it is what compliance tools recognise. SDG does not have a separate SPDX identifier, because SDG is not a separate license — it is a project that publishes a narrative wrapper around an existing one.

Tools that want to track the wrapper specifically can use the SPDX `LicenseRef-` mechanism: `LicenseRef-SDG`, optionally combined with `CC0-1.0` in an SPDX expression as `CC0-1.0 AND LicenseRef-SDG`. The [SPDX specification on license expressions](https://spdx.github.io/spdx-spec/v3.0.1/annexes/SPDX-license-expressions/) covers the syntax for `LicenseRef-` identifiers. Most tools ignore unrecognised `LicenseRef-` entries, so adding the wrapper tag does not break compliance.

## Why Creative Commons branding is not used

Creative Commons publishes a trademark and branding policy ([Creative Commons: Policies](https://creativecommons.org/policies/)). Two parts of that policy shape what SDG does:

First, Creative Commons restricts the use of its trademarks — including the words "Creative Commons," the CC logo, and the CC0 mark — to identify works that are actually under unmodified Creative Commons tools. A wrapper around CC0 is not a Creative Commons tool. SDG complies by not using CC logos, the CC0 mark image, or the words "Creative Commons" as part of the SDG brand. Plain-text references such as "CC0 1.0" and "Creative Commons CC0 1.0 Universal Public Domain Dedication" — when used to identify the operative legal text, not to brand SDG — are acceptable and necessary.

Second, Creative Commons does not endorse derivative tools. SDG is not endorsed by Creative Commons. Nothing in this project should be presented as a Creative Commons product, a Creative Commons license, or a Creative Commons endorsement.

## Why the operative text stays verbatim

If the CC0 1.0 text inside `LICENSE` were edited, the result would no longer be CC0 1.0 — and it would no longer be eligible to be identified as `CC0-1.0` in SPDX, package metadata, or anywhere else. The whole point of wrapping CC0 rather than rewriting it is to preserve the legal effect that comes with CC0's institutional standing. SDG therefore treats `LICENSE.cc0.txt` and the embedded copy inside `LICENSE` as immutable. The only valid change to those bytes is a re-fetch from the [canonical Creative Commons source](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt).

## Forks and modifications of the wrapper

The narrative paragraphs around the CC0 text — what this project calls "the wrapper" — are themselves dedicated under SDG (CC0 1.0). Anyone may copy, modify, and republish them. However, if you modify the wrapper in ways that change its meaning, do not call your modified version "SDG" or any close variant. Adopt a different name. The SDG project does not hold a registered trademark, but reusing the name for a materially different document would confuse downstream adopters and is discouraged by this project.

Modifications that preserve meaning — fixing a typo, translating into another language while keeping the substance, adjusting punctuation — may be called SDG; submit them as pull requests against the canonical project instead of forking.

## References

- [SPDX: CC0-1.0](https://spdx.org/licenses/CC0-1.0.html)
- [SPDX specification: license expressions and LicenseRef-](https://spdx.github.io/spdx-spec/v3.0.1/annexes/SPDX-license-expressions/)
- [Creative Commons: Policies (trademark and branding)](https://creativecommons.org/policies/)
- [Creative Commons: CC0 1.0 Universal (legal code, canonical plain text)](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt)
