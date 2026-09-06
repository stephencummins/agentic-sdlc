#!/usr/bin/env bash
# Resolve the stage that follows a merged branch.
# Branch shape: <change>-<stage>   e.g. remapper-intent, remapper-build-3
# Prints two lines:  change=<change>  next=<stage|none>
set -euo pipefail
branch="${1:?merged branch name}"
case "$branch" in
  *-intent)      change="${branch%-intent}";      next="assessment" ;;
  *-assessment)  change="${branch%-assessment}";  next="spec" ;;
  *-spec)        change="${branch%-spec}";        next="plan" ;;
  *-plan)        change="${branch%-plan}";        next="build-1" ;;
  *-build-[0-9]*)
      n="${branch##*-build-}"; change="${branch%-build-*}"
      case "$n" in ''|*[!0-9]*) echo "change=" ; echo "next=none"; exit 0 ;; esac
      next="build-$((n+1))" ;;
  *) change=""; next="none" ;;
esac
echo "change=$change"
echo "next=$next"
