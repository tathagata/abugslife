---
agent: agent
---
Sync local changes to remote repository by amending the last commit (if not the first commit on branch).

## Steps

1. **Check for changes**: Run `git status --short` to see if there are any changes to commit. If no changes, skip to step 5.

2. **Generate summary**: Run `git diff --stat HEAD` and `git diff HEAD | head -150` to understand what changed.

3. **Stage all changes**: Run `git add -A`

4. **Amend or create commit**:
   - Check if branch has commits: `git log origin/<branch>..HEAD --oneline`
   - If commits exist ahead of remote: `git commit --amend -m "<message>"`
   - If first commit on branch: `git commit -m "<message>"`
   - Commit message format: One-line summary, blank line, then bullet points of key changes

5. **Push to remote**: `git push origin <branch> --force-with-lease`

## Notes
- Use `--force-with-lease` for safety when amending (prevents overwriting others' work)
- Keep commit messages concise but descriptive
- Group related changes in bullet points

Add all changed files to staging.
Check if the current branch has any commits on the remote repository.
If there are commits on the remote repository, amend the last commit to include the staged changes without changing the commit message.
Push the changes to the remote repository.
Force push to