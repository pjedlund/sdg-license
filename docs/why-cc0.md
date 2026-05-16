# Why SDG wraps CC0

SDG is a wrapper. Its operative legal text is the [Creative Commons CC0 1.0 Universal Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/), reproduced verbatim. This document explains why CC0 was chosen as the operative layer and why other public-domain-flavoured tools were not.

## CC0's construction

CC0 is built in three layers, each falling back to the next when the prior one is not legally available in a given jurisdiction. The full text is in `LICENSE.cc0.txt`, but in summary:

The first layer is a worldwide waiver of copyright and related or neighbouring rights. Where national law permits an author to renounce these rights outright, the waiver does so. The second layer is a public-license fallback: where the waiver is not legally effective, the author instead grants every person an unconditional, royalty-free, irrevocable license to exercise all those rights. The third layer is a construction clause directing courts to read the dedication as broadly as the law permits.

This three-layer construction is the reason CC0 is widely regarded as the strongest available tool for a worldwide public-domain dedication. It is the only such tool published by a major standards body, and it is on the [SPDX license list](https://spdx.org/licenses/) as `CC0-1.0`.

## Why not Unlicense

The [Unlicense](https://spdx.org/licenses/Unlicense.html) is a short text aiming at the same goal. It has been criticised on several grounds: its language is closer to a permissive license than a dedication, it makes no provision for jurisdictions that do not recognise waiver of copyright, and the Free Software Foundation discourages its use in favour of CC0 ([FSF: Various Licenses and Comments](https://www.gnu.org/licenses/license-list.en.html#Unlicense)). It is not a sound base for a wrapper that aims to be defensible internationally.

## Why not 0BSD or MIT-0

[0BSD](https://spdx.org/licenses/0BSD.html) and [MIT-0](https://spdx.org/licenses/MIT-0.html) are permissive licenses without an attribution requirement. They are well-suited to source code — particularly because permissive licenses generally include or are paired with permissive treatment of patent claims — but they are not public-domain dedications. They are licenses that grant broad permission, not statements that the author has given up rights. For prose, art, and cultural-heritage work, the distinction matters: many adopters specifically want the language of dedication rather than the language of permission.

For code, however, 0BSD and MIT-0 are sensible alternatives to CC0; see [patents-and-code.md](patents-and-code.md).

## Why not WTFPL

The [WTFPL](https://spdx.org/licenses/WTFPL.html) is a non-serious license. It is unsuitable for any project that expects to be taken seriously by downstream adopters, package distributions, or legal reviewers. SDG aims to be the opposite — a serious dedication with framing — so WTFPL was never a candidate.

## Conclusion

CC0 is the strongest available public-domain dedication for prose, art, data, and cultural-heritage work, and the only one with broad institutional recognition. SDG keeps CC0 as the operative text and adds narrative framing on top.

## References

- [Creative Commons: CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
- [SPDX license list](https://spdx.org/licenses/)
- [SPDX: CC0-1.0](https://spdx.org/licenses/CC0-1.0.html)
- [SPDX: Unlicense](https://spdx.org/licenses/Unlicense.html)
- [SPDX: 0BSD](https://spdx.org/licenses/0BSD.html)
- [SPDX: MIT-0](https://spdx.org/licenses/MIT-0.html)
- [SPDX: WTFPL](https://spdx.org/licenses/WTFPL.html)
- [Free Software Foundation: Various Licenses and Comments (Unlicense entry)](https://www.gnu.org/licenses/license-list.en.html#Unlicense)
