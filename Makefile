merge_scripts:
	cat scripts/*.md | grep -v -e "clipboard.md" -e "99_essay.md" > scripts/99_essay.md