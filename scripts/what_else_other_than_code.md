# What else needs to change other than code?

After the bug has been found it is obvious that the code will undergo change. But this talk is really about all the other
things that need to change, but often goes unnoticed during the life of a bug.
And in reviewing those, we will uncover how we can build and ship more robust software.
Lets see if a bug teaches us more about our code, and ourselves than what shipping a feature might. 

## More Code Changes

The art and craft of building software is all about the tradeoffs we make day in day out.
We are racing against time to either jump to another firefight, ship out the high priority feature, or whatever other unforeseen distraction that will keep us from diving deep.
We end up putting a pr that will do the job, while we know in our hearts, we would like to refactor a lot more than the few lines.
This is where techdebt starts to accumulate and compund.


## Testing

In 2025, I think it would be safe to assume, we are not shipping code to production without testing.
The nuance here is new features get tests, but new bug fixes, might not get the same love.
Your test code deserves no less love than the implemenation of business logic.
Just as fixing a bug makes your code base more robust, adding the new test cases, not only gives you the confidence about the fix, it also serves as defense againt future refactors and bug fixes.
But lets peel the onion a bit more.
Are we talking about only unit tests?
The effectiveness of unit tests for complex software becomes debatable.
As the software starts to grow and connects with other dynamic systems, unit tests often fails to serve as the best defensive mechanism when the contracts with other systems change.
Your test coverage might show hundred percent coverage but if your mocks are not reflecting the change in value returned by other services, then that is just false hope.

So, integration tests while better are also not without their limitations.
Often they are very hard to write.
It can be expensive to setup, and slow to run.
Then your test environment might not have the accurate amount of data, or variability of data that your production has.
The same applies for network and other service dependencies.
The further your test environment is from production the lower is your chance of catching the bug early.

This brings us to the ultimate maturity level.
Testing in production.
We have seen how mature teams have used chaos engineering and fault injection to ensure roubstness of services, overall
the underlying technologies on which we build software are not easy enough to test with controlled blast radius.
Containerization like many other benefits are a game changer in testing.
We can now create emphemeral environments that can be made to look a lot like production right into the developers laptop.
Technologies like DevContainers, ___ and their close integration with development environments like visual studio code, go a long way in bridging the gap between where the code is written and where code runs for the users. 


## Monitoring
Beyond code and tests, the bug should make us ask the question our monitoring.
If something went wrong and it impacted the users, and the users had to raise an incident, that makes it highly likely that your monitoring setup needs to change.
While there is no shortage of monitring tools today, and integrating and standing them up is fairly simple, the discipline that needed to operationalize monitoring is often neglected.

The bug should make us ask:
- how much alerts do we have - are there too many alerts causing alert fatigue?
- Are our alerts telling us what is the problem and helping us take the next step?
- Alerts and Dashboards serve two different purposes
A well designed dashboard is debugger, not a substitute for a well written alert that points out an outlier and a defined call to action.




## Communication
  - teams are remote, in person, hybrid, in different timezone
  - stakeholders

## Process

  - What does your support process look like? What does your sister team's? When schdeuling a release on a weekend, who is going to
    do the verification for post release? If you have the l
  -

## People

  - locality of reference

 
Now that we have asked ourselves a number of questions, lets ask the most important question of all?

 

Is AI going to take my job?

 

The fulcrum of this question is the success of AI at generating code from natrual language prompt.

The discussion has been very focused on code generation, but those who have lived through multi[ple

production outages, can testify - that there's a lot more than just code that is done in the whole

discipline of software engineering.

 

A bug is not only a code change.

It means reproducing the problem reliabiliy to fix our understanding about the world, could be about

the code, could be about someone else's code, could be about shifting our mindset about the abstractions

we have built. Once the new reality is understood - of course, code needs to be changed.

- tests, documentation, alerts, trainings, runbooks, releases, process, tooling,

-
