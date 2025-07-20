# What Needs to Change Other Than Code

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
Lead time to change is a fine grain measurement that will give you answers to why you cannot deploy faster.
Are there multiple manual steps in your deployments?
Is there a limitation in your system architecture that you can not deploy without downtime?
Do you need to three levels of approval before deploying an emergency change?
Are upstream dependencies or downstream impacts slowing you down?


| Lead Time to Change | Description |
|----------------------|-------------|
| <1 Day              | High-performing teams deliver changes quickly |
| 1-7 Days            | Medium-performing teams take a few days |
| >7 Days             | Low-performing teams take weeks or longer |

**Change Failure Rate**: What percentage breaks production?
This metrics helps you understand why did your changes break in production? 
Are there brittle areas in your code that keep breaking frequently?
You know that it needs to be refactored, but you don't have the time to do it?
What are the gaps in your testing pyramid that you could not catch the bug before release?
The gap between test and prod is where bugs hide
Is the velocity, variety, and volume of your test data good enough?
Is prod like is your non-production environment?
Different data volume, variety, velocity
Different infrastructure, dependencies, configurations

| Change Failure Rate | Description |
|----------------------|-------------|
| 0-15%               | High-performing teams experience minimal failures |
| 16-30%              | Medium-performing teams encounter occasional failures |
| >30%                | Low-performing teams face frequent failures |

**Mean Time to Recovery**: How fast do you bounce back?
Your customers are not your alert system
**Alert Volume**: Are you drowning teams in noise? (Alert fatigue kills response)
**Alert Quality**: Do alerts explain the problem AND the next action?
**Purpose Clarity**: Dashboards are for debugging. Alerts are for action.
Are your Runbooks, support rotation, Upcoming release pages up to date?
What are the knowledge and access control gaps in your team?
Are they feeling safe during a crisis?
Do you have a back up plan when the key people are unavailable?

| Mean Time to Recovery | Description |
|------------------------|-------------|
| <1 Hour               | High-performing teams recover quickly |
| 1-24 Hours            | Medium-performing teams take some time |
| >24 Hours             | Low-performing teams take a day or more |



**A bug is never just a code change.** It's:
- Reproducing the problem reliably
- Understanding system interactions
- Coordinating across teams and timezones  
- Making tradeoff decisions under pressure
- Building processes that prevent recurrence
- Writing tests, documentation, runbooks
- Training teammates on new processes






