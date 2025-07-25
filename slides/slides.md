---
marp: true
theme: default
# class: invert
html: true
---

# <!--fit--> <span style="color:red;">Disclaimer</span>

--- 
# <span style="color:red;">Disclaimer</span>
The following narrative is a work of pure fiction.  

Any similarities to actual people, places, or events are entirely coincidental and absolutely unrelated to the speaker's professional life.  

Furthermore, the speaker categorically denies any emotional attachment to animated films featuring entrepreneurial insects.  

_This statement has been notarized by the Ministry of Totally Serious Bugs._

---


<!-- _class: split -->

![bg left:60%](../assets/01_office.png)

---

![bg fit](../assets/01_slack_01.png)

---

# <!--fit--> To Be Continued ...

---

![alt text](../assets/01_lseg.png)
Tathagata Dasgupta (T)
Low Latency Engineering Group

---

![bg fit left:60%](../assets/01_dev_sre.png)
  

---
<!-- _class: split -->

![bg fit left:50%](../assets/01_front_row_seats.png)
✅ Patch deployed ➡️ Crisis averted


---
![bg fit left:50%](../assets/01_front_row_seats.png)
                ➡️ Will it come back? 
                ➡️ What else needs a patch?
                 

---

🐞 The New Normal

📊 Measure Baselines 

🔄 Change Workflows 

🤝 Build Partnerships

---
🐞 The New Normal  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_Why_</span> change our attitude toward bugs?  

📊 Measure Baselines 

🔄 Change Workflows   

🤝 Build Partnerships

---
🐞 The New Normal  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_Why_</span> change our attitude toward bugs?  

📊 Measure Baselines  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;">_Where_</span> are we today?  

🔄 Change Workflows   

🤝 Build Partnerships  

---
🐞 The New Normal  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_Why_</span> change our attitude toward bugs?  

📊 Measure Baselines  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;">_Where_</span> are we today?  

🔄 Change Workflows  &nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_What_</span> needs to change?  

🤝 Build Partnerships

---

🐞 The New Normal  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_Why_</span> change our attitude toward bugs?  

📊 Measure Baselines  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;">_Where_</span> are we today?  

🔄 Change Workflows  &nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_What_</span> needs to change?  

🤝 Build Partnerships  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_How_</span> do we make it happen?  

---

# 🐞 The New Normal  
<span style="color:red;">_Why_</span> change our attitude toward bugs?

---

![bg vertical h:300](../assets/01_anthropic.png)
![bg h:300](../assets/01_meta.png)
![bg h:200](../assets/01_microsoft.png)
![bg h:300](../assets/01_google.png)

---
<!-- _class: split -->
![bg left fit](../assets/01_vibecoding.png)
⚡ Coding at the speed of thought
🦥 Debugging at the speed of sloth 

---
<!-- _class: split -->
![bg left fit](../assets/01_fast_cheap_right.png)
# <span style="color:red;">Mo code, mo bugs</span>
➡️ Unrealistic Deadlines
➡️ Tradeoffs
➡️ Ever changing landscape


---
<!-- _class: split -->

# <span style="color:red;">LOSS</span>

![bg left fit](../assets/01_order_vs_got.png)
➡️ **value to the customer**


---

<!-- _class: split -->
![bg left fit](../assets/01_knight_capital.png)
# <span style="color:red;">LOSS</span>
➡️ value to the customer 
➡️ **financial**, reputation, human life


---

<!-- _class: split; -->
![bg left fit](../assets/01_reputation.png)
# <span style="color:red;">LOSS</span>
➡️ value to the customer 
➡️ financial, **reputation**, human life

---

<!-- _class: split -->
![bg left fit](../assets/01_boeing.png)
# <span style="color:red;">LOSS</span>
➡️ value to the customer 
➡️ financial, reputation, **human life**
➡️ pride, ownership, craftsmanship

---
<!-- _class: split -->
![bg left fit](../assets/01_blame.png)
# <span style="color:red;">BLAME</span>
➡️ value to the customer 
➡️ financial, reputation, human life
➡️ **pride, ownership, craftsmanship**


---
# 🐞 Right Mindset

* opportunity to plug the gaps, not a blame game
* learning checkpoints, not personal failures
* debugging as a discipline, not just occasional damage control
---

# 📊 Measure Baselines  
<span style="color:red;">_Where_</span> are we today? 

