# Contributing to SDG

This project is small and slow-moving by design. The legal core — the CC0 1.0 text — is fixed; the wrapper narrative is meant to last for a long time without revision; the docs and examples can grow as questions come up from adopters. Contributions are welcome within those bounds.

## What you can change

You can propose changes to the wrapper narrative in `LICENSE` (the paragraphs before and after the embedded CC0 text), to the documentation in `docs/` and `FAQ.md`, to the recipes in `HOW-TO-APPLY.md`, and to the examples in `examples/`. The README and CHANGELOG follow naturally from changes elsewhere; do not edit them in isolation.

The embedded CC0 1.0 text inside `LICENSE`, and the standalone `LICENSE.cc0.txt` file, are immutable. The only valid change is a re-fetch from the [canonical Creative Commons source](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt) — for example if Creative Commons publishes a corrigendum, or if a byte was corrupted at some point. Such a re-fetch is its own pull request and must be accompanied by evidence (a fresh `curl` transcript, a diff against the source) that the change is faithful to the canonical text.

## What changes are accepted

Patch-level changes — typo fixes, broken-link replacements, clarifying punctuation, formatting consistency — are accepted readily. Minor changes — adding a new docs/ page, adding a FAQ entry, adding an example for a new format — are accepted when they fill a gap an adopter has actually run into. Major changes — substantive edits to the wrapper narrative, changes to recommended-usage guidance, changes to the SDG name or branding — are accepted slowly and require strong justification.

If you are proposing a major change, open an issue first to discuss before sending a pull request.

## How to propose a change

Fork the repository, make your changes on a branch, open a pull request against `main`. Use a descriptive title (one-line imperative form) and a body that explains the motivation. If the change touches `docs/` or the wrapper, walk through the reasoning rather than just describing the diff.

Run a final self-check on what you are about to submit:

- Does this contain any marketing language? (Words like "elegant," "beautiful," "best-in-class.")
- Does this contain any unsupported factual claim? (Every factual claim in `docs/` should have a reference link.)
- Does this misuse Creative Commons trademarks? (CC logos, the CC0 mark image, or the words "Creative Commons" used as part of SDG branding.)
- Does this contain emoji?
- Is this English?

If the answer to any of the first four is yes, fix before submitting. The project is English-only.

## License of contributions

By contributing, you agree that your contribution is itself dedicated to the worldwide public domain under SDG (`SPDX-License-Identifier: CC0-1.0`). There is no Contributor License Agreement to sign; the SDG dedication on the project files applies to everything in the project, including contributions.

If for any reason you cannot dedicate your contribution to the public domain — for example because you do not hold the rights to all of it — say so in the pull request and we will work out how to handle it. Most often the answer is "do not submit that piece," but occasionally a `NOTICE` file entry can clear the perimeter for a specific included quote or fixture.

## Versioning

The wrapper narrative is versioned with SemVer. Patch (`1.0.x`) is for typo and clarification fixes that do not change meaning. Minor (`1.x.0`) is for additive changes — new docs pages, new FAQ entries, new examples, expanded recipes — that do not change the meaning of existing text. Major (`x.0.0`) is for substantive changes to the wrapper narrative or to recommended-usage guidance.

The CC0 1.0 text is not versioned by SDG. SDG only versions its own wrapper material.

Every change that ships gets a `CHANGELOG.md` entry. Pull requests should include the changelog edit in the same diff.
