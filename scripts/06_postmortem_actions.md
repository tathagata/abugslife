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

## Opening Story Cliffhanger

The postmortem revealed a cascade of issues that led to the outage. While the immediate fix was simple—adding a `-r` flag to the cron job—the incident exposed deeper systemic problems. The story ends with the question: "Your patch fixed the bug. But what else needs a patch?" This sets the stage for discussing the broader lessons learned and the action items that emerged from the postmortem.

## Short-Term Actions

### SRE Team
- **What**: Alert on 85% of disk usage and update the runbook.
- **Why**: The lack of disk monitoring allowed the issue to go unnoticed until it caused a major outage.

### Data Team
- **What**: Improve error handling and move the purger job to Airflow.
- **Why**: The job's lack of backoff, exit conditions, and alerts led to a futile loop that blocked the pipeline.

### UI Team
- **What**: Refactor third-party library errors and improve the signal-to-noise ratio in logs.
- **Why**: Noisy logs made it difficult to identify the root cause of the issue.

### C++ Team
- **What**: Update the support rotation calendar.
- **Why**: The absence of key personnel during the incident delayed the resolution.

## Long-Term Focus

### SRE Team
- **Focus**: Faster and more reliable updates to production systems.
- **DORA Metric**: Deployment Frequency.

### C++ Team
- **Focus**: Reduce build times and improve testing efficiency.
- **DORA Metric**: Lead Time for Changes.

### Data Team
- **Focus**: Enhance data quality in non-production environments.
- **DORA Metric**: Change Failure Rate.

### UI Team
- **Focus**: Implement synthetic UI tests to validate post-release changes.
- **DORA Metric**: Time to Restore Service.

## Closing Thoughts

The incident was a wake-up call for the organization. It highlighted the need for better monitoring, robust error handling, and improved cross-team coordination. The short-term actions address immediate gaps, while the long-term focus aims to build resilience and prevent future incidents. The question "What else needs a patch?" serves as a reminder that fixing the code is only part of the solution—the real work lies in addressing the underlying processes and systems.


