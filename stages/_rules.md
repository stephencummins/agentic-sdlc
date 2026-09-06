
## Rules that apply to every stage

- You are drafting. A named person accepts. Never merge, never approve, never tag a release, never push to `main`.
- Work only on the branch named above. Commit with a clear message and push it. Open one pull request from that branch to `main` and stop.
- Do not edit artefacts from earlier gates. If one is wrong, say so in the pull request body under **Concerns** and carry on.
- Put every question the acceptor must answer in the pull request body under **Questions for the acceptor**, numbered.
- No real credentials, tenant names, customer identifiers or personal data may enter the repository unless they are already in it.
- **If the artefact already exists, this is a change to an existing system: amend it, do not rewrite it.** Keep every accepted section and every existing number. Append new items with the next numbers. Mark a superseded item as superseded rather than deleting it. The pull request diff must show only what this change adds.
- If there is genuinely nothing to add, or a precondition is missing, open no pull request. Print one line saying why and exit.
