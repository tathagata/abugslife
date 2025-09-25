
---
### PyOhio 2025
A beginner friendly talk that goes from the manifestation of a bug in production, traces it all the way to its inception, and asks what other than code needs to change to ship faster and NOT break things.

We open with the support rotation pager going off as customers of a low latency realtime system report an outage. With every second of downtime resulting in revenue loss, it is all hands on deck for the site reliability team, Dev team, data team, product owners are peeling down the stack. We will see the to the commit messages in polyglot systems that caused the failure, the bug getting squashed, hotfix getting shipped and crisis is averted.

Cut to the blameless postmortem - the real life challenges of issue resolution that is more than changing lines in code, debugging workflows, monitoring gaps, testing limitations, navigating change management processes, team dynamics. for each of these pillars we will see what allowed the teams to shift left, and shorten a bug's lifecycle.

What does the audience get out of it:
Modern software deployments are complex and dynamic ecosystems, an ideal breeding ground for bugs. In a way, the lifecycle of a bug, reveals the truth about the software development lifecycle of a product.
This talk takes learnings from multiple real life outages and tries to condense it as a shift-left journey by Continuous Questioning how can we catch bugs in lower environments.

---

### CodeMash 2025

**tl;dr:**
A beginner-friendly talk that traces a production bug from discovery back to inception, asking: what else needs a patch beyond code?

**The Bug:**
The talk opens with the support pager alerting the team to an outage in a low-latency, real-time trading system.
With every second of downtime resulting in revenue loss, it's all hands on deck for the site reliability team, dev team, data team, and product owners. 
We witness the scrambling for locating the culprit commits in a distributed system, how hotfixes are pushed with heroic efforts.
After the fire, we cut to the "blameless" postmortem, where the question of what else needs a patch beyond changing lines of code.

**Takeaways for the audience:**
Modern software deployments are complex, dynamic ecosystems - ideal breeding grounds for bugs.  
While vibe coding and agentic code generation has accelerated the volume and velocity of code pushes, the muscle memory of code bases are waning.
To keep bugs from slipping through the cracks, we need to address the questions:
- Why do we need to change our attitude towards bugs?
- How do we measure our baselines?
- What needs to change about our workflows?
- How do we make transformation happen?
This talk is a distillation of the lessons learned from the trenches across multiple outages over the years both as developer, SRE and an engineering manager.
Instead of looking at how we ship features from left to right, we will start with bugs at the right, and walk backwards along the lifecycle of a bug.
We'll explore debugging workflows, observability gaps, testing limitations, change management processes, and team culture and try to understand how to adapt at this infection point of software engineering.
