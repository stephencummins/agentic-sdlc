# Gate 3 · Design

Read `intent.md` and `ai-risk-assessment.md`. Write `spec.md`.

Sections:
1. **Acceptance criteria** — numbered, each testable, each traceable to a line in `intent.md`.
2. **Interfaces** — inputs, outputs, file formats, exit codes, commands.
3. **Inside the envelope** — for each criterion, confirm it stays within the envelope in `ai-risk-assessment.md` §8, or flag it as a normal change.
4. **Out of scope** — what this deliberately does not do.
5. **Proof** — how each criterion will be shown to hold: test, fixture, manual check, or measurement.

**If `spec.md` already exists:** add the new acceptance criteria with the next numbers, each traceable to the new decisions in `intent.md`. Add or amend only the interfaces the change touches. Add the new criteria's proof lines. If an existing criterion is superseded, mark it superseded and say by which; do not delete or renumber.

Pull request title: `Gate 3: spec for <change>`.
