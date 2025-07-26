*Ding.*

It’s 9:35 a.m. on a Monday. Fifty-seven floors above the relentless pulse of New York’s financial district, it was a typical morning at Ant Intelligence, a leading market data provider. The air was thick with the scent of fresh coffee and the relentless crackling of mechanical keyboards filled the open-plan office. 

Slim, from L1 support had barely taken the first sip of the coffee of that morning as he notices a notification on the support channel.

> OpsGenie: “P1: Goldkern Husks: Dashboards not loading!!!”

Goldkern Husks is the biggest client for Ant Intelligence.
Hopper, is the top boss in the commodities trading division.
His name that sends chills through all of L1 support. 

Slim scans through all his notes, old jira tickets ...
After 10 minutes of frantic searching “dashboard outage.” "Empty dashboard".- he has nothing. 
He tags the ui team in desperation.

**READ SLIDE**

Dot, the incident manager, jumps in with a hundred questions! And tags the UI team lead Rosie and Atta, the product owner.

**READ SLIDE**

Rosie responds with in minutes, with even more questions.

**READ SLIDE**

Slim takes a deep breath and starts tries to reach out to the client on the phone.

After 10 minutes of back and forth, he finally has answers, and sends them to Roise.
Now he has to deliver the bad news to the team.

**READ SLIDE**

This frustrates, Rosie - nothing useful what Slim has found.

**READ SLIDE**

Atta brings in more bad news.

Manny, the SRE on support, has been secretly lurking on the chat and jumps in.

**READ SLIDE**

Rosie loses it. Her team will be blamed for this - but it must be the backend team like last time.
**READ SLIDE**
Slim, knew where the Cpp team was, as he had tried to reach out to them earlier.

**READ SLIDE**
A few mintues roll by, and Manny replies.

**READ SLIDE**

Right then, the slack bot brings in another alert from Hopper

**READ SLIDE**

Atta, the product owner, now tags the data team lead Flick. He is always trying to do something fancy ...
**READ SLIDE**

**READ SLIDE**
Flick is always plugged into slack, he types in checking ... but does not hit send.
Instead he checks his DataDog dashboards for the Airflow cluster.
**READ SLIDE**
Just as he suspected, the nightly ticker load batch has not completed yet.
It should have completed before markets opened.
The job is stuck in a loop. It keeps trying to write its output file, but the disk is full.
**READ SLIDE**
Another 30 minutes crawl by.
Yes! he has done it again - found the bug that caused the outage!
He quickly replies
**READ SLIDE**


Another 30 minutes crawl by.
Every attempt to write fails with an ‘OSError: No space left on device,’ but the code just catches the error and tries again, over and over. There’s no backoff, no alert, and no exit condition. The job never finishes, and the pipeline is completely blocked.”



Slim nods. “Exactly. The dashboards are empty because the data never gets written. The job is just burning CPU, stuck in a futile loop, and no one noticed until now.”

```Manny says
    We havent seen any alerts come in for disk pressure. 
```

```Slim
   Right ... there is a nightly cron job that cleans up T-1 files. Let me check if that is failing.
```

Slim:
```
    Nothing in syslog - it is almost impossible to run any commands on that host, but looks like none of the files have been deleted.
    I am going to purge them manually and then restart the job!
    I am confident this will fix the issue - we will scale up the workers and we can clear up this queue within 2 hours. Please let the client know.
```

Later that day during the postmortem
Slim takes the lead and explains what he found.

    I think I found the smoking gun ... 
    Recently we made a change for speedup the jobs where instead of one large file, we now write multiple smaller files by date.
    The clean up job that removes the old files was not updated to handle this change as it was not in the same repo!
    So the copilot did not catch it.
    I've patched that code, so we can call this a day.


Manny, looks at Slim and asks

Your patch fixed the bug. But what else needs a patch?


Slim pauses, and thinks for a moment and asks
    What do you mean? I've deployed the fix, and the dashboards are back up. What else could need a patch?


To be Continued ... 





