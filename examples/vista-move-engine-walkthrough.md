# Vista Move Engine Stack Walkthrough

I use this file as a small checklist before changing the Elixir implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 151 | ship |
| stress | move ordering | 237 | ship |
| edge | search width | 166 | ship |
| recovery | endgame risk | 185 | ship |
| stale | position pressure | 218 | ship |

Start with `stress` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
