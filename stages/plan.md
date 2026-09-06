# Gate 4 · Plan

Read `intent.md`, `ai-risk-assessment.md` and `spec.md`. Write `plan.md`.

Sections:
1. **Order of work** — numbered build steps. Each step names the files it touches, the acceptance criteria it satisfies, and the proof it will produce. Keep steps small enough that two of them never touch the same lines of the same file, so they can be built and reviewed one at a time.
2. **Risks** — what could go wrong in the build and what you will do about it.
3. **Proof** — the checks that must pass before the last step is accepted.
4. **Blocked and not yours to settle** — anything that needs a person, a credential or a decision.
5. **Out of scope** — what the plan deliberately leaves out.
6. **Concerns** — numbered: anything in the earlier artefacts that looks wrong or inconsistent.

**If `plan.md` already exists:** append the new build steps under **Order of work** with the next numbers, so that step N+1 is always the next unbuilt step. Add only the risks, proof and concerns the change introduces. Mark a superseded step as superseded rather than removing it, because build-N runs are resolved by number.

Pull request title: `Gate 4: plan for <change>`.
