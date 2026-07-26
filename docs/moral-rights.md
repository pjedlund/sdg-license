# Moral rights and the limits of any public domain dedication

No public domain dedication can fully waive moral rights in jurisdictions where those rights are treated as inalienable. This is true of both bases SDG offers, and of every other such instrument. This page explains what moral rights are, where they apply, what CC0's fallback construction does about them, and why the Unlicense does nothing about them at all.

## What moral rights are

Moral rights are personal rights of an author, separate from the economic rights (reproduction, distribution, performance, etc.) that copyright more commonly concerns. They typically include the right of attribution — the right to be named as the author of a work — and the right of integrity — the right to object to modifications that distort or damage the work in ways that would harm the author's reputation. Some jurisdictions also recognise a right of disclosure (deciding when a work is first made public) and a right of withdrawal.

Moral rights are about the author as a person, not about money. They cannot be assigned to a publisher, and in many places they cannot be sold or given away by the author themselves.

## The international baseline: Berne Convention Article 6bis

The international treaty floor for moral rights is [Article 6bis of the Berne Convention](https://www.wipo.int/wipolex/en/text/283698), which requires member states to recognise at least the rights of attribution and integrity, independent of the author's economic rights and surviving even after those economic rights have been transferred. The Berne Convention has more than 180 member states, so 6bis is close to universal — but the treaty leaves the details of how to implement those rights to each member.

## Civil-law versus common-law approaches

How a jurisdiction implements Article 6bis varies a great deal. Civil-law jurisdictions — including France, Germany, Italy, Spain, much of Latin America, and many others — generally treat moral rights as inalienable. An author cannot waive them by contract, by dedication, or by any other means. The rights stay with the author (and pass to heirs) regardless of what document the author signs.

Common-law jurisdictions handle moral rights more narrowly. The United States, for example, recognises moral rights only for a limited category of visual art under the Visual Artists Rights Act. The United Kingdom and several Commonwealth jurisdictions allow authors to waive their moral rights in writing.

For an introduction to the civil-/common-law split on this point, see the [WIPO Magazine article on moral rights](https://www.wipo.int/wipo_magazine/en/2011/03/article_0001.html) and the [Creative Commons CC0 FAQ on moral rights](https://creativecommons.org/share-your-work/public-domain/cc0/).

## What CC0 does

CC0's first layer — the waiver — explicitly covers moral rights "to the greatest extent permitted by, but not in contravention of, applicable law." Where moral rights cannot be waived, CC0's second layer applies: the author grants every person an unconditional, irrevocable license to exercise those rights as far as the law allows. The third layer instructs courts to interpret the dedication as broadly as the law permits.

The honest summary: CC0 does not fully waive moral rights in jurisdictions where they are inalienable, because nothing can. Its fallback construction is designed to come as close as the law allows, and there is no stronger tool currently available.

## What the Unlicense does

Nothing. The Unlicense makes no mention of moral rights, related rights, or neighbouring rights, and it provides no fallback for jurisdictions that do not recognise an outright dedication. Where CC0 has three layers, the Unlicense has one, and where that one layer is ineffective there is nothing beneath it.

This is the single strongest reason to prefer `SDG-CC0` over `SDG-Unlicense` for anything that is not code, and a good reason to prefer `SDG-Either` when you want the code advantages of the Unlicense without giving up CC0's construction for recipients who need it. See [choosing-a-base.md](choosing-a-base.md).

## What this means for an adopter

If you publish under SDG and a reader in a civil-law jurisdiction sues you for breaching your right of integrity — for example because they distorted your work in a way that damages your reputation — your SDG dedication will not bar that claim. You retain those rights even after dedicating the work, because the law does not permit you to give them up.

Note also that this is not something a downstream recipient can fix by relicensing. Moral rights stay with the original author; a later party redistributing the work under different terms does not extinguish them, and cannot.

For most adopters this is acceptable, because moral-rights claims of this kind are rare and concern only egregious misuses. If your project specifically requires that downstream users be insulated from moral-rights claims, no public domain dedication will achieve that, and you should consult a lawyer about other arrangements.

## References

- [Berne Convention, Article 6bis (WIPO consolidated text)](https://www.wipo.int/wipolex/en/text/283698)
- [Creative Commons: CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
- [Creative Commons: Share your work / public domain / CC0 FAQ](https://creativecommons.org/share-your-work/public-domain/cc0/)
- [WIPO Magazine: The Soul of the Author (moral rights overview)](https://www.wipo.int/wipo_magazine/en/2011/03/article_0001.html)
