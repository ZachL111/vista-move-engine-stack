# vista-move-engine-stack

`vista-move-engine-stack` is a compact Elixir repository for chess and game engines, centered on this goal: Build an Elixir toolkit that studies engine behavior through framed sample traffic, with bounds and ordering tests and explicit failure cases.

## Use Case

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Vista Move Engine Stack Review Notes

For a quick review, compare `move ordering` with `position pressure` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/vista-move-engine-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `move ordering` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Elixir code keeps the review rule close to the tests.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
