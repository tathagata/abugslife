# A Bug's Life: My First Conference Talk at PyOhio 2025

I had the incredible opportunity to give my first conference talk at PyOhio 2025, and what an experience it was! The talk, titled "A Bug's Life," took the audience on a journey through the complete lifecycle of a production bug—from the initial incident to the deeper organizational changes needed to build truly resilient software.

## The Story Behind the Talk

As someone who has transitioned from being a developer (creating bugs) to working in Site Reliability Engineering at London Stock Exchange Group (shipping them to production!), I've had front-row seats to many outages. After each crisis passes and we conduct our retrospectives, I always find myself asking the same question: "We've patched the code and deployed the hotfix, but what else needs to change so we're not here again?"

This talk was my attempt to distill those learnings into something practical that teams could immediately take back to their organizations.

## The Journey of a Bug

The presentation opened with a theatrical disclaimer—all characters in the story are completely fabricated—before diving straight into the "hurt locker" of a production incident at a fictional financial data company, Ant Intelligence.

### The Incident

*Ding.* 

It's 9:35 a.m. on a Monday morning, fifty-seven floors above New York's financial district. A Slack notification appears on the support channel: "P1: Goldkern Husks: Dashboards not loading!!!"

What followed was a familiar dance of escalation, finger-pointing, and frantic troubleshooting that many of us have experienced. The story took the audience through:

- Support scrambling to understand the scope
- The UI team defending their code
- SRE checking health metrics that all showed green
- The data team finally discovering the root cause: a disk full of old ticker files that weren't being cleaned up properly

The bug itself was simple—a one-character fix to add the `-r` flag to a cleanup cron job. But that's where the real conversation began.

## Beyond the Code Fix

The heart of the talk addressed a crucial question: "Your patch fixed the bug. But what else needs a patch?"

In 2025, when "vibe coding" has become the norm and LLM-generated code is routinely checked into production, our attitude toward bugs must evolve. We need to accept that bugs are inevitable and focus on building strong guardrails that minimize their blast radius.

### The Three Pillars of Change

The talk was structured around three key areas that need attention beyond code:

#### 1. Measure: Where Are We Today?
I introduced the DORA metrics as a North Star for understanding team maturity:
- **Deployment Frequency**: How often are you shipping?
- **Lead Time for Changes**: Commit to production time
- **Change Failure Rate**: What percentage breaks production?
- **Mean Time to Recovery**: How fast do you bounce back?

#### 2. Workflow: What Needs to Change?
The concept of "shifting left"—catching issues earlier in the development lifecycle:
- Testing in production (controlled chaos engineering)
- Monitoring and observability improvements
- Pre-production testing enhancements
- Developer environment productivity tools
- Requirements and design review processes

#### 3. Partnership: How Do We Enact Change?
The human element that's often overlooked:
- **Empathy**: Understanding that other teams have different priorities
- **Trust**: Building relationships that can withstand crisis situations
- **Honest Communication**: Setting and managing expectations across teams

## The Postmortem Resolution

The talk concluded by returning to the fictional postmortem, showing how the teams developed both short-term fixes and long-term improvements:

**Short-term actions:**
- SRE: Alert on 85% disk usage and runbook updates
- Data team: Better error handling and process improvements
- UI team: Reduce noise in logging and monitoring
- C++ team: Update support rotation calendars

**Long-term focus areas:**
- SRE: Improve deployment frequency
- Data team: Enhance data quality in non-production environments
- UI team: Implement synthetic tests for faster post-release validation
- C++ team: Reduce build times to improve lead time for changes

## Key Takeaways

The main message I wanted the audience to take away was that **a bug is never just a code change**. It involves:
- Reproducing problems reliably
- Understanding system interactions
- Coordinating across teams and timezones
- Making tradeoff decisions under pressure
- Building processes that prevent recurrence
- Writing tests, documentation, and runbooks
- Training teammates on new processes

## The Conference Experience

Giving my first conference talk was both terrifying and exhilarating. The PyOhio community was incredibly welcoming, and the feedback from attendees was encouraging. Many people approached me afterward to share their own war stories and discuss how they might apply these concepts in their organizations.

One thing that particularly resonated with the audience was the emphasis on treating bugs as learning checkpoints rather than personal failures. In an era where AI is writing more of our code, this mindset shift becomes even more critical.

## Looking Forward

The experience has inspired me to continue exploring this intersection of technical practices and organizational culture. The question "What else needs a patch?" isn't just about fixing bugs—it's about building systems and teams that can adapt and improve continuously.

For anyone considering giving their first conference talk: do it! The tech community is supportive, and there's tremendous value in sharing your experiences and learnings. We all have unique perspectives shaped by our battles with production systems, and those stories deserve to be told.

The slides, scripts, and supporting materials for this talk are available in the repository, and I'm happy to discuss any aspects of building resilient software systems. After all, we're all in this together, fighting the good fight against the bugs that inevitably find their way into our carefully crafted systems.

---

*If you're interested in the full narrative and supporting materials, you can find them in the [abugslife repository](https://github.com/your-repo-link). The talk structure follows a 25-minute format designed to be engaging, practical, and immediately actionable for development teams.*