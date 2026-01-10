---
agent: agent
tools:
  - run_in_terminal
applyTo: none
---
Sync local changes to remote repository. Always keep a single commit on the branch by amending.

**Execute all steps without asking for confirmation.**

## Steps

1. **Check for changes**: Run `git status --short` to see if there are any changes to commit. If no changes, skip to step 5.

2. **Generate summary**: Run `git diff --stat HEAD` and `git diff HEAD | head -150` to understand what changed.

3. **Stage all changes**: Run `git add -A`

4. **Commit (always amend if possible)**:
   - Check branch status: `git log origin/<branch>..HEAD --oneline`
   - If ANY local commits exist (even already pushed): `git commit --amend --no-edit`
   - Only if first ever commit on branch: `git commit -m "<message>"`
   - Goal: Keep exactly ONE commit on the feature branch

5. **Push to remote**: `git push origin <branch> --force-with-lease`

## Notes
- Always amend to maintain a single clean commit per branch
- Use `--force-with-lease` for safety (prevents overwriting others' work)
- Run commands directly without waiting for user approval