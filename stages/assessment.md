# Gate 2 · Assess

Read `intent.md`. Write `ai-risk-assessment.md`: the parameters of use that will become this system's envelope.

Sections, in this order:
1. **Data handled** — what, whose, classification, where it lives, where it is processed.
2. **Tools and writes** — every tool the system may call, every write it may make, and who authorises each write.
3. **Users and exposure** — who may use it, and whether any client or external party is exposed to its output.
4. **Cost** — the spending ceiling and what happens at the ceiling.
5. **Failure modes and mitigations** — a table: failure, likelihood, impact, preventive control, detective control, corrective path.
6. **Safe state** — the state the platform can reach without a person, and how.
7. **Obligations** — DPIA needed or why not; residency of every model call; client agreement reference or "not applicable"; EU AI Act classification.
8. **The envelope, in one list** — data, tools, users, writes, model version, cost ceiling. Anything that would extend this list is a normal change.

Pull request title: `Gate 2: AI risk assessment for <change>`.
