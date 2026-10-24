# AGENTS.md

Each tool has one formula, `Formula/<tool>.rb`, that builds it from the source
archive of a release tag. The tool's release workflow rewrites the formula's
`url` and `sha256` lines on each release, so set those by hand only when you
add a formula.

When you add or change a formula:

1. Run `brew style Formula` and fix what it reports.
2. Tap this checkout and build from source:
   `brew tap fabioueno/tap "$PWD"`, then
   `brew install --build-from-source fabioueno/tap/<tool>` and
   `brew test fabioueno/tap/<tool>`.
3. Add or update the tool's row in the README's formula table.

Commit messages follow the conventional commit format,
`type(scope): subject`, with the tool's name as the scope.
