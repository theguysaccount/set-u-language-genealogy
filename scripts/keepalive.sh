#!/usr/bin/env bash
# GitHub disables scheduled workflows in a public repo after 60 days without repository activity.
# Re-enable every scheduled workflow (harmless when already enabled) and, when the last commit is 40+ days old,
# push an empty commit so the 60-day clock starts over. Needs GH_TOKEN with actions:write and contents:write.
set -euo pipefail
for wf in .github/workflows/*.yml; do
  if grep -q "schedule:" "$wf"; then
    name="$(basename "$wf")"
    state="$(gh api "repos/$GITHUB_REPOSITORY/actions/workflows/$name" --jq .state 2>/dev/null || echo unknown)"
    if [ "$state" = "disabled_manually" ]; then
      echo "$name was disabled by hand; leaving it alone"
      continue
    fi
    if gh api -X PUT "repos/$GITHUB_REPOSITORY/actions/workflows/$name/enable" >/dev/null; then
      echo "enabled $name ($state)"
    else
      echo "::warning::could not re-enable $name"
    fi
  fi
done
git fetch --quiet origin main || true
age=$(( ( $(date +%s) - $(git log -1 --format=%ct origin/main 2>/dev/null || git log -1 --format=%ct) ) / 86400 ))
echo "last commit on main: $age days ago"
if [ "$age" -ge 40 ]; then
  git config user.name "github-actions[bot]"
  git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
  git commit --allow-empty -m "Keep-alive: no commits for $age days [skip ci]"
  git push origin HEAD:main
fi
