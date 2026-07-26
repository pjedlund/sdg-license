# Patents and code

Neither base SDG offers grants patent rights. CC0 1.0 expressly reserves them; the Unlicense is silent on them. This page explains what that means for code, what Fedora decided in 2022, and what to use when patent exposure is a real concern.

## The one thing relicensing does not fix

A common assumption is that because an SDG-dedicated work can be taken and redistributed under any terms at all, including proprietary ones, downstream users are covered. That freedom is real, and it is complete — but it is a *copyright* freedom, and patents are a separate axis.

If an author dedicates code under SDG while holding a patent that reads on the same code, a downstream user who copies that code may be sued for practising the patent. The user's own licence choice governs their copyright position; it has no effect on the author's patent claim. Relicensing cannot clear a right that never travelled with the copyright grant in the first place. This is why the patent gap matters despite the dedication being otherwise as permissive as a document can be.

## What CC0 does not do

Section 4(a) of [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt) is explicit: "No trademark or patent rights held by Affirmer are waived, abandoned, surrendered, licensed or otherwise affected by this document."

For a poem, an essay, a painting, a dataset, or most cultural-heritage material, this is moot — patents do not typically attach to that kind of material. For source code it is a meaningful gap, and an express reservation rather than an oversight.

## What the Unlicense does not do

The Unlicense contains no patent clause. It does not reserve patent rights the way CC0 does, which is enough to have kept it clear of CC0's institutional problems — the [OSI approved it in June 2020](https://opensource.org/license/unlicense), and Fedora's 2022 decision was directed at CC0 specifically.

But silence is not a grant. An author who holds a patent reading on their own Unlicensed code has not licensed it to you, and no court has held that the Unlicense's general permission language operates as an implied patent licence. If patent exposure is a genuine concern for your project, the Unlicense improves your position relative to CC0 without resolving it.

## The Fedora decision (2022)

In July 2022 the Fedora Project announced it would no longer accept new packages licensed solely under CC0 for code, on the Fedora Legal team's assessment that the missing patent grant disqualifies CC0 as a licence for source code. Existing packages were grandfathered; the policy applies going forward. CC0 remains allowed for content such as artwork. See [LWN's report](https://lwn.net/Articles/902410/) and the current [Fedora: Allowed Licenses](https://docs.fedoraproject.org/en-US/legal/allowed-licenses/) documentation.

Fedora's current status line for the Unlicense has not been independently verified for this document. Check the allowed-licenses list before relying on it.

## What to use when patents actually matter

If your project is in a space where patent claims are plausible — codecs, cryptography, compression, protocols, anything adjacent to a standards body — no public domain dedication is the right tool, SDG included.

[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt) includes an express patent grant (Section 3) and a defensive termination clause that protects users against patent claims by contributors. It is the standard answer, it remains permissive, and its SPDX identifier is `Apache-2.0`. Use it outright for the code.

[MIT-0](https://spdx.org/licenses/MIT-0.html) and [0BSD](https://spdx.org/licenses/0BSD.html) are shorter permissive licences without attribution requirements. Neither has an express patent grant, so they sit closer to the Unlicense than to Apache 2.0 on this axis, but both are short, on the SPDX list, and accepted by Fedora.

## A practical recommendation

For most projects, `SDG-Unlicense` for the code and `SDG-CC0` for the prose, documentation, and data is the right split — or `SDG-Either` across the whole repository if you would rather not maintain the boundary. That covers the ordinary case, where patent exposure is theoretical.

For the minority of projects where patent exposure is real, dedicate the content under SDG and license the code under Apache 2.0. Do not try to layer a patent grant onto a dedication; the two do different jobs and mixing them produces a document nobody can reason about.

## References

- [Creative Commons: CC0 1.0 Universal (legal code)](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt)
- [Unlicense](https://unlicense.org/)
- [OSI: The Unlicense](https://opensource.org/license/unlicense)
- [LWN: Fedora to disallow CC0-licensed code](https://lwn.net/Articles/902410/)
- [Fedora: Allowed Licenses](https://docs.fedoraproject.org/en-US/legal/allowed-licenses/)
- [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt)
- [SPDX: Apache-2.0](https://spdx.org/licenses/Apache-2.0.html)
- [SPDX: MIT-0](https://spdx.org/licenses/MIT-0.html)
- [SPDX: 0BSD](https://spdx.org/licenses/0BSD.html)
