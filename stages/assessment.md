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

**If `ai-risk-assessment.md` already exists:** this is a change to an assessed system, and your first job is to classify it. Read the new decisions in `intent.md` and compare them with section 8, the envelope, axis by axis.

- **Every axis unchanged** — the change is standard. Do not touch sections 1 to 8. Append one line to a **Change log** section at the end (create it if absent): `<date> — <change>: inside the envelope; decisions <numbers>; no reassessment needed.` Pull request title: `Gate 2: <change> is inside the envelope`. This small merge is what lets the next stage start, and it is the record that the classification was made.
- **Any axis stretched** — the change is normal and needs reassessment. Amend only the sections that axis touches, update the envelope list in section 8, and add a Change log line saying which axis moved and why. Pull request title: `Gate 2: reassessment for <change>`. Name the stretched axis in the first line of the pull request body so the Software Design Authority sees it before anything else.

Pull request title for a new system: `Gate 2: AI risk assessment for <change>`.
