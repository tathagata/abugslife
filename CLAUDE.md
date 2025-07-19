# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a content repository for a beginner-friendly talk called "A Bug's Life" that follows the journey of a bug from production incident to root cause, exploring what needs to change beyond code to build resilient software.

## Repository Structure

- **slides/**: Contains presentation slides
  - MARP https://marp.app/ is used as a slide preparation tool which used markdown
- **scripts/**: Talk scripts and narrative content
  - `the_bug.md`: Detailed incident narrative script
  - `what_else_other_than_code.md`: Core content about organizational changes needed
- **research/**: Links to AI research sessions (Gemini, OpenAI, NotebookLLM)
- **demo/**: Demo materials and examples
- **assets/**: Supporting materials

## Key Content Files
- `scripts/README.md`: Talk timeline and structure (25-minute segments)
The table describes which file contains the content for that talk.

## Development Notes

- This is a documentation/content repository, not a code repository
- No package.json, build scripts, or traditional development commands
- Content is primarily in Markdown format
- Focus is on storytelling and educational content about software reliability

## Talk Structure

The 25-minute talk follows this timeline:
- 5 min: The Bug incident story
- 1 min: self Introduction 
- 1 min: Famous bugs in history
- 1 min: Emotional aspects of bugs
- 1 min: Bug lifecycle
- 10 min: What needs to change beyond code
- 5 min: Relationship with bugs
- 2 min: The Postmortem takeaways

## Content Themes

- Production incident response and resolution
- Organizational processes beyond code changes
- Testing strategies (unit, integration, production)
- Monitoring and alerting practices
- Communication and team dynamics
- Building resilient software systems

## Focus on 
- Think about the expectations of the audience and suggest what is missing
- The content needs to be crisp, fluid, full of memorable metaphors and one liners, fast paced
- Problem/Idea Clarity
	-	Must define a focused, non-trivial problem or idea.
	-	Reject if vague, generic, or lacks a clear goal.
-	Technical Depth
	-	Must match target audience (beginner/intermediate/advanced).
	-	Penalize if too shallow, too dense, or incoherent.
-	Clarity & Accessibility
	-	Clear progression, avoids undefined jargon.
	-	Bonus for analogies, visuals, simplification techniques.
-	Originality
	-	Prefer new insights, unique approaches, non-obvious learnings.
	-	Reject duplicates of well-known ideas without added value.
-	Takeaways
	-	Must offer practical value (frameworks, tools, lessons).
	-	Audience should gain something actionable.

Scoring Tip:
Use 1–5 per category. Flag standout talks (novel+clear+useful). Reject if incoherent, promotional, or redundant.
 