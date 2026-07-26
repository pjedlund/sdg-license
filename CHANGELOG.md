# Changelog

All notable changes to the SDG dedication statement and surrounding documentation are recorded here. The operative legal texts — CC0 1.0 and the Unlicense — are immutable and are not versioned by SDG; if `LICENSE.cc0.txt` or `LICENSE.unlicense.txt` ever changes, the change can only be a re-fetch from a canonical source and is recorded as such.

This project follows [Semantic Versioning](https://semver.org/) for the statement. Patch changes are typo and clarification fixes. Minor changes are additive docs and examples. Major changes are substantive edits to the statement or to recommended-usage guidance.

## [2.0.0-beta.2] — 2026-07-26

Pre-release for review. The statement text is not yet frozen and may change before 2.0.0.

### Changed

- The statement no longer presents Bach and Tolstoy as equal predecessors. Bach is named as the source of the letters; Tolstoy, who actually renounced copyright, is named as the precedent the dedication follows. Bach wrote S.D.G. at the end of contracted work for a church that employed him, and renounced nothing by doing so.
- The statement claims the words in their strict sense — glory to God alone leaving none over for any institution, office, or author — rather than resting on an interpretation of what Bach personally believed by writing them.

### Added

- `docs/the-name.md`, carrying the references for the historical claims the statement makes. Records that S.D.G. was a common formula rather than Bach's invention (Handel, Buxtehude, Graupner used it; Haydn used *Laus Deo*), sets out the reclaiming argument, and gives the Orthodox Synod's 1901 grounds against Tolstoy.

### Fixed

- The 1.0.0 and beta.1 statements asserted that Bach wrote S.D.G. "to say that the music was not his." That is an interpretive claim about his convictions, unsupported by the sources this project could reach, and weaker than it appears once the formula is known to have been conventional. Removed.
- `docs/the-name.md` records two claims this project has *not* verified: that Bach inscribed S.D.G. on the *Coffee Cantata*, and the specific mechanism by which Tolstoy made his renunciation public. Both were being repeated without a source.

## [2.0.0-beta.1] — 2026-07-26

Pre-release for review. The statement text is not yet frozen and may change before 2.0.0.

### Added

- Choice of legal base. Three variants in `variants/`, sharing one statement and differing only in the operative text beneath it: `SDG-CC0.txt` (`CC0-1.0`), `SDG-Unlicense.txt` (`Unlicense`), and `SDG-Either.txt` (`CC0-1.0 OR Unlicense`).
- `LICENSE.unlicense.txt`, the Unlicense verbatim, taken from the SPDX license-list-data canonical text and re-wrapped to match the file style of `LICENSE.cc0.txt`.
- `docs/choosing-a-base.md`, replacing `docs/why-cc0.md`. Sets out the content-versus-code split: CC0 carries a moral-rights fallback, database rights, and a construction clause for jurisdictions that do not recognise waiver; the Unlicense is OSI-approved and carries no express patent disclaimer.

### Changed

- The dedication now leads with the statement and places the operative legal text below a rule, under an `OPERATIVE LEGAL TEXT` heading. The statement is the document; the legal text is the mechanism.
- The statement is rewritten in declarative voice throughout and grants nothing. Only the base text is operative.
- `LICENSE` is now the `SDG-Either` variant, so this project uses the same default it recommends.
- The project's own SPDX identifier is now `CC0-1.0 OR Unlicense`.
- `docs/moral-rights.md` notes that the Unlicense has no fallback layer, and that moral rights are not something a downstream recipient can clear by relicensing.
- `docs/patents-and-code.md` covers both bases, and explains why the freedom to relicense an SDG work does not address patent exposure — relicensing governs the recipient's copyright position, not the author's patent claim.
- `README.md` leads with the dedication rather than with a description of the wrapper.
- Repository URLs in `HOW-TO-APPLY.md` and `examples/` corrected from `pjedlund/sdg-license` to `pjedlund/soli-deo-gloria-dedication`.

### Removed

- The "Who SDG is not for" section of `README.md`. The code half is now answered by choosing a base rather than by a warning; the moral-rights half lives in `docs/moral-rights.md`, where it belongs.
- The trailing plain-language no-warranty paragraph. Both bases already disclaim warranties, so it added length without effect.
- The recommendation to tag files `CC0-1.0 AND LicenseRef-SDG`. SDG imposes no obligations, so `AND` asserts a conjunction that does not exist and gives compliance tooling an unknown component to flag. Use the base identifier alone. `docs/trademark.md` covers the alternatives for anyone who needs the statement tracked.

### Fixed

- The 1.0.0 statement contained a second operative grant: a waiver and a fallback licence that omitted CC0's non-transferable, non-sublicensable, and non-exclusive limits, and so read broader than the CC0 text it introduced. The two paragraphs also disagreed with each other on scope, one covering "copyright and related or neighbouring rights" and the other only "all rights under copyright". Both are gone.

## [1.0.0] — 2026-05-16

### Added

- Initial release of the SDG Public Domain Dedication as a standalone project.
- Narrative wrapper around CC0 1.0 verbatim, with Bach and Tolstoy framing carried over from the inline version originally written for [tolstoy.life](https://tolstoy.life/).
- `LICENSE` (wrapper + CC0 1.0 verbatim + plain-English no-warranty paragraph) and `LICENSE.cc0.txt` (CC0 1.0 standalone).
- Documentation in `docs/`: `why-cc0.md`, `moral-rights.md`, `patents-and-code.md`, `trademark.md`.
- `README.md`, `FAQ.md`, `HOW-TO-APPLY.md`, `CONTRIBUTING.md`.
- Copy-paste examples in `examples/`: `repo-LICENSE.md`, `single-file-header.md`, `book-colophon.md`, `website-footer.md`.
