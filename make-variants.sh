#!/usr/bin/env bash
#
# Regenerate the SDG variants from their sources.
#
# Sources (edit these):
#   statement.txt            the dedication statement — the only authored text
#   LICENSE.cc0.txt          CC0 1.0 verbatim, immutable
#   LICENSE.unlicense.txt    the Unlicense verbatim, immutable
#
# Generated (do not edit by hand — this script overwrites them):
#   variants/SDG-CC0.txt
#   variants/SDG-Unlicense.txt
#   variants/SDG-Either.txt
#   LICENSE                  a copy of variants/SDG-Either.txt
#
# Usage:
#   ./make-variants.sh           regenerate, then verify
#   ./make-variants.sh --check   verify only; exits non-zero if anything is
#                                stale or if an embedded legal text has drifted
#
# The statement lives in four files once generated. Editing one by hand
# desyncs the rest silently, which is what this script exists to prevent.

set -euo pipefail

cd "$(dirname "$0")"

CHECK_ONLY=0
case "${1:-}" in
    --check) CHECK_ONLY=1 ;;
    "")      ;;
    *)       echo "usage: $0 [--check]" >&2; exit 2 ;;
esac

STATEMENT="statement.txt"
CC0="LICENSE.cc0.txt"
UNLICENSE="LICENSE.unlicense.txt"
RULE="----------------------------------------------------------------------"

for f in "$STATEMENT" "$CC0" "$UNLICENSE"; do
    [ -f "$f" ] || { echo "missing source: $f" >&2; exit 1; }
done

# CONTRIBUTING declares the two legal texts immutable: the only valid change
# is a re-fetch from a canonical source, submitted as its own pull request
# with evidence. Pinning them here makes an accidental edit fail loudly. A
# deliberate re-fetch updates these lines in the same commit, and the diff
# is then part of the evidence.
#
# LICENSE.unlicense.txt was taken from the SPDX license-list-data text. On
# 27 July 2026 it was diffed against unlicense.org's own UNLICENSE and found
# word-identical, with one difference: the closing reference reads
# <http://unlicense.org/> in the SPDX text and <https://unlicense.org/> on
# unlicense.org. SPDX is the authority for the identifier this project uses,
# so the file follows SPDX and the pin below stands.
CC0_SHA256="a2010f343487d3f7618affe54f789f5487602331c0a8d03f49e9a7c547cf0499"
UNLICENSE_SHA256="7e12e5df4bae12cb21581ba157ced20e1986a0508dd10d0e8a4ab9a4cf94e85c"

sha256_of() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$1" | cut -d' ' -f1
    else
        shasum -a 256 "$1" | cut -d' ' -f1   # macOS
    fi
}

check_pinned() {
    local file="$1" expected="$2" actual
    actual="$(sha256_of "$file")"
    if [ "$actual" != "$expected" ]; then
        echo "FAIL: $file has been modified." >&2
        echo "  expected sha256 $expected" >&2
        echo "  actual   sha256 $actual" >&2
        echo "This file is immutable. If this is a deliberate re-fetch from" >&2
        echo "the canonical source, update the pin in $0 in the same commit." >&2
        exit 1
    fi
}

check_pinned "$CC0" "$CC0_SHA256"
check_pinned "$UNLICENSE" "$UNLICENSE_SHA256"

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

# statement.txt holds one line per paragraph so the dedication can be edited
# as prose, without rewrapping by hand every time a word changes. The
# published files want a hard wrap, so it happens here instead.
#
# fold counts bytes, not characters, so a line carrying the em dash wraps a
# couple of columns short of $WRAP. That is cosmetic, and it is the same on
# every platform, which is what matters when the result is committed. If a
# fold somewhere ever did disagree, --check reports the file as STALE rather
# than letting the difference through quietly.
WRAP=74
statement_wrapped() {
    fold -s -w "$WRAP" "$STATEMENT" | sed 's/ *$//'
}

# header <spdx-id> <description line>...
header() {
    local spdx="$1"; shift
    echo
    echo "$RULE"
    echo "OPERATIVE LEGAL TEXT"
    echo
    printf '%s\n' "$@"
    echo
    echo "SPDX-License-Identifier: $spdx"
    echo "$RULE"
    echo
}

build_cc0() {
    statement_wrapped
    header "CC0-1.0" \
        "Creative Commons CC0 1.0 Universal Public Domain Dedication," \
        "reproduced verbatim below and also available in this project as" \
        "LICENSE.cc0.txt. It must not be altered."
    cat "$CC0"
}

build_unlicense() {
    statement_wrapped
    header "Unlicense" \
        "The Unlicense, reproduced verbatim below and also available in this" \
        "project as LICENSE.unlicense.txt. It must not be altered."
    cat "$UNLICENSE"
}

build_either() {
    statement_wrapped
    header "CC0-1.0 OR Unlicense" \
        "Two dedications are reproduced below. You may rely on either one, at" \
        "your option — whichever is effective in your jurisdiction and suited" \
        "to your use. Neither may be altered."
    echo "1. CREATIVE COMMONS CC0 1.0 UNIVERSAL"
    echo
    cat "$CC0"
    echo
    echo "$RULE"
    echo
    echo "2. THE UNLICENSE"
    echo
    cat "$UNLICENSE"
}

build_cc0       > "$WORK/SDG-CC0.txt"
build_unlicense > "$WORK/SDG-Unlicense.txt"
build_either    > "$WORK/SDG-Either.txt"

# Every generated file must carry its base texts byte-for-byte. A stray edit
# to the statement that happened to land inside an embedded licence would
# otherwise pass unnoticed.
verify_embedded() {
    local file="$1" marker="$2" source="$3"
    sed -n "/^$marker\$/,\$p" "$file" > "$WORK/embedded"
    if ! diff -q "$WORK/embedded" "$source" >/dev/null; then
        echo "FAIL: embedded text in $(basename "$file") differs from $source" >&2
        return 1
    fi
}

verify_embedded "$WORK/SDG-CC0.txt"       "Creative Commons Legal Code"      "$CC0"
verify_embedded "$WORK/SDG-Unlicense.txt" "This is free and unencumbered.*"  "$UNLICENSE"

status=0

emit() {
    local built="$1" target="$2"
    if [ "$CHECK_ONLY" -eq 1 ]; then
        if diff -q "$built" "$target" >/dev/null 2>&1; then
            echo "  ok     $target"
        else
            echo "  STALE  $target" >&2
            status=1
        fi
    else
        cp "$built" "$target"
        echo "  wrote  $target"
    fi
}

mkdir -p variants
emit "$WORK/SDG-CC0.txt"       "variants/SDG-CC0.txt"
emit "$WORK/SDG-Unlicense.txt" "variants/SDG-Unlicense.txt"
emit "$WORK/SDG-Either.txt"    "variants/SDG-Either.txt"
emit "$WORK/SDG-Either.txt"    "LICENSE"

if [ "$CHECK_ONLY" -eq 1 ] && [ "$status" -ne 0 ]; then
    echo >&2
    echo "Generated files are out of date. Run ./make-variants.sh" >&2
    exit 1
fi

echo "embedded CC0 and Unlicense texts verified byte-identical to their sources"
exit "$status"
