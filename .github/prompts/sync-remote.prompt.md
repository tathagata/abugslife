---
agent: agent
---
Generates a summary of the changes made in the local repository compared to the remote repository, and if there is is not the first commit on that branch, then amends the last commit to include those changes before pushing to the remote repository.

Add all changed files to staging.
Check if the current branch has any commits on the remote repository.
If there are commits on the remote repository, amend the last commit to include the staged changes without changing the commit message.
Push the changes to the remote repository.
Force push to