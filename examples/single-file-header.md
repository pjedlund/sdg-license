# Example: SPDX header for a single source file

Add the SPDX identifier at or near the top of the file, in the comment syntax of the file's language. Use the identifier matching the variant you adopted:

```
SPDX-License-Identifier: CC0-1.0
SPDX-License-Identifier: Unlicense
SPDX-License-Identifier: CC0-1.0 OR Unlicense
```

That is the complete legal position of the file. Do not append `AND LicenseRef-SDG`: SDG imposes no obligations, so `AND` asserts a conjunction that does not exist and hands compliance tooling an unknown component to flag. SDG 1.0 recommended that form and the advice is withdrawn — see [trademark.md](../docs/trademark.md) for the alternatives if you genuinely need the statement tracked.

Source files usually take `Unlicense`; see [choosing-a-base.md](../docs/choosing-a-base.md). The examples below use it.

## Shell, Python, Ruby, Perl, YAML, Dockerfile

```python
# SPDX-License-Identifier: Unlicense
```

## C, C++, Java, JavaScript, TypeScript, Go, Rust, Swift, Kotlin

```c
// SPDX-License-Identifier: Unlicense
```

Or, for block-comment styles:

```c
/* SPDX-License-Identifier: Unlicense */
```

## HTML, XML, Markdown

```html
<!-- SPDX-License-Identifier: Unlicense -->
```

## CSS

```css
/* SPDX-License-Identifier: Unlicense */
```

## Lisp, Scheme, Clojure

```lisp
;; SPDX-License-Identifier: Unlicense
```

## SQL, Lua, Haskell (line comments)

```sql
-- SPDX-License-Identifier: Unlicense
```

The header should appear within the first few lines of the file, since licence scanners often read only a leading window.
