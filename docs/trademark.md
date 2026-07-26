# Trademark, branding, and SPDX

SDG is the name of a project that publishes a dedication statement. The statement grants nothing; the operative legal text is CC0 1.0, the Unlicense, or both. This page explains how to identify SDG-dedicated work to tooling, and what this project does not do with other people's trademarks.

## The identifier is the base, not SDG

For package metadata, SBOMs, SPDX documents, and file headers, the identifier of an SDG-dedicated file is the identifier of its base:

| Variant | SPDX identifier |
| --- | --- |
| `SDG-CC0` | `CC0-1.0` |
| `SDG-Unlicense` | `Unlicense` |
| `SDG-Either` | `CC0-1.0 OR Unlicense` |

SDG has no SPDX identifier of its own and does not need one. It is not a licence — it adds no terms, grants nothing, and removes nothing. A tool that reports `CC0-1.0` for an SDG-CC0 file has reported the complete legal position of that file.

## Do not tag the statement with `AND`

SDG 1.0 suggested `CC0-1.0 AND LicenseRef-SDG` for tools that wanted to track the wrapper. That advice is withdrawn.

In SPDX, `AND` means a recipient must comply with both licences. Since the SDG statement imposes no obligations at all, an `AND` expression asserts a conjunction that does not exist and may cause a compliance tool to flag an unknown component for review. It creates work for downstream consumers and describes the file less accurately than the bare base identifier does.

If you genuinely need tooling to record that the statement is present, two options are correct. Under SPDX 3.0 and later, the addition mechanism expresses it properly: `CC0-1.0 WITH AdditionRef-SDG` says "CC0, plus this additional text," which is what SDG is. Note that this will not validate under SPDX 2.x, where the right operand of `WITH` must be a listed exception. Alternatively, register SDG with [ScanCode LicenseDB](https://scancode-licensedb.aboutcode.org/), which assigns `LicenseRef-scancode-` keys to licences and texts outside the SPDX list and feeds detection rules into widely used scanning tools. That is the mechanism built for this case.

For nearly all adopters, the plain base identifier is the right answer.

## Why Creative Commons branding is not used

Creative Commons publishes a trademark and branding policy ([Creative Commons: Policies](https://creativecommons.org/policies/)). Two parts of it shape what this project does.

First, Creative Commons restricts use of its trademarks — the words "Creative Commons," the CC logo, and the CC0 mark — to identify works under unmodified Creative Commons tools. SDG is not a Creative Commons tool. This project therefore does not use CC logos, the CC0 mark image, or the words "Creative Commons" as part of SDG branding. Plain-text references such as "CC0 1.0" and "Creative Commons CC0 1.0 Universal Public Domain Dedication," used to identify the operative legal text rather than to brand SDG, are acceptable and necessary.

Second, Creative Commons does not endorse derivative tools. SDG is not endorsed by Creative Commons, and nothing here should be presented as a Creative Commons product, licence, or endorsement.

The Unlicense raises no comparable issue. It is not published by an organisation asserting trademark rights over it, and [unlicense.org](https://unlicense.org/) places the text itself in the public domain.

## Why the operative texts stay verbatim

If the CC0 1.0 or Unlicense text inside a variant were edited, the result would no longer be that licence, and the file would no longer be eligible for the corresponding SPDX identifier. The point of using established dedications rather than writing one is to inherit the legal effect and institutional standing they already have; editing them forfeits exactly that.

`LICENSE.cc0.txt`, `LICENSE.unlicense.txt`, and the copies embedded in the `variants/` files are therefore immutable. The only valid change is a re-fetch from a canonical source: [Creative Commons](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt) for CC0, [unlicense.org](https://unlicense.org/UNLICENSE) or the [SPDX license-list-data](https://github.com/spdx/license-list-data) text for the Unlicense.

## Forks and modifications of the statement

The statement itself is dedicated under SDG. Anyone may copy, modify, and republish it. But if you modify it in ways that change its meaning, do not call the result "SDG" or any close variant — adopt a different name. This project holds no registered trademark; the request rests on not confusing downstream adopters, who need "SDG" to name one stable document.

Modifications that preserve meaning — fixing a typo, translating into another language while keeping the substance, adjusting punctuation — may be called SDG. Submit them as pull requests against this project rather than forking.

## References

- [SPDX: CC0-1.0](https://spdx.org/licenses/CC0-1.0.html)
- [SPDX: Unlicense](https://spdx.org/licenses/Unlicense.html)
- [SPDX specification: license expressions](https://spdx.github.io/spdx-spec/v3.0.1/annexes/spdx-license-expressions/)
- [ScanCode LicenseDB](https://scancode-licensedb.aboutcode.org/)
- [Creative Commons: Policies (trademark and branding)](https://creativecommons.org/policies/)
- [Creative Commons: CC0 1.0 Universal (legal code, canonical plain text)](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt)
- [Unlicense](https://unlicense.org/)
