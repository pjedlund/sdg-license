# Frequently Asked Questions

## Why not just use CC0 or the Unlicense directly?

You can, and for many adopters that is the right answer. SDG exists for people who want the dedication to say *why* — that the work was never theirs to own — rather than opening with a legal instrument. The legal effect is identical, because the operative text is CC0 1.0 or the Unlicense verbatim. If you do not want the statement, use the base directly.

## Which base should I choose?

Content takes `SDG-CC0`. Code takes `SDG-Unlicense`. Anything mixed, or if you would rather not decide for the recipient, takes `SDG-Either`. [docs/choosing-a-base.md](docs/choosing-a-base.md) explains why the split falls where it does.

## Can I use SDG for code?

Yes — that is what `SDG-Unlicense` is for. The Unlicense is [OSI-approved](https://opensource.org/license/unlicense) and contains no patent clause, so it avoids the problem that got CC0 barred from Fedora for code in 2022.

It does not *solve* patents, though. Silence is not a grant: an author holding a patent that reads on their own Unlicensed code has not licensed it to you. If patent exposure is a real concern in your field, use [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt) for the code and keep SDG for the prose. See [docs/patents-and-code.md](docs/patents-and-code.md).

## If anyone can relicense the work, doesn't that solve the patent problem?

No, and this is a common misreading. Anyone can take an SDG work and redistribute it under any terms, including proprietary ones — that freedom is real and complete. But it is a *copyright* freedom, and patents are a separate axis. Your licence choice governs your copyright position; it has no effect on the original author's patent claim against you. The same is true of moral rights, which stay with the original author no matter who relicenses the work downstream.

## Does SDG work in Germany, France, Italy, Spain?

As well as any public domain dedication can, which is the most anyone can honestly claim. Civil-law systems treat moral rights as inalienable, and no dedication can fully waive them. CC0's three-layer construction — waiver, then fallback licence, then a broadest-permissible-construction clause — is designed for exactly this case and is the strongest available tool. The Unlicense has no such construction, which is why `SDG-CC0` or `SDG-Either` is the better choice if your audience is in a civil-law jurisdiction. See [docs/moral-rights.md](docs/moral-rights.md).

## Can I modify the SDG statement?

Yes, but you cannot call the result "SDG" if the change alters its meaning. The statement is itself dedicated under SDG, so the bytes are free to reuse and adapt. The constraint is naming, not copying: a materially different statement should carry a different name so downstream adopters are not misled. The CC0 1.0 and Unlicense texts must remain verbatim under any circumstance. See [docs/trademark.md](docs/trademark.md).

## What is the SPDX identifier?

It depends on the variant: `CC0-1.0` for `SDG-CC0`, `Unlicense` for `SDG-Unlicense`, and `CC0-1.0 OR Unlicense` for `SDG-Either`.

SDG has no identifier of its own and does not need one — it grants nothing, so the base identifier is the complete legal position of the file. Do not write `CC0-1.0 AND LicenseRef-SDG`. SDG 1.0 suggested it; the advice is withdrawn, because `AND` asserts obligations under two licences and SDG imposes none. [docs/trademark.md](docs/trademark.md) covers the correct alternatives if you genuinely need tooling to record the statement.

## Can I use the Creative Commons or CC0 logo on my SDG-dedicated work?

Not as part of SDG branding. Creative Commons has a [trademark and branding policy](https://creativecommons.org/policies/) restricting the CC logo, the CC0 mark image, and the words "Creative Commons" to works under unmodified Creative Commons tools. SDG is not a Creative Commons product, and presenting it with CC branding would misrepresent the relationship. Plain-text references such as "CC0 1.0", used to identify the operative legal text, are fine and necessary.

If you wish to follow Creative Commons' own attribution conventions for the CC0 layer — such as a "No Rights Reserved" notice — you may. That is separate from SDG branding.

## Will my SDG-dedicated work be accepted by Fedora, Debian, or other distributions?

For non-code material, generally yes. Both CC0 and the Unlicense are on the SPDX list and on most distributions' allowed-licence lists.

For code, use `SDG-Unlicense` rather than `SDG-CC0`: Fedora has not accepted new CC0-licensed code packages since 2022. If you are publishing code intended for broad distribution packaging, confirm the current status of your chosen base against the distribution's own list — [Fedora's is here](https://docs.fedoraproject.org/en-US/legal/allowed-licenses/) — and consider Apache 2.0 if patents are in play.

## Is SDG endorsed by Creative Commons, or by the Unlicense authors?

No. SDG is independent. It reproduces CC0 1.0 and the Unlicense verbatim as operative legal texts, but neither Creative Commons nor anyone associated with the Unlicense endorses SDG or is responsible for it.

## Where did SDG come from?

SDG was first written for and adopted by the [tolstoy.life](https://tolstoy.life/) project. The Bach and Tolstoy framing reflects that origin: Tolstoy renounced copyright on his later writings, and the statement draws an honest line from that tradition to the present. SDG is now maintained as a neutral, standalone project so any third party can adopt it without inheriting tolstoy.life branding. Tolstoy is the first adopter, not the home.

## Can I dedicate work I did not create under SDG?

No. Only the actual rights-holders can dedicate a work to the public domain. If you compile, edit, or curate a collection, you can dedicate your own editorial and structural contributions under SDG while pointing readers at the licences of the underlying material. Make the boundary clear in your own `LICENSE` or `NOTICE` file; this is how nearly all heritage and archive projects handle it.
