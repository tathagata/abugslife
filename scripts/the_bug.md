Ding 
Its 9:35 am, Monday morning on the 57th floor of Antellienge in the financial district in New York city.  
A notification shows up on Flick's phone who was just about settle down on his seat and take the first sip of his coffee.  
His heart sank as he recalled he was on support this week  
And as he caught the name of the client in the emailid his heart almost stopped  
Goldkern Sacks is a high-frequency trading (HFT) firm operating at the bleeding edge of commodity markets, specializing in ultra-low-latency arbitrage of agricultural futures.
This was going to be a very long morning  

Flik goes into the chat message to assess how bad it is  
As an L1 support, he is the first line of defence - and has to ackknowledge to the client that their issues are getting addressed  
None of the visualizations on the dashboards are loading  
He quickly does a confluence search to see if there was a runbook for such and error - but the search isnt useful - a number of hits, not a single one useful  

9:45 - completely clueless, Flik now tags the data alerts to page those on the UI team

9:47 - B is this week's ui team member on support, he quickly asks for screenshots. Is this problem happening only with one client?
Is it only one user? Have they cleared their cache? Are they on a supported browser? Is the firewall on the client side blocking websocket traffic?
Flik quickly realizes these are the things he needs
to reach out to the client for and opens up a bridge call and invites the customer to join in.
And who joins in Hopper, the person who runs the show at Grainman Sachs and he is not happy.

Flik somehow collects the information that the UI developer was asking for and relays that in internal chat.
The UI dev has been going over the logs, there isn't a lot to work with - standard error messages from third party libraries not loading - but nothing usual.

By now the SRE on call is chiming into the thread - they are checking the logs in the cluster that runs the frontend pods.
And pasting a few error messages on the chat 
The UI dev quickly replies that they are aware of these errors, they have been happening forever - it has nothing to do with the outage

The support chat email integration now shows an email coming in from Hopper with a number of Antintelligence top executives in asking for an escalated approach
An incident manager is now on the call and trying to coordinate the messaging.

Wait I now see some logs that says that the data field in the json payload is empty and the rows counts is zero.
The backend is not providing any data. Please reach out to Robert - he wrote the web service, but I think he is at CPP con this week. 

The SRE team memeber - Was there a release this weekend? What could have changed?


The SRE asks have we reached out to the Data team yet to see if their Airflow cluster is healthy?
Who is on support from the Data team? Looks like that person is away for lunch? Can we reach out to someone else on their team? Also please dm thier boss

The data team boss is added to the huddle - he is very hands on and now looking through the logs in the Airflow cluster
Seems like one of the batch jobs have failed to read a



This a mail from Hopper, himself who runs the whole HFT show and he is complaining they have not recieved any data since the markets opened this morning  
Their loses are mounting and now a number of top bosses of Antelligence have been included in the email from Hopper  
Atta checks all the logs, no failure messages - checked the chat again to see if anyone else has replied to the message 
@Everyone we need some help here - I don't see any


9:47 - Atta was in the middle of fine tuning a query when she saw the alert
Must be yet another data permissioning request, just a few quick changes and she can get back to the story she was working on
Uh oh - this does not look good at all

10:00 The SRE on support rotation noticed the message and immediately runs his homegrown chatops aggregator which only he has access to
it collects logs from all the pods from multiple clusters, 
