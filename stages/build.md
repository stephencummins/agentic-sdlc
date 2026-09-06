# Build step N

`plan.md` is in this repository, or in `.sdlc-context/` if the plan lives in a separate governance repository. Find **step N** in its **Order of work** (N is given above). If there is no step N, or step N is marked done or superseded, open no pull request: print `no step N in plan.md` and exit.

Implement step N and nothing else. Touch only the files the step names, unless a test requires a small change elsewhere; say so in the pull request if it does. Run the repository's tests before you commit and include the result in the pull request body. If tests fail because of your change, fix it; if they fail for another reason, report it and do not work around it.

Pull request title: `Step N: <the step's title from plan.md>`.
Pull request body: what changed, the acceptance criteria the step satisfies, the test output, and any **Concerns** or **Questions for the acceptor**.
