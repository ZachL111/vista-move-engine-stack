# Review Journal

I treated `vista-move-engine-stack` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 151, lane `ship`
- `stress`: `move ordering`, score 237, lane `ship`
- `edge`: `search width`, score 166, lane `ship`
- `recovery`: `endgame risk`, score 185, lane `ship`
- `stale`: `position pressure`, score 218, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
