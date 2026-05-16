# Example: SPDX header for a single source file

Add the SPDX identifier at or near the top of the file, in the comment syntax of the file's language. The minimum form is:

```
SPDX-License-Identifier: CC0-1.0
```

The optional wrapper-aware form, which lets SBOM and compliance tooling track the SDG wrapper separately, is:

```
SPDX-License-Identifier: CC0-1.0 AND LicenseRef-SDG
```

Common comment syntaxes:

## Shell, Python, Ruby, Perl, YAML, Dockerfile

```python
# SPDX-License-Identifier: CC0-1.0
```

## C, C++, Java, JavaScript, TypeScript, Go, Rust, Swift, Kotlin

```c
// SPDX-License-Identifier: CC0-1.0
```

Or, for block-comment styles:

```c
/* SPDX-License-Identifier: CC0-1.0 */
```

## HTML, XML, Markdown

```html
<!-- SPDX-License-Identifier: CC0-1.0 -->
```

## CSS

```css
/* SPDX-License-Identifier: CC0-1.0 */
```

## Lisp, Scheme, Clojure

```lisp
;; SPDX-License-Identifier: CC0-1.0
```

## SQL, Lua, Haskell (line comments)

```sql
-- SPDX-License-Identifier: CC0-1.0
```

The header should appear within the first few lines of the file so that license scanners (which often only read a leading window) can find it.
