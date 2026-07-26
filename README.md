# Soli Deo Gloria — A Public Domain Dedication

<img src="logo/SDG-logo.webp" width="100%" alt="Calligraphic monogram of the letters S, D, and G, intertwined with ornate flourishes and a sweeping underline.">

> **Version 2.0.0-beta.2.** The dedication statement is under review and may still change before 2.0.0 is released. If you need text that will not move under you, adopt the 1.0.0 text from the [`main`](https://github.com/pjedlund/soli-deo-gloria-dedication/tree/main) branch and switch once 2.0.0 ships.

All glory to God.

Everything that exists was created by God. Nothing any of us makes is made from nothing: we work with what we were given, with hands and minds we did not make, in a world we did not build. To stamp our name on the result and call it property is to claim what was never ours to claim.

SDG says that plainly, and then does the legal work required to make the renunciation take effect. The law has no way to record "this was never mine," so SDG uses the nearest instrument it provides: an established public domain dedication, reproduced verbatim beneath the statement. The statement is the point. The legal text is the mechanism, and it is kept below the line where a mechanism belongs.

The letters come from Bach's manuscripts, where they were one of the conventional formulas of a church trade. They are taken here in their strict sense: glory to God alone leaves none over for any institution, any office, or any author. [docs/the-name.md](docs/the-name.md) sets out the history and the sources.

## Choosing a base

SDG comes in three variants. They share the same statement and differ only in which dedication does the operative work.

| File | SPDX identifier | Suited to |
| --- | --- | --- |
| [`variants/SDG-Either.txt`](variants/SDG-Either.txt) | `CC0-1.0 OR Unlicense` | Most projects. The recipient relies on whichever works for them. |
| [`variants/SDG-CC0.txt`](variants/SDG-CC0.txt) | `CC0-1.0` | Prose, art, scholarship, data, cultural-heritage material. |
| [`variants/SDG-Unlicense.txt`](variants/SDG-Unlicense.txt) | `Unlicense` | Source code. |

The split is not a matter of taste. CC0 carries a moral-rights fallback, database rights, and a construction clause built for jurisdictions that do not recognise outright waiver, which makes it the stronger instrument for content. The Unlicense is OSI-approved and carries no express patent disclaimer, which makes it the easier instrument for code. Neither grants patent rights. [docs/choosing-a-base.md](docs/choosing-a-base.md) sets out the reasoning; [docs/patents-and-code.md](docs/patents-and-code.md) and [docs/moral-rights.md](docs/moral-rights.md) cover the two places where every public domain dedication reaches its limit.

If you would rather not decide, use `SDG-Either.txt`. Declining to impose one legal regime on the person receiving the work is consistent with the rest of the dedication.

## How to apply SDG

See [HOW-TO-APPLY.md](HOW-TO-APPLY.md) for copy-paste recipes covering whole repositories, single source files, books and EPUBs, websites, and datasets. Common questions are answered in [FAQ.md](FAQ.md).

## Origin

SDG was first written for and adopted by the [tolstoy.life](https://tolstoy.life/) project, where the Bach and Tolstoy framing was a natural fit for an open scholarship project rooted in Tolstoy's own renunciation of copyright. SDG is now maintained as a neutral, standalone project so any third party can adopt it without inheriting tolstoy.life branding. Tolstoy is the first adopter and the origin of the statement, not the home of the project.

## Reusing SDG in your own project

Anyone may adopt SDG by copying one of the files in `variants/` into the root of their own project as `LICENSE`. The name "SDG" and the statement may be reused as-is. If you modify the statement in ways that change its meaning, you must not call your modified version "SDG" or any close variant — see [docs/trademark.md](docs/trademark.md). The CC0 1.0 and Unlicense texts must remain verbatim; do not edit them. To propose changes to the statement, docs, or examples, see [CONTRIBUTING.md](CONTRIBUTING.md).

## License of this project itself

The files of the SDG project — this README, the documentation in `docs/`, the examples in `examples/`, the [FAQ](FAQ.md), the [contributing guide](CONTRIBUTING.md), and the [changelog](CHANGELOG.md) — are themselves dedicated under SDG, using the `SDG-Either` variant. `SPDX-License-Identifier: CC0-1.0 OR Unlicense`.
