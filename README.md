# radian-model-serve-probe

`radian-model-serve-probe` keeps a focused Haskell implementation around ml utilities. The project goal is to create a Haskell reference implementation for serve workflows, centered on security rule linting, safe and unsafe fixtures, and remediation hints.

## Problem It Tries To Make Smaller

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Radian Model Serve Probe Review Notes

For a quick review, compare `explainability` with `feature drift` before reading the middle cases.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/radian-model-serve-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `explainability` and `feature drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Haskell addition stays small enough to inspect in one sitting.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `recovery` is the high score at 224; `baseline` is the low score at 136.

## Known Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
