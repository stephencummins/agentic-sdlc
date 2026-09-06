# agentic-sdlc

The seven-gate artefact chain as GitHub Actions. An agent drafts each stage and opens a pull request; a named person accepts it by merging; the merge starts the next stage. Nothing here approves, merges, tags or deploys.

It exists because the same chain run through an orchestration console took an evening of which four fifths was a person waking agents by hand. Here the handoff is the merge event.

## The chain

| Gate | Branch that merges | Stage that starts | Artefact |
|---|---|---|---|
| 1 Plan | `<change>-intent` | assessment | `ai-risk-assessment.md` |
| 2 Assess | `<change>-assessment` | spec | `spec.md` |
| 3 Design | `<change>-spec` | plan | `plan.md` |
| 4 Build | `<change>-plan` | build-1 | first pull request of code |
| 4 Build | `<change>-build-N` | build-N+1 | next step from `plan.md` |
| 5 Test | every pull request | your existing test workflow | checks |
| 6 Deploy | the person who merges | | |

Stage prompts are in `stages/`. They are generic. Anything that names a customer, a tenant or a person belongs in the repository the chain runs in, not here.

## Use it

1. Copy `examples/caller-governance.yml` into the repository that holds the artefacts, and `examples/caller-code.yml` into the code repository, under `.github/workflows/`. If both are one repository, one caller with both branches of the `if` is enough.
2. Add one model credential as a repository secret: `CLAUDE_CODE_OAUTH_TOKEN` from `claude setup-token` (Pro or Max), or `ANTHROPIC_API_KEY`.
3. Add `SDLC_CONTEXT_TOKEN` to each calling repository: a fine-grained personal access token with **Contents: read** on this repository (it is private, so the stage prompts cannot be fetched with the default token) and on the governance repository if `plan.md` lives there. Making this repository public removes the first need.
4. Start the chain by hand once: run the caller with `workflow_dispatch`, `dry_run` on, and read the prompt in the job summary. Then run it for real.

Every run writes a cost table to the job summary from Claude Code's result event: turns, duration, tokens, dollars at API list rates.

## What the person still does

Read the pull request. Merge it or edit it. That is the gate, and it is the only step on the critical path.

## Limits, on purpose

- A pull request opened with the default `GITHUB_TOKEN` does not trigger other workflows, so your test workflow will not run on the agent's PR until you push to it or install the [Claude GitHub App](https://github.com/apps/claude). The merge, being a person's action, does trigger the next stage.
- The handoff from a merged `plan.md` in the governance repository to `build-1` in the code repository crosses repositories. Start it by hand with `workflow_dispatch` on the code repository's caller (step 1), or add a `repository_dispatch` with a token if you want it automatic.
- The agent's tool list is fixed in `handoff.yml`. The calling repository's `.claude/settings.json` deny rules also apply, and they win.
- Stages run one at a time. Speculative drafting of stage N+1 from the unmerged branch of stage N is a small change to the caller (base the checkout on the PR branch) and is deliberately not the default.
