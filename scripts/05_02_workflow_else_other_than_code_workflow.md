# What Needs to Change Other Than Code

**How to Use**: 
- Identify where your team stands for each metric
- Prioritize which metric 
- Use these metrics as a guide to prioritize process and tooling enhancements.

I leaned in on the popular DORA metrics for finding where we are today.
However for the What part, it is really difficult to give a one size fits all answer.
It really depends on your team, your organization, your culture, your product.
Instead, I will talk about some principles that is very dear to SRE and DevOps community.

## Shift left Basic idea
Shift left is not something new as a concept.
Anyone who has done TDD, or BDD, or even just has already understood the value and experienced what it feels like to have that safety net.

So lets go from right to left and with DORA metrics as our guide lets see how we can shift left.

## Testing in Production
Now we know this is a controversial topic, but hear me out.
Netflix popularized the idea of testing in production with their Chaos Engineering.
While all teams might not have the bandwidth to deploy full fledged chaos engineering, we can still learn from the principles.
The key idea here is to test your assumptions in production with a controlled blast radius and then use the learnings to improve your code, your tests, and your processes.
If chaos engineering is too much of lift, you can still invest in post release testing that builds confidence on what your are shipping.

## Monitoring and Observability
Moving a step left, we can start with monitoring and observability.
If your customers are not your alert system, then you are doing it wrong.
As your system grows and changes, it is important to do periodic reviews of your alert thresholds and alerting rules.

## Pre-prod Testing

## The Developer's laptop
### Developer Environment Productivity
- pre-commit hooks, linters, static code quality, security scanning 
- DevContainers that allow you to run your code in a production-like environment
- Security scanning tools that can catch vulnerabilities before code is committed


## Requirements and Design
This is really ground zero for us.
This is before the code has been written when it is still a concept, a germ of an idea.
As of now, this is still a completely human process.
And a bug that that has its roots here is the most expensive bug to fix.
And accordingly this is the most difficult bug to fix.
As the roots of the bugs here are not in the code base, but in culture of the organization.
This is pure and raw human communication - and given neuralink is not yet a thing, we are still bottlenecked by what makes us human - our ability to communicate.
How we fix bugs here will take us to your next section - building partnerships

And this is where communication and team collaboration becomes the key.


We take that same idea and simply apply it across all aspects of software development.
What we want here to invest in tooling that makes writing buggy code difficult.
Up until a few years back, we were only doing static code analysis, linting, and unit tests within our development evironments. But now, it is possible to shift left even further.
Technologies like DevContainers allow us to spin up and tear down environments that are very close to what prodcution looks like.

Some of the examples of shift left tooling that you can use to prevent bugs even before code is written:



| **Shift-Left Idea**                        | **DORA Metric Impact**  | **How It Helps**                                                                      |
| ------------------------------------------ | ----------------------- | ------------------------------------------------------------------------------------- |
| **Automated CI/CD Pipelines**              | Deployment Frequency    | Enables faster, more frequent deployments with reduced cycle time.                    |
| **Test-Driven Development (TDD)**          | Lead Time for Changes   | Ensures high-quality code is developed faster with fewer defects.                     |
| **Feature Toggles**                        | Lead Time for Changes   | Decouples feature deployment from code release, reducing deployment time.             |
| **Automated Unit & Integration Tests**     | Change Failure Rate     | Catches bugs early to reduce failure rates in production.                             |
| **Shift-Left Security (DevSecOps)**        | Change Failure Rate     | Identifies and fixes vulnerabilities earlier to reduce security risks.                |
| **Automated Regression Testing**           | Change Failure Rate     | Prevents regressions that could cause issues in production.                           |
| **Automated Monitoring & Log Aggregation** | Time to Restore Service | Provides early insight into issues for faster recovery from incidents.                |
| **Chaos Engineering**                      | Time to Restore Service | Identifies system weaknesses before they impact production, enabling faster recovery. |
| **Infrastructure as Code (IaC)**           | Time to Restore Service | Ensures consistent environment provisioning and quicker recovery from failures.       |
| **Early Performance Testing**              | Time to Restore Service | Identifies and addresses performance issues before deployment.                        |




## Build and Release Pipeline


















 






