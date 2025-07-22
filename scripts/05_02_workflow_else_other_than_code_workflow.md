# What Needs to Change Other Than Code
When you have collected some data about where you team stands, it is time to answer the mention question -  about what needs to change

For the last question, I leaned in on the DORA metrics for finding where we are today.
However for the What part, it is really difficult to give a one size fits all answer.
It really depends on your team, your organization, your culture, your product.
So instead of diving into specific tools, I want to revisit some of the principles that are very dear to SRE and DevOps community.

## Shift left
Shift left is not a novel SRE or DevOps concept.
Rather anyone who has done TDD, or BDD, have already understood its value and experienced what it feels like to have that safety net.
We take that same idea and simply apply it across all aspects of software development.
We relentlessly ask ourselves - how do we shift left?
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
Alert fatigue is a real problem, and it is important to ensure that your alerts are actionable and not just noise.
Dashboards are for debugging, alerts are for action
That way we do not have eyes on glass, but rather we have eyes on action.
Linking your runbooks to your alerts is a great way to ensure that your team has the right context to take action.


## Pre-prod Testing
### Developer Environment Productivity

This is where all the magic happens - the beloved text editor where we are writing the code.
The shorter the feedback loop between the developer typing a code of a prompt and the failure - the faster the developer can fix the issue.
We have come a long way from the days of vanilla vi and emacs.
The container revolution has brought us DevContainers, which allow us to have a production-like environment on our local machines.

| **Shift-Left Idea**                                   | **DORA Metric Impact**  | **How It Helps**                                                                      |
| ----------------------------------------------------- | ----------------------- | ------------------------------------------------------------------------------------- |
| **Pre-commit Hooks, Linters, Static Code Quality Checks, Security Scanning** | Lead Time for Changes   | Ensures code quality and security early in the development process, reducing rework.  |
| **DevContainers**                                     | Deployment Frequency    | Provides a consistent, production-like environment for development, enabling faster deployments. |
| **Automated CI/CD Pipelines**                         | Deployment Frequency    | Streamlines testing and deployment processes, reducing cycle time and increasing deployment frequency. |

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







