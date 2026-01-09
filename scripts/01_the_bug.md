*Ding.*  

It was 9:35 a.m. on a cold January morning.
Fifty floors above New York's financial district, it was a typical Monday at Ant Intelligence.
Ant Intelligence is one of the leading market data providers which services top-tier hedge funds and trading firms around the world.
Petabytes of data flow through their systems every day, powering trading decisions worth millions of dollars.
The Real-Time business is one of the most profitable units of Ant Intelligence.
Stakes are always high.

**SLIDE 5**

Slim works for L1 support at An Intelligence. He was just about get the first coffee for the day as his phone buzzed.
He never got that first sip.  

An alert flashes on the support channel.  

**SLIDE 6**  

> OpsGenie: "P1: Goldkern Husks: Dashboards not loading!!!"

Three exclamation marks. Never a good sign.

**SLIDE 7**

Goldkern Husks—the biggest commodities trader on the street.
Hopper, their head of trading, is a legend in the industry.
The kind of legend that makes entire L1 support team crawl back into their shell.  

Slim tears through his notes. Old Jira tickets. Confluence pages.
Ten frantic minutes pass by as he searches for "dashboard outage," "empty dashboard," "GH loading issues"—
He has Nothing concrete.
Desperate - he tags the ui team lead, Rosie. 

**SLIDE 8**  

All GH dashboards are down.  
Searched Confluence, StackExchange, ServiceNow, Runbooks!  
Need someone from the UI team to take a look!  

Dot, the incident manager, fires off questions like a prosecutor.  

**SLIDE 10**  

Is it just one client?  
How many users impacted??  
Any screenshots??  
Did you screen share with the user??? *cc:@rosie,@atta*"  

Atta is the product manager.
Rosie is the UI team lead.

Rosie responds within minutes, with even more questions.  

"Did you ask them to clear their browser cache?  
Are they _even_ using a supported browser?  
It could be _their_ firewalls are blocking websockets traffic!"  

Slim takes a deep breath - and sends a Zoom invite to Hopper!

After 10 minutes of back and forth, he gets off the call with Hopper.
Still shaking from the adrenaline rush, he summarizes the findings.
And prepares to deliver the bad news to the whole team.  

**SLIDE**  

Ok - checked with the client.
All good on their end!
Hopper is escalating this, as 15 mins SLA was breached!"

Rosie's blood pressure spikes.  

**SLIDE**  

"Argh! I've been looking through the screenshots and logs,
it's just third party library errors I've been asking the team to clean up for weeks!",  

**SLIDE**  

More bad news comes from the product manager, Atta.

"*@all* *Hopper has escalated to Ant Intelligence execs*.  
We need coordinated updates - WHY is our status page still showing healthy  
Can the SRE team check? @manny"   

Manny, the SRE on support, has been secretly lurking on the chat and jumps in.  

**SLIDE**  
"Lets calm down here a bit - health checks are passing - all pods are healthy, no crashes anywhere!",  

Rosie feels anything but calm at this point.
This is the second big outage this month.
Her UI team is already behind schedule for their releases.
Yet another bug fix is the last thing they need.

OR is it the backend team breaking things again like last time?

**SLIDE**

"I'm sure the C++ team released over the weekend without telling us! *@Dot,@atta* Why is no one from C++ team here?",

Incidentally, Slim, from his years of experince doing L1 support, had proactively reached out to the C++ team lead, Helimlich. 
He knews the answer

**SLIDE**  

"Everyone is at CPPCon this week!",

Of course they are.

**SLIDE**
A few minutes roll by. Manny, the SRE replies.  

"There were no releases.  
I just checked ArgoCD.  
But something interesting as I was checking the pod logs ...  
the processor pod logs have a json field - `rows_read: 0` on every msg!",  
**SLIDE**  

Right then, the slack bot brings in another alert from their client, Hopper  

"OpsGenie: *P1: Goldkern Husks: hopper@gh.com Any Progress yet? What's the ETA for fix???*",  

Atta, now desperate, tags the data team lead, Flick.
Flick is a genius - but he is the kind of engineer who optimizes first, documents never.  

"*@all* This is all hands on deck. @Flick what's @manny saying? Can you check the onprem airflow cluster?",  

**SLIDE** 

Flick is always plugged into Slack. He types "checking..." but doesn't hit send.
Instead, he checks his DataDog dashboards for the Airflow cluster.  

**SLIDE**  

Ooops! the nightly ticker load batch job is still running.
It should have completed before markets opened.

**SLIDE**

"Looks like the nightly ticker job has *NOT* completed ...
it's stuck for 15 hours, generally gets done in 5 hours
trying to find what's going on

Thirty minutes tick by
each minute feels like one an eternity.
Then Flick's message drops.

"I think I found the smoking gun!
The disk where the job is writing is full, so it's crashing but it keeps failing silently and retrying ...",  

This triggers the SRE Manny
"We received no disk pressure alerts!"
To that, Flick replies

"This disk was kept clean by a cron job on the host itself
and there are no disk pressure alerts.
I've cleaned up manually and rerun the job with more workers,
now it should be done within a couple of hours!"

I can explain during postmortem!

Later that day, the postmortem room is packed.

Flick takes the lead and goes straight to the whiteboard.

"Found the smoking gun. Remember that performance optimization I pushed last month?
Sharding the ticker file—split one massive file into smaller chunks by date and exchange.
Great for performance. Terrible for disk management.

The cleanup cron? Still looking for the old monolithic file.
Different repo. Different deployment. Copilot never saw it.

So the files piled up. Disk filled. Job crashed silently. Kept retrying.
No alerts because the disk wasn't under 'pressure'—it was just full."

He pauses.

"I've patched it. Pushed to prod. Dashboards are back."

Manny looks up.

"Your patch fixed the bug. But what else needs a patch?"

Flick blinks. "What do you mean? The fix is deployed. Dashboards are up. What else is there?"

Silence.    


To be continued...





