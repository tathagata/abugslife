


# Research
[Gemini](https://gemini.google.com/app/2ad4610e13c11152?utm_source=gemini&utm_medium=referral&utm_campaign=gemini_deep_research_landing_page&redirect=home&hl=en&_gl=1*18estai*_gcl_au*MTAxMzk0ODI5NC4xNzQ5MzMxNzIx*_ga*MTA1Mjc4MjA3My4xNzQ5MzMxNzI0*_ga_WC57KJ50ZZ*czE3NDkzMzE3MjMkbzEkZzAkdDE3NDkzMzE3MjMkajYwJGwwJGgw)


[OpenAI](https://chatgpt.com/c/68615df1-2a78-8001-bc92-4b5e59f8f883)


[NotebookLLM](https://notebooklm.google.com/notebook/76d575af-bca0-4fc2-b7d0-60d4268e34de)


Time line
- Demo bug (5 mins)
- famous bugs (1 min)
- how does bugs make us feel (1 min)
- lifecylce of a bug (2 mins)
- what needs to change other than code (10)
- our relationship with a bug needs to change (5 mins)

# A Bug's Life

A beginner-friendly talk that follows the journey of a bug from production incident to root cause, and explores what needs to change (beyond code) to build and ship resilient software.

## Table of Contents

- [Talk Abstract](#talk-abstract)
- [Slides](slides/abugslife.pptx)
- [Main Script](scripts/main_talk.md)
- [Research & References](research/references.md)
- [Demo](demos/demo-bug/README.md)
- [Feedback & Lessons Learned](feedback/attendee-feedback.md)

## Talk Abstract
A beginner friendly talk that goes from the manifestation of a bug in production, traces it all the way to its inception, and asks what other than code needs to change to ship faster and NOT break things.

We open with the support rotation pager going off as customers of a low latency realtime system report an outage. With every second of downtime resulting in revenue loss, it is all hands on deck for the site reliability team, Dev team, data team, product owners are peeling down the stack. We will see the to the commit messages in polyglot systems that caused the failure, the bug getting squashed, hotfix getting shipped and crisis is averted.

Cut to the blameless postmortem - the real life challenges of issue resolution that is more than changing lines in code, debugging workflows, monitoring gaps, testing limitations, navigating change management processes, team dynamics. for each of these pillars we will see what allowed the teams to shift left, and shorten a bug's lifecycle.

What does the audience get out of it:
Modern software deployments are complex and dynamic ecosystems, an ideal breeding ground for bugs. In a way, the lifecycle of a bug, reveals the truth about the software development lifecycle of a product.
This talk takes learnings from multiple real life outages and tries to condense it as a shift-left journey by Continuous Questioning how can we catch bugs in lower environments.


## Ops

- Use the [💡 Talk Idea / Story Submission](.github/ISSUE_TEMPLATE/idea.yaml) template to suggest new ideas or stories.
- For major changes, please submit a Pull Request (see [Pull Request Template](.github/PULL_REQUEST_TEMPLATE.md)).

## Repository Structure

<details>
  <summary>Click to expand</summary>

```
abugslife/
├── README.md
├── [slides](slides/README.md)/
├── [scripts](scripts/README.md)/
├── [research](resarch/README.md)/
├── [demos](demos/README.md)/
├── [assets](assets/README.md)/
```
</details>
