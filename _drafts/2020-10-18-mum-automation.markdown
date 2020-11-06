---
title: "Migrations under monopoly: Automation"
layout: post
date: 2020-10-18 20:05
blog: true
tag:
- technology-migrations-series
description: "Migrations under monopoly: Automation"
---

_This is the fifth installment in a series of blog posts on the topic of technology migrations. If you want to start from the very beginning, you can find an overview of the series and an index of the posts [here](http://poros.github.io/the-technology-migrations-series/)._

# Migrations under monopoly: Automation

## Chapter 3 – The sun is closer from up here

_"379. Is that a prime number? It's gotta be a prime number." Rey's mind was toying with what was showing up in the migration tracker. "379 repositories left to migrate to Betelgeuse versus… well, 5. It's kinda hard to test the regular expression with only 5…". Her thought was interrupted by Luke entering her field of vision._

_"Hey Luke, I think I am practically done with the automation for the migration. I've run the code refactoring tool in dry run mode on a couple large repos, and with this set of rules I managed to switch to the new reader API for…"._

_Rey was the most promising engineer in Luke's team. On the good days, also the most talkative: "… run a modern kernel; with that option we should be able to bind the local Betelgeuse agent to the same port of Antares transparently from the client perspective and without losing in-flight messages as planned in the design phase. Have you got any questions?"_

_"379." Luke's cunning smile widened as he watched Rey's reaction. "Is that a prime number?"_

_"It's gotta be a prime number." Leia could not resist mocking Luke a little._

_"It's a big number." Luke knew how to take a joke, but not this time. "And among them there are plenty of legacy code bases. Rey is great,_

_ and the automation she built will work for most repositories, but some of them will have to be migrated manually. From what she says, we could end up with thirty or more situations pretty much like the billing workflow one. This is definitely going to bleed into the next two quarters." Luke was going at full steam. "I know that rolling back would be pretty rough now after all this work we put in, but it's still an option. Are we sure that we really want to do this migration?"_

_"Yes, this is still very important for the company and I believe that we should move forward." Leia didn't like the fact that her voice sounded a little annoyed. "I appreciate you being considerate, but how many more times are you gonna ask me that?"_

_"That was the last one. What about you ask me next time?" Luke's distinctive grin was back on his face._

_"I will if you take up the whole team for yet another year." Somehow Leia liked him more that way. "You have five minutes at the next All Hands."_

_"With Betelgeuse, you can choose between guaranteed event delivery and low-latency logging, but in our tests even the latter has a delivery rate 100 times better than Antares. It's been powering five production use cases for months, and we measure the uptime in the five nines." Luke had rehearsed the sales pitch many times, but speaking to the entire company still made him a bit nervous. "We are going to migrate more than 90% of the use cases automatically in the coming weeks, so most of you won't even have to do anything! With your help, we plan to be entirely off Antares by the last quarter of the year."_

_Looking down at the 32 tickets tracking the repositories which required manual migration, Luke was not too sure about that "last quarter of the year" anymore. Looking down from the height of those 347 use cases migrated in less than three weeks, of course. 347. Was that a prime number?_

![Automation](/assets/images/migrations_under_monopoly_3.png)
<figcaption class="caption">Automation – Bystanders</figcaption>

## Automation – Bystanders

The third stage is the one of **automation**, as it is going to play a key role in migrating the **bulk of users** from the old technology to the new one. The users of this phase have well-understood and rather simple use cases at this point, and they are (hopefully) the vast majority. These users are going to stay mostly **passive** and only watch the migration unfolding under their eyes through your chosen channel of communication, and for these reasons I call them **bystanders**. This is also going to be the peak of your migration, so be ready for the hike.

To climb up the peak, it's time for you to consider investing in **automation**. In my own personal statistical sample, this is the single most neglected part of migrations, probably because you might be able to get by without it. The returns for your team and company are enormous, though, so I would deem it shortsighted to cut automation down in order to save budget or time.

The first automation you want to invest in is **automating away as much as possible of what is written in your migration guide**. To begin with, a quick and dirty prototype is enough, but your ideal goal is to eventually be able to **automatically migrate most use cases**. For the best results, I would recommend factoring this into the **initial design phase**.

The second automation you want to invest in is an automatic **tracker of your migration progress**. This can be very easy, like a list and a counter of migrated use cases over all the ones running on the old system. If your company has been around for a while, this will likely already exist. If it doesn't, many future engineers will be in your debt.

Before getting into the weeds of this migration phase, take some time to **polish** your product and your migration automation while you **wait** for the feedback from the beta users. Waiting might feel excruciating when you've gained so much momentum from the beta stage, but it is giving your users and management breathing room to establish **trust** in the new system just by using it and seeing it running. If you still have some lingering reliability problems, now is probably the best moment to iron them out before going full throttle. Waiting time is also a good time for retrospection.

I have built into my recipe for migrations a good deal of escape hatches to avoid the catastrophic failure of a never-ending or abandoned migration, and this one is the **last chance** you have. Be absolutely certain that your company **really** wants to do this migration: **it isn't too late**. Failing now will have a non-negligible cost, with three production use cases to roll back, a probably compromised trust relationship with your sponsors, and a big blow to your team morale and motivation. But, trust me, this is nothing compared to what your company and your team are going to spend over time maintaining the complexity of two systems that no one is satisfied with until a third, harder, migration comes over. Don't be scared of throwing away months of development time: those are [sunk costs](https://en.wikipedia.org/wiki/Sunk_cost) and you'll never get them back. You, your team and management should rely on each other to make the best decision with the data you have.

If you have decided to stop here, do a [retrospective](https://en.wikipedia.org/wiki/Retrospective) to learn how to fail faster next time. If you have decided to move forward, now don't give up until the very end.

It's time to draft a release announcement for your **stable** release of your product, where "stable" simply means "no major bugs, reliable and performant, interfaces will change rarely and in a backward-compatible way, used in production". Some products enter this stage in what people call **perpetual beta**, which is exactly like before minus the stable interfaces assurance to allow for faster development cycles.

What you want to go for is up to you, but I would strongly advise you to draft this announcement focusing on the **benefits for the users** of the new system compared to the old. You want to convince people to migrate (more about this in the next stage), and your best shot at it is now, when all eyes are going to be looking at you. Ah, and don't forget to set a new estimated end date for the migration: you missed the old one, remember? Don't worry, it'll happen again.

Once you are ready, announce as **widely** as possible the stable release of the new system, your migration plan and the **deprecation** of the old system. It's also a good time to stick deprecation warnings all over the old system documents and user-facing tools (doing it earlier would confuse users).

Now it's time to execute your migration plan and **migrate all the users with simple use cases** using the **automation** that you built and used in the past. You can do this in batches if it makes it easier, of course. Keep sending migration progress updates, relying on the information shown by your automatic **tracker**.

Usually something weird or wrong comes up for a small percentage of use cases at this point. **Create tracking tickets** for them, as for all the other **more complex use cases** which could **not** be migrated automatically, and move them to the next phase. But before going there, let's wait a bit to establish **trust** again: you've just migrated most of the users!

<div align="center">
<a href="http://poros.github.io/mum-nudges/">
<img src="/assets/images/next.png" alt="Next">
</a>
<b><figcaption class="caption">Next</figcaption></b>
<figcaption class="caption">Migrations under monopoly: Nudges</figcaption>
</div>
