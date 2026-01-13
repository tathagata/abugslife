# Postmortem Actions Table

# Short Term

|**Team**| **What**                          |
|----|-------------------------------------|
|SRE | Alert on 85% of disk usage & Runbook update             | 
|Data| Error handling, move purger job to Airflow data  |
|UI  | Improve Signal to Noise ratio, refactoring third party lib errors         |
|C++ | Support rotation calendar update        |

---
# Long Term

| **Team** | **Focus**                                                                 | **DORA Metric**         |
|----------|-----------------------------------------------------------------------------|-------------------------|
| SRE      | Faster and reliable updates to production systems                          | Deployment Frequency    |
| C++      | Reduce build times and improve testing efficiency                          | Lead Time for Changes   |
| Data     | Enhance data quality in non-production environments                        | Change Failure Rate     |
| UI       | Implement synthetic UI tests, that will validate post release validations  | Time to Restore Service |

---
# Speaker Notes Narrative

In closing we return to the postmortem in Ant Intelligence.
When we left off the team Manny the SRE asking what other than code needed a patch?
That postmortem still ranks as one of the longest at Ant Intelligence.
The temperature in the room got very high, until Atta the product manager asked the question

What if we see these bugs as an opportunity to make our product betters?

Turned out every team had a bunch of great ideas!
To make things concrete they decided to break them in to long term and short term goals.
Before leaving, they had a list of who does what by when.

The SREs stepped in to put alerts around disk usage and a runbooks to safely remove old data
The Data team decided having an out of band purge process was a bad design - and would handle the whole processing in Airflow.
The UI team was happy to use this opportunity to clean up some logging 
Since most of the C++ team was at a conference, it was decided they would update their support pages

For the long term the SRE decided their focus was going to be deployment frequency - no surprise there.
The Data team wanted to work on their change failure rate by copying over a representative sample of data from prod
The UI team started working on synthetic ui tests that would allow faster post release validation and reduce MTTR
For the C++ team, brining down C++ build times were the top priority.

## Closing Thoughts

A bug fix is rarely a quick code change.
A bug's life is a lesson in software development.
Continuous Questioning - What else needs a patch?
Is it our architecture? Our processes? Or is it us?
Technology will keep moving faster than we can keep up with.
Crisis will always be a part of software development.
How we respond to change and crisis, will define us and our products.
So lets be little kind to each other, and also ourselves.


