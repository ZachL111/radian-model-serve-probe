# Radian Model Serve Probe Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 136 | watch |
| stress | window width | 197 | ship |
| edge | metric stability | 183 | ship |
| recovery | explainability | 224 | ship |
| stale | feature drift | 165 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around window width and explainability.
