# What Needs to Change Other Than Code

*[10-minute segment: Measure, Change Workflows, Build Partnership]*

You've patched the code. 
The hotfix is deployed. 
Crisis averted. 
But here's the uncomfortable truth: **you're only 10% done.**
The real work—the work that prevents the next fire—happens in the other 90%. 
Let's break this into three pillars:

## Measurement where you are
The age old adage, you can't improve what you can't measure.
Without metrics, it is like driving at night with headlights turned off.

We are probably all very familiar with code coverage, test pass rate, story points, velocity as developers.
I am going to touch a little about briefly about some metrics that are very popular in DevOps/SRE zeitgiest.

[MetricsMeme](../slides/slides.md#metrics_meme)
[DORA Metrics](../slides/slides.md#dora-metrics-as-your-north-star)

**Deployment Frequency**: How often are you shipping?
This is probably my favorite metrics among everything - how often teams ship tells a lot about the maturity of 
a team. 
If you are in the first line then congratulations, but for the rest of us this is really the north star.
If you want to take away just one take away from this talk, then let this be it - zoom in on deployment frequency as your north star.

| Deployment Frequency | Description |
|-----------------------|-------------|
| Daily or On-Demand   | High-performing teams deploy multiple times per day |
| Weekly               | Medium-performing teams deploy weekly |
| Monthly or Quarterly | Low-performing teams deploy infrequently |

**Lead Time to Change**: Commit to production time
Lead time to change is a finer grain measurement that will give you answers to why you cannot deploy faster.
May be your QA team is still running manual tests
or your automated tests take long to run
may be you need to get three levels of approval before deploying an emergency change
or may be it could be limitation in your business domain where you simply cannot have a deployment without prior approvals

| Lead Time to Change | Description |
|----------------------|-------------|
| <1 Day              | High-performing teams deliver changes quickly |
| 1-7 Days            | Medium-performing teams take a few days |
| >7 Days             | Low-performing teams take weeks or longer |

**Change Failure Rate**: What percentage breaks production?
This metrics brings us to the questions 
- why did your changes break in production? 
- What does it really tell you about your tests?
- How prod like is your non-production environment?
- Is the velocity, variety, and volume of your test data good enough?
### The Production Gap

Your test environment is production's distant cousin:
- Different data volume, variety, velocity
- Different infrastructure, dependencies, configurations
- The gap between test and prod is where bugs hide

**Solution**: Bring production closer to development, not the other way around.

| Change Failure Rate | Description |
|----------------------|-------------|
| 0-15%               | High-performing teams experience minimal failures |
| 16-30%              | Medium-performing teams encounter occasional failures |
| >30%                | Low-performing teams face frequent failures |

**Mean Time to Recovery**: How fast do you bounce back?
This is where we 

| Mean Time to Recovery | Description |
|------------------------|-------------|
| <1 Hour               | High-performing teams recover quickly |
| 1-24 Hours            | Medium-performing teams take some time |
| >24 Hours             | Low-performing teams take a day or more |



**How to Use**: 
- Identify where your team stands for each metric.
- Focus on improving one metric at a time.
- Use these metrics as a guide to prioritize process and tooling enhancements.
- Their incident: Hours of coordination chaos
- Best teams: Minutes, not hours

### The Tech Debt Reality Check

We ship the minimum viable fix because we're always racing to the next fire. But here's what accumulates:
- **Technical Debt**: The "I'll refactor this later" that never happens
- **Process Debt**: The shortcuts that become permanent workflows  
- **Knowledge Debt**: The tribal knowledge that lives in one person's head

Every bug is a loan payment on this debt.


## 2. Process Improvements: The Testing Pyramid Reality

### Bug Fixes Don't Get the Love They Deserve

New features get comprehensive tests. Bug fixes? Often just a quick patch. **This is backwards.** Every bug fix should add a test that prevents regression.

### The False Security of 100% Coverage

**Unit Tests**: Great for logic, terrible for integration
- Your mocks lie when external service contracts change
- 100% coverage ≠ 100% confidence

**Integration Tests**: Closer to reality, but expensive
- Slow to run, hard to maintain
- Test environments are production's distant cousins

**The Gap**: The further your test environment from production, the more bugs slip through

### Testing in Production: The Ultimate Truth

- **Chaos Engineering**: Intentionally break things to find weaknesses
- **Canary Deployments**: Let production tell you what's wrong
- **Feature Flags**: Instant rollback without redeployment

**Game Changer**: DevContainers bring production to your laptop 


### Monitoring: When Customers Become Your Alert System

**Red Flag**: If customers report issues before your monitoring does, your monitoring is broken.

The bug story had zero disk monitoring. Zero alerts. The job silently failed for hours.

**Three Monitoring Questions Every Bug Should Ask:**
1. **Alert Volume**: Are you drowning teams in noise? (Alert fatigue kills response)
2. **Alert Quality**: Do alerts explain the problem AND the next action?
3. **Purpose Clarity**: Dashboards are for debugging. Alerts are for action.

**Remember**: A dashboard is a debugger, not an early warning system.




## 3. Tooling Enhancements: The Human Factors

### Communication in Crisis

The bug story shows coordination chaos:
- Multiple Slack channels
- Different teams, different tools
- Remote, hybrid, multiple timezones
- Stakeholder pressure escalating

**Solution**: Establish clear incident response communication protocols

### Process Gaps Kill Velocity

**Questions your next bug will ask:**
- Who owns the support rotation? 
- Who verifies weekend releases?
- What happens when the expert is at a conference?
- How do you hand off context across time zones?

### The Locality of Reference Problem

**Knowledge lives in silos.** The person who wrote the code moved teams. The runbook is outdated. The tribal knowledge walked out the door.

**Solution**: Documentation that lives with the code, not in wikis that rot.

 
## The AI Question: Will Robots Take Our Debugging Jobs?

Everyone's asking: "Will AI replace developers?"

Here's what AI can do: Generate code from prompts.

Here's what AI can't do: Navigate the coordination chaos you just witnessed. Understand business context. Make judgment calls under pressure. Build trust between teams during crisis.

**A bug is never just a code change.** It's:
- Reproducing the problem reliably
- Understanding system interactions
- Coordinating across teams and timezones  
- Making tradeoff decisions under pressure
- Building processes that prevent recurrence
- Writing tests, documentation, runbooks
- Training teammates on new processes

**The 90% that matters most? That's still human work.**








## The Mindset Shift: From Pets to Partners

### Features vs Bugs: The Adoption Gap

**Features** are planned, nurtured, celebrated—they're pets.
**Bugs** are unwanted orphans that nobody claims—treated like pests.

But here's the truth: **Bugs teach you more about your system than features ever will.**

### Three Organizational Problems Every Team Faces:

**Problem 1: Empathy Deficit**
- Solution: Bugs are inevitable. Budget for them.
- Empathy is bandwidth—measured in time and dollars
- Features add revenue, bugs subtract it. Both deserve equal investment.

**Problem 2: Timeline Ownership** 
- Solution: Self-empowered teams forecast their own timelines
- Plan backwards from release day
- Map dependencies, approvals, tech debt blockers
- If you don't plan it, someone unqualified will

**Problem 3: CICD as Assembly Line, Not Platform**
- Solution: Your CICD is Ford's conveyor belt—but are you using all its features?
- Team integration via webhooks and APIs
- If shipping takes more than two weeks, you're waiting too long




