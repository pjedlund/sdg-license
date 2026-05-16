# Patents and code

CC0 1.0 does not include a patent grant. This page explains why that matters for code, what Fedora decided in 2022, and what to use instead — or alongside — SDG when patent exposure is a real concern.

## What CC0 does not do

CC0 waives copyright and related or neighbouring rights. It does not waive patent rights. Section 4(a) of [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt) is explicit: "No trademark or patent rights held by Affirmer are waived, abandoned, surrendered, licensed or otherwise affected by this document."

For a poem, an essay, a painting, a dataset, or most cultural-heritage material, this is moot — patents do not typically attach to that kind of material. For source code, it is a meaningful gap. An author can dedicate code under CC0 while still holding patents that read on the same code, and downstream users who copy the code may be exposed to patent claims that the dedication does nothing to clear.

## The Fedora decision (2022)

In July 2022, the Fedora Project announced that it would no longer accept new packages licensed solely under CC0 for code. The decision was driven by the Fedora Legal team's assessment that the missing patent grant disqualifies CC0 as a license for source code. Existing CC0-licensed packages in Fedora were grandfathered, but the policy applies to anything added going forward.

This is not a theoretical concern: a major Linux distribution acted on it. The current Fedora documentation on allowed licenses reflects the decision: see [Fedora: Allowed Licenses](https://docs.fedoraproject.org/en-US/legal/allowed-licenses/). The original announcement was made on the [fedora-legal mailing list](https://lists.fedoraproject.org/archives/list/legal@lists.fedoraproject.org/).

## What to use for code

For source code, three options are commonly used and well-understood:

The first option is to use a permissive license outright. [MIT-0](https://spdx.org/licenses/MIT-0.html) is MIT with the attribution requirement removed. [0BSD](https://spdx.org/licenses/0BSD.html) is similar. Both are short, both are on the SPDX list, and both are accepted by Fedora and other distributions. They are not public-domain dedications, but they grant permissions broad enough to function similarly in practice.

The second option is [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt). Apache 2.0 includes an explicit patent grant (Section 3) and a defensive termination clause that protects users against patent claims by contributors. It is the standard choice when patent exposure is a real concern and remains a permissive license. The [SPDX entry](https://spdx.org/licenses/Apache-2.0.html) is `Apache-2.0`.

The third option is to dual-license: dedicate the work under SDG (CC0 1.0) and grant patent rights under Apache 2.0. This is uncommon and adds complexity. If you are tempted by it, the simpler answer is usually to use Apache 2.0 alone for code and reserve SDG for prose, documentation, and other non-code content.

## A practical recommendation

For mixed projects — code plus prose, documentation, and data — the cleanest pattern is to dedicate the code under Apache 2.0 (or MIT-0) and the non-code content under SDG. Each layer of the project gets the license that best fits it, and the patent gap in CC0 is not exposed to code.

## References

- [Creative Commons: CC0 1.0 Universal (legal code)](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt)
- [Fedora: Allowed Licenses](https://docs.fedoraproject.org/en-US/legal/allowed-licenses/)
- [Fedora legal mailing list archives](https://lists.fedoraproject.org/archives/list/legal@lists.fedoraproject.org/)
- [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt)
- [SPDX: Apache-2.0](https://spdx.org/licenses/Apache-2.0.html)
- [SPDX: MIT-0](https://spdx.org/licenses/MIT-0.html)
- [SPDX: 0BSD](https://spdx.org/licenses/0BSD.html)
