#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
html="$root/index.html"
css="$root/style.css"

fail() { printf 'FAIL: %s\n' "$1" >&2; exit 1; }

[[ -s "$html" ]] || fail "index.html is missing or empty"
[[ -s "$css" ]] || fail "style.css is missing or empty"
grep -q '<main class="page"' "$html" || fail "main landmark is missing"
grep -q 'id="profile-name"' "$html" || fail "profile heading is missing"
grep -q 'name="description"' "$html" || fail "SEO description is missing"
grep -q 'prefers-reduced-motion' "$css" || fail "reduced-motion support is missing"
grep -q 'href="tel:+21620062790"' "$html" || fail "phone link is missing"
grep -q 'href="mailto:khalilshili24@gmail.com"' "$html" || fail "email link is missing"

while IFS= read -r src; do
  [[ -f "$root/$src" ]] || fail "missing asset: $src"
done < <(grep -oE '(src|href)="(assets/[^"#?]+|qr-code\.png)"' "$html" | sed -E 's/.*="([^"]+)"/\1/' | sort -u)

printf 'PASS: personal ID smoke test\n'
