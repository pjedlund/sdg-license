# Choosing a base

SDG is a statement of intent. It grants nothing by itself and is written in declarative voice throughout. All operative effect comes from the dedication reproduced beneath it, and SDG offers two: the [Creative Commons CC0 1.0 Universal Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/) and [the Unlicense](https://unlicense.org/). This page explains which to pick, and why the choice is not arbitrary.

## The short answer

Content — prose, art, scholarship, data, cultural-heritage material — takes `SDG-CC0`. Source code takes `SDG-Unlicense`. If your project is mixed, or you would rather not choose on the recipient's behalf, take `SDG-Either`.

## CC0's construction

CC0 is built in three layers, each falling back to the next when the prior one is not legally available in a given jurisdiction. The full text is in `LICENSE.cc0.txt`, but in summary:

The first layer is a worldwide waiver of copyright and related or neighbouring rights. Where national law permits an author to renounce these rights outright, the waiver does so. The second layer is a public-license fallback: where the waiver is not legally effective, the author instead grants every person an unconditional, royalty-free, irrevocable license to exercise all those rights. The third layer is a construction clause directing courts to read the dedication as broadly as the law permits.

That construction is why CC0 is widely regarded as the strongest available tool for a worldwide public domain dedication. It also covers database rights explicitly — including the EU *sui generis* right under Directive 96/9/EC — which matters for datasets and matters not at all to the Unlicense, which is silent on them. For anything that is not code, CC0 is the better instrument, and it is the one the Free Software Foundation regards as more thorough and mature than the Unlicense.

## CC0's one real weakness

Section 4(a) of CC0 states: "No trademark or patent rights held by Affirmer are waived, abandoned, surrendered, licensed or otherwise affected by this document." That is not silence about patents. It is an express reservation of them.

The consequence is concrete. The Open Source Initiative has never approved CC0; it was withdrawn from the OSI approval process in 2012 over exactly this clause. In July 2022 the Fedora Project [stopped accepting CC0 for code](https://lwn.net/Articles/902410/), keeping it for content, on the Fedora Legal team's assessment that a licence precluding patent licensing cannot be considered FOSS. For a poem or a painting this is moot; patents do not attach to that kind of material. For code it is a live gap.

## The Unlicense's advantage

The Unlicense contains no patent clause at all. It neither grants patent rights nor reserves them, and its blanket permission to "copy, modify, publish, use, compile, sell, or distribute this software... for any purpose" is sometimes read as implying whatever permission its author could give. That difference is enough to have produced a different institutional outcome: the [OSI approved the Unlicense in June 2020](https://opensource.org/license/unlicense), while acknowledging the drafting is poor.

Be careful about what this does and does not buy you. Absence of a disclaimer is not an express grant. An author who holds a patent reading on their own Unlicensed code has not licensed it to you. The Unlicense removes an obstacle that CC0 puts in the way of code; it does not solve the patent problem. See [patents-and-code.md](patents-and-code.md) for what does.

## The Unlicense's weaknesses

Three, and they are the reason it is not the default.

Its text says "software" throughout — "this software," "the authors of this software," "dealings in the software." Applied to a novel or a photograph that reads oddly at best, and at worst invites an argument about whether the dedication reaches the work at all. Use CC0 for anything that is not code.

It makes no provision for jurisdictions that do not recognise a waiver of copyright. There is no fallback licence and no construction clause, so where an outright dedication fails, the Unlicense has nothing to fall back on. CC0's layers two and three exist precisely for that case, which is most of continental Europe. See [moral-rights.md](moral-rights.md).

It was drafted by non-lawyers and is widely criticised for it. The FSF accepts it as a free licence but recommends CC0 instead, on the grounds that CC0 is the more thorough and mature instrument.

## Why `SDG-Either` exists

`SDG-Either` reproduces both texts and lets the recipient rely on whichever suits them. In SPDX terms that is `CC0-1.0 OR Unlicense`, a disjunctive expression that tooling handles well — the Rust ecosystem has run on `MIT OR Apache-2.0` at enormous scale for a decade.

It is a reasonable default for two reasons. Practically, it covers mixed repositories without splitting them file by file. And it fits the dedication: having declined to claim ownership of the work, there is little sense in dictating which legal regime the person receiving it must use.

The cost is a longer `LICENSE` file and a slightly less common SPDX expression. If your project is unambiguously one thing, the single-base variants are tidier.

## Why not 0BSD or MIT-0

[0BSD](https://spdx.org/licenses/0BSD.html) and [MIT-0](https://spdx.org/licenses/MIT-0.html) are permissive licences without an attribution requirement. They are well suited to source code, but they are not public domain dedications. They grant broad permission; they do not state that the author has given up rights. For SDG that distinction is the whole point, so neither is offered as a base. For code where you want a licence rather than a dedication, both are sensible and both are accepted by Fedora.

## Why not WTFPL

The [WTFPL](https://spdx.org/licenses/WTFPL.html) is a non-serious licence, unsuitable for any project that expects to be taken seriously by downstream adopters, distributions, or legal reviewers. SDG aims at the opposite.

## A note on verification

The OSI's approval of the Unlicense, CC0's absence from the OSI list, and Fedora's 2022 decision on CC0 are all documented at the links below. Fedora's current status line for the Unlicense specifically has not been verified against [Fedora's allowed-licenses list](https://docs.fedoraproject.org/en-US/legal/allowed-licenses/); confirm it there before relying on it.

## References

- [Creative Commons: CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
- [Unlicense](https://unlicense.org/)
- [OSI: The Unlicense](https://opensource.org/license/unlicense)
- [LWN: Fedora to disallow CC0-licensed code](https://lwn.net/Articles/902410/)
- [Fedora: Allowed Licenses](https://docs.fedoraproject.org/en-US/legal/allowed-licenses/)
- [SPDX: CC0-1.0](https://spdx.org/licenses/CC0-1.0.html)
- [SPDX: Unlicense](https://spdx.org/licenses/Unlicense.html)
- [SPDX: 0BSD](https://spdx.org/licenses/0BSD.html)
- [SPDX: MIT-0](https://spdx.org/licenses/MIT-0.html)
- [SPDX: WTFPL](https://spdx.org/licenses/WTFPL.html)
- [Free Software Foundation: Various Licenses and Comments](https://www.gnu.org/licenses/license-list.en.html)
