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
The SRE had asked the question what else needed a patch?
Hours later, and a lot white boarding later, the teams came up with some short term and long term action items.


The SREs stepped in to put alerts around disk usage and a runbooks to safely remove old data
The Data team decided having an out of band purge process was a bad design - and would handle the whole processing in Airflow.
The UI team was happy to use this opprotunity to clean up some logging 
Since most of the C++ team was at a conference, it was decided they would update their support pages

For the long term the SRE decided their focus was going to be deployment frequency - no surprise there.
The Data team wanted to work on their change failure rate by copying over a representative sample of data from prod
The UI team started working on synthetic ui tests that would allow faster post release validation and reduce MTTR
For the C++ team, brining down C++ build times were the top priority.

## Closing Thoughts

The incident was a wake-up call for the organization. 
It highlighted the need for better monitoring, robust error handling, and improved cross-team coordination. 
The short-term actions address immediate gaps, while the long-term focus aims to build resilience and prevent future incidents. 
The question "What else needs a patch?" serves as a reminder that fixing the code is only part of the solution—the real work lies in addressing the underlying processes and systems.


