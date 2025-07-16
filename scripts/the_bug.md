*Ding.*

It’s 9:35 a.m. on a Monday. Fifty-seven floors above the relentless pulse of New York’s financial district, a slack notification shows up on the support channel of the Ant Intelligence.
OpsGenie: “P1: Goldkern Husks: Dashboards not loading!!!”

Flick, from L1 support had barely taken the first sip of the coffee that morning as he notices the message.
Hopper is the top boss in the commodities trading division of Goldkern Husks - an name that sends chills through all of L1 support. 

Flick jumps between Slack, OpsGenie, Confluence, old jira tickets looking to troubleshoot somehow “dashboard outage.” "Empty dashboard".
After 10 minutes of frantic searching - he has nothing useful. 

@heimlich @atta.incidentmgr All GH dashboards are down. No visualizations. Client is blind. Need help ASAP.
Searched Confluence, runbooks. Need someone from the UI team to take a look!


Heimlich was about to go on his lunch break, as he saw the alert. Lunch is not happening today!

Is it just one client? One user? Did you ask them to clear their browser cache? Actually are they using a Supported browser? 
It might be their Firewall rule changes, can you ask to check if they are blocking websockets? And please ask them to include a few screenshots ... @Flik have you done a screenshare with any of the user?

Its past 10 o'clock and Flick can tell Hopper is losing it. 

```json
   "1720853740.000005": {
    "type": "message",
    "user_id": "W10000009",
    "text": "We need this fixed NOW. This is costing us millions.",
    "ts": "1720853740.000005"
},
```
Heimlich starts digging through logs - errors from third-party libraries - too noisy, he has been asking the team to do a clean up sprint for months - its so difficult to sift through this noise


```json
    Atta (atta.incidentmgr) escalates: @everyone Hopper has escalated to Antelligence execs. We need coordinated updates - why is our status page still showing healthy? Can the SRE team check? @manny
```

Manny, the SRE on support has been secretly larking on the chat.
He replies

```
   Well the health checks are passing - and we haven't seen any other
   clients complaining. I think it might be something on their side.
```

```
   Actually, I don't think it is them - and it isn't the UI team as well. Here, the row count in the json payload is showing zero.
   The backend API is not sending data. Most of the C++ guys are at CPPcon - @atta can you check who might be around?
```

```Well, unless there is a change why would it stop sending data all of a sudden? Do you know if they did a release this weekend?  
```

Hopper (hopper.debt) again: Still no data since market open. Losses are mounting. Top Antelligence execs are now on this thread.


Desperation sets in. 

```
Okay, no releases on ArgoCD - the pods are pretty old actually, I have also checked their logs no exceptions. However it looks like the service is constantly polling for data
```

```
Has anyone checked the Data team’s Airflow cluster?
```

```
The team lead of the Data Team is always on slack - within seconds he has checked his DataDog dasboards

“Wait. The nightly ticker load batch hasn’t completed yet—it should have completed before markets opened.”

Another 30 minutes crawl by.
Slim updates, “The job is stuck in a loop. It keeps trying to write its output file, but the disk is full. Every attempt to write fails with an ‘OSError: No space left on device,’ but the code just catches the error and tries again, over and over. There’s no backoff, no alert, and no exit condition. The job never finishes, and the pipeline is completely blocked.”

Atta frowns. “So the job is running, but it’s not making any progress?”

Slim nods. “Exactly. The dashboards are empty because the data never gets written. The job is just burning CPU, stuck in a futile loop, and no one noticed until now.”

```sre
    We havent seen any alerts come in for disk pressure. 
```

```
   Right ... there is a nightly cron job that cleans up T-1 files. Let me check if that is failing.
```

```
    Nothing in syslog - it is almost impossible to run any commands on that host, but looks like none of the files have been deleted.
    I am going to purge them manually and then restart the job!
    I am confident this will fix the issue - we will scale up the workers and we can clear up this queue within 2 hours. Please let the client know.
```

Later that day during the postmortem
```data
    I think I found the smoking gun ... 
    we made a change two weeks back where instead of writing one large file, we split it up the data and put them under a second level of directory by date. This chagne was done in the Airflow dag
    The clean up process that is scheuded in cron was doing `rm -f` and siltently failing to delete the files under this directory.
    It started filling up this disk which does not have any monitoring
    attached to it - so SREs never got any alerts! And it all manifested like this - the fix is really simple just one character add a -r in the cron jobs and we are done with this bug!
```

```
    Are we really? Asked the SRE - what about error handling 
```

Manny groans. “We need to add proper error handling, monitoring, and disk usage alerts. Otherwise, this will happen again.”

Atta sighs, “Let’s clear space, kill the stuck job, and refactor the code so it fails fast and notifies us next time. This can’t happen again.”





