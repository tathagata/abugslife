Okay - quick show of hands - anyone in the audience on support rotation this week?
Incidentally, I am on support this weekend for a system migration that's gone live and today the system is going to be put under some stress tests.
So I am just hoping this talk doesn't blow up on my face.

I know I'm holding you back from lunch, so I'll quickly introduce my self - my name is T, I work for London Stock Exchange group and handle things Site Reliability for the Low Latency group. I am developer turned SRE, so I used to create the bugs before - now I help ship them! #slide

This has given front row seats on many outages - and after the crisis is over and we are doing retrospective or post mortem, I have always found myself asking the question

We have patched the code. 
The hot fix has been deployed. 
Crisis is averted.

But - Is the bug really gone? 
Or will it come back again as a bigger crisis? 
What else other than code needs a patch?

If those questions resonate with you, I think you'll find this talk useful.
My goal is to share some of the lessons I've learned from my own mistakes, seeing others do things better.
I'll try to keep it practical and actionable without any specific tool recommendations so that you can adopt the principles in your own tooling.
And hopefully your next bug fix will be a little less stressful.


I want to break this talk into four parts:
## The New Normal - Why change our attitude towards bugs?
## Measure Baselines - Where are we today?
## Change Workflows - What we need do change?
## Build Partnerships - How do we enact the change?

