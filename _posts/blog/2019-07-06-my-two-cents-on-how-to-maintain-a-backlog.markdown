---
title: "My two cents on how to maintain a backlog"
layout: post
date: 2019-07-06 16:00
blog: true
tag:
- yelp
- team-process
- team-lead
description: "Some suggestion on how to maintain a backlog"
---

## A note ##

This is an adaptation of one my posts on my Yelp internal blog. Some suggestions (like the ones specific to JIRA) won't apply to anyone, but the underlying concepts might still be relevant, so I decided to leave them.

Please note that with the word "backlog" I am referring to the backlog of tickets a team accumulates during the years of maintainance, not the backlog of tickets part of a scrum/agile project.

## One "truth" ##
I do have opinions about how teams should handle their backlog, but, knowing me, you would be surprised by the fact that I have only one single strong opinion on the topic (and you can quote me on this one):

> If you maintain something, you also maintain a backlog.
>
> _Antonio Uccio Verardi_


## Many Suggestions ##
The way you maintain your backlog depends on your team size, product maturity, your team goals, your user base, your company strategy, the weather forecast and many other factors I don't even know of, hence I don't have any advice for you that will surely fit your case.
I do have some suggestions for things that I tried out and that didn't spectacularly fail, though. For what it's worth, here we go:

#### Backlog by default ####

- Everything that is **not** labeled, goes into your backlog, **not** the other way around. I know it sounds crazy hard to do in JQL, but is much easier than making people label tickets consistently.
- If it's in the backlog, it isn't urgent.
- If you want something done now because it's urgent, create a P1 "Do now" ticket. By definition, it takes priority over any P2 "Do Next" ticket. That is not backlog, that is an urgent matter.
- If you happen to do the above, please make sure that any P1 is always in progress and assigned to someone. What's the point of go all the way down to tell people "Do Now" otherwise?
- If you see yourself creating/working on too many P1s "Do Now", your team has a big problem. I suggest your team to seek counseling or you to change team.

#### Do not make an habit of discussing backlog prioritization ####

- Maintain a set of top priority X tickets out of your backlog (with X being reasonably small) that people can choose from.
- Do **not** try to maintain the above X tickets or, even worse, the whole backlog in strict order of priority. The discussions you are going to have are not worth your team's collective time and they won't be enjoyable.
- Make everyone free to put tickets at the top of the backlog without much explanation. Discuss on JIRA or in meetings only if you really have to.
- It's the tech lead/team lead/manager's responsibility to make sure that something is always there at the top of the backlog.

#### Set up expectations, do not command ####

- Do **not** assign backlog tickets to people, let them choose from the top. (If you are not my manager, you cannot tell me what to do. If you are my manager, you are micro-managing me.)
- Setup a quota of time that every person in the team must devote to backlog before the end of the quarter. I have no idea what that number should be for your team, sorry.
- I suggest you have some kind of rotation so you always have someone working on the backlog at any given time. Users appreciate tickets with short turnaround.
- If you setup a rotation, remember to be flexible. Life happens and backlog is not on-call: no need for swaps.


#### For managers only ####

- Tickets can be big or small, high or low priority: counting them doesn't work, estimating the whole backlog is meaningless and judging people based on how many tickets or story points they delivered sucks anyway.
- Ask people to record how much time they spent on backlog and check at the end of the quarter that this time meets the expectations you set. Your goal here is to maintain the backlog **not** to use it for the performance review of your engineers.