---
<!-- _class: split -->
![bg left fit](../assets/01_gaming_metrics.png)
> If you can't measure it, you can't improve it.
* code coverage
* test pass rate
* cyclomatic complexity

---

# Yet more metrics
<!-- _class: split -->
![bg left fit](../assets/dora-swiper.gif)
DORA
DevOps Research and Assessment 

---
## How often do you deploy?

| **Metric**               | **High Performers**       | **Mid Performers**        | **Low Performers**        |
|---------------------------|---------------------------|----------------------------|----------------------------|
| **Deployment Frequency**  | **Multiple times/day**    | Weekly to monthly          | Less than monthly          |

* one metric to rule them all 💕

---

## Why you cannot deploy faster?
<!-- _class: split -->
| **Metric**               | **High Performers**       | **Mid Performers**        | **Low Performers**        |
|---------------------------|---------------------------|----------------------------|----------------------------|
| **Lead Time for Changes** | **Hours**                | Days                       | Weeks to months            |

> Too many manual steps?
> Slow build times?
> Slow test execution?
> Too many approvals?
> Architectural limitations to achieve zero downtime deployments?
> Upstream dependencies and Downstream impact?

---

## How often do your changes fail?

| **Metric**               | **High Performers**       | **Mid Performers**        | **Low Performers**        |
|---------------------------|---------------------------|----------------------------|----------------------------|
| **Change Failure Rate**   | **<15%**                 | 15-30%                     | >30%                       |
> Technical debt with brittle areas in the code base that need refactoring?
> Are there gaps in your testing pyramid?
> Are new tests getting added for every bug fix?
> Are regression tests flaky?
> Does your pre-prod environment mirror production?
> Quality of Test data - velocity, variety, volume?


---

## How fast do you bounce back?

| **Metric**               | **High Performers**       | **Mid Performers**        | **Low Performers**        |
|---------------------------|---------------------------|----------------------------|----------------------------|
| **Time to Restore Service** | **<1 hour**             | <1 day                     | >1 day                     |
> Are the Alert Quality and Volume good enough? 
> Are your runbooks, support rotation, upcoming release pages up to date? 
> Are there knowledge and access control gaps in your team? 
> Are the team members feeling safe during a crisis? 
> Are there back up plan when the key people are unavailable?

---
## DORA
| **Metric**               | **High Performers**       | **Mid Performers**        | **Low Performers**        |
|---------------------------|---------------------------|----------------------------|----------------------------|
| **Deployment Frequency**  | Multiple times/day        | Weekly to monthly          | Less than monthly          |
| **Lead Time for Changes** | Hours                    | Days                       | Weeks to months            |
| **Change Failure Rate**   | <15%                     | 15-30%                     | >30%                       |
| **Time to Restore Service** | <1 hour                 | <1 day                     | >1 day                     |

---

🔄 Change Workflows  &nbsp;&nbsp;&nbsp;&nbsp; <span style="color:red;">_What_</span> needs to change? 

---

<!-- _class: split -->
![bg left fit](../assets/01_shift_left.png)
* Test Driven Development
* Pair Programming

---

![traditional](../assets/01_traditional.png)

---

![shiftleft](../assets/01_shiftleft.png)

---
<!-- _class: split -->
![bg left fit](../assets/01_shiftleft.png)
# Deployments
- **Blue Green, Canary**
- **Synthetic Monitoring**
- **Feature Flags**
- **Chaos Engineering**

---


<!-- _class: split -->
![bg left fit](../assets/01_shiftleft.png)
# Observability
> Customer should not be part of your monitoring stack!
- Actionable alerts, not noise
- Dashboards for debugging, alerts for action
- Logs, Metrics, Traces are the besties you need
- Periodic reviews of alert and thresholds

---

![bg left fit](../assets/01_shiftleft.png)
# Dev Experience
> Happy devs ship better code 
- DevContainers
- Pre-commit Hooks for Lint, Code Quality, Security Scanning
- Meta prompts (CLAUDE.md)

---
![bg left fit](../assets/01_shiftleft.png)
# Partnership 
> bugs that happen before the code
- Empathy
- Trust
- Honest Communication

---
<!-- _class: split -->

![bg left:60%](../assets/01_office.png)

---

# Postmortem Action Items

**WHO** does **WHAT** by **WHEN**


---
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