*Ding.*  

It’s 9:35 a.m. on a Monday morning.  
Fifty-seven floors above the relentless pulse of New York’s financial district  
it was just another day at Ant Intelligence, a leading market data provider.  
The air was thick with the scent of fresh coffee and  
the relentless crackling of mechanical keyboards resonated thru the open-plan office.  

Slim, from L1 support had barely taken the first sip of his coffee as he notices an alert on the support channel.  

**SLIDE**  

> OpsGenie: “P1: Goldkern Husks: Dashboards not loading!!!”  

Goldkern Husks is the biggest commodities trader on the street.  
Hopper, their head of trading, is a legend in the industry.  
He is not known for his patience.  
His name that sends chills through all of L1 support.  

Slim scans through all his old notes, old jira tickets ...  
After 10 minutes of franticly searching for “dashboard outage.” "Empty dashboard".- he has nothing.   
He tags the ui team in desperation.  

**SLIDE**  

All GH dashboards are down.  
Searched Confluence, StackExchange, ServiceNow, Runbooks!  
Need someone from the UI team to take a look!  

Dot, the incident manager, jumps in with a hundred questions!  

**SLIDE**  

Is it just one client?  
How many users impacted??  
Any screenshots??  
Did you screenshare with the user??? *cc:@rosie,@atta*"  

Dot has tagged the UI team lead, Rosie.  
Atta, the product owner.  
Rosie responds with in minutes, with even more questions.  

"Did you ask them to clear their browser cache?  
Are they _even_ using a supported browser?  
It could be _their_ firewalls are blocking websockets!"  

Slim takes a deep breath and reaches out to the client on zoom.    

After 10 minutes of back and forth, he finally has answers, and sends them to Roise.  
Now, he has to deliver the bad news to the whole team.  

**SLIDE**  

Ok - checked with the client.  
All good on their end!  
Hopper is escalating this, as 15 mins SLA was breached!"   

This frustrates, Rosie - Slim has found nothing useful!  

**SLIDE**  

"Argh! I've been looking through the screenshots and logs,  
its just third party libraries errors I've been asking the team to clean up for weeks!",  

**SLIDE**  

Atta brings in more bad news.  

"*@all* *Hopper has escalated to Ant Intelligence execs*.  
We need coordinated updates - WHY is our status page still showing healthy  
Can the SRE team check? @manny"   

Manny, the SRE on support, has been secretly lurking on the chat and jumps in.  

**SLIDE**  
"Lets calm down here a bit - health checks as all pods are healthy, no crashes anywhere!",  

Rosie loses it. Her team will be blamed for this - but it must be the backend team like last time.  
**SLIDE**  

"I'm sure the C++ team released over the weekend without telling us! *@Dot,@atta* Why is no one from C++ team here?",   

Slim, incidentally knew the answer, as he had tried to reach out to them earlier.   

**SLIDE**  

"Everyone is at CPPCon this week!",  

**SLIDE**  
A few mintues roll by, and Manny replies.  

"There were no releases.  
I just checked Argo.  
But something interesting...  
the processor pod logs have a json field - `rows_read: 0` on every msg!",  
**SLIDE**  

Right then, the slack bot brings in another alert from Hopper  

"OpsGenie: *P1: Goldkern Husks: hopper@gh.com Any Progress yet? What's the ETA for fix???*",  

Atta, now desperate, tags the data team lead, Flick.  
He is a real genius, and always trying to do something fancy ...  

"*@all* This is all hands of deck. @Flik what's @manny saying? Can you check the onprem airflow cluster?",  

Flick, is always plugged into slack, he types in checking ... but does not hit send.  
Instead he checks his DataDog dashboards for the Airflow cluster.  

**SLIDE**  

Just as he suspected, the nightly ticker load batch has not completed yet.  
It should have completed before markets opened.    

**SLIDE**  

"Looks like the nightly ticker job has *NOT* completed ...  
its stuck for 15 hours, generally gets done in 5 hours  
 trying to find what's going on   

Another 30 minutes crawl by.  
Yes! he has done it again - found the bug that caused the outage!  
He quickly replies  
"I think I found the smoking gun!  
The disk where the job is writing is full, so its crashing but it keeps failing silently and retrying ...",  

Manny says  
"We received no disk pressure alerts!"  
Slim replies    

"This disk was kept clean by a cron job on the host itself  
and there is no disk pressure alerts.  
I've cleaned up manually and rerun with more workers,   
now it should be done within a couple of hours!"  

I can explain during postmortem!    

Later that day during the postmortem  
Slim takes the lead and explains what he found    

I think I found the smoking gun ...    

Recently we got a huge performance boost from sharding the ticker file  
so instead of one large file, we now write multiple smaller files by date and exchange    

Unfortunately, the clean up job that removes the old files was not updated in this change as it was not in the same code repo!    
So the copilot missed it.    

I just vibe coded the patch and pushed it to prod  
so we can call this a day       


Manny, looks at Slim and asks    

Your patch has fixed the bug. But what else needs a patch?    


Slim pauses, and thinks for a moment and asks    
What do you mean?    
I've deployed the fix    
the dashboards are back up    
What else could need a patch?    


To be Continued ...





