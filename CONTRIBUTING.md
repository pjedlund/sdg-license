# Contributing to SDG

This project is small and slow-moving by design. Contributions to the docs and examples are welcome; the statement and the legal texts are deliberately hard to move.

## What you can change

The documentation in `docs/` and `FAQ.md`, the recipes in `HOW-TO-APPLY.md`, and the examples in `examples/`. README and CHANGELOG follow from changes elsewhere rather than being edited in isolation.

Patch changes — typos, broken links, punctuation, formatting — are accepted readily. Additive changes — a new docs page, a new FAQ entry, an example for a format not yet covered — are accepted when they fill a gap an adopter actually ran into. Changes to the statement or to recommended-usage guidance need an issue first.

## What is frozen

**The legal texts.** `LICENSE.cc0.txt`, `LICENSE.unlicense.txt`, and the copies embedded in `variants/` are immutable. The only valid change is a re-fetch from a canonical source — [Creative Commons](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt) for CC0, [unlicense.org](https://unlicense.org/UNLICENSE) or [SPDX license-list-data](https://github.com/spdx/license-list-data) for the Unlicense — and only if a corrigendum is published upstream or a byte has been corrupted. Such a re-fetch is its own pull request and must carry evidence that the change is faithful: a fetch transcript with a checksum, and a diff against the source.

**Released statement text.** Once a version of the statement ships, its bytes do not change. Adopters copy the statement into their own `LICENSE` files, so if it drifts, "SDG" names different documents in different projects and the label stops meaning anything. Revisions ship as a new version — `SDG 3.0` — alongside the old one, not as edits to it. Typo fixes that do not alter meaning are the only exception, and they ship as a patch release.

This does not apply to the current `2.0.0-beta.1`, which is explicitly under review and expected to change before 2.0.0 is released.

## How to propose a change

Fork, branch, open a pull request against `main`. Descriptive title in one-line imperative form; a body that explains the motivation. If the change touches `docs/` or the statement, walk through the reasoning rather than describing the diff.

Self-check before submitting:

- Does this contain marketing language? (Words like "elegant," "beautiful," "best-in-class.")
- Does this contain an unsupported factual claim? (Every factual claim in `docs/` should have a reference link.)
- Does this misuse Creative Commons trademarks? (CC logos, the CC0 mark image, or the words "Creative Commons" used as SDG branding.)
- Does this contain emoji?
- Is this English?

Fix anything that answers yes to the first four. The project is English-only.

## Licence of contributions

By contributing, you agree that your contribution is dedicated to the worldwide public domain under SDG (`SPDX-License-Identifier: CC0-1.0 OR Unlicense`). There is no Contributor Licence Agreement to sign.

This matters more here than in most projects. A dedication project that cannot account for the provenance of its own text has undercut the thing it publishes. If you cannot dedicate your contribution — because you do not hold the rights to all of it — say so in the pull request. Usually the answer is "do not submit that piece," but occasionally a `NOTICE` entry can clear the perimeter for a specific quote or fixture.

## Versioning

The statement follows SemVer. Patch is for typo and clarification fixes that do not change meaning. Minor is for additive docs, FAQ entries, examples, and expanded recipes. Major is for substantive changes to the statement or to recommended-usage guidance.

The CC0 1.0 and Unlicense texts are not versioned by SDG; SDG versions only its own material.

Every shipped change gets a `CHANGELOG.md` entry, in the same pull request as the change itself.
