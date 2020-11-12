---
title: "Migrations under monopoly: Nudges"
layout: post
date: 2020-10-18 20:06
blog: true
tag:
- technology-migrations-series
description: "Migrations under monopoly: Nudges"
---

_This is the sixth installment in a series of blog posts on the topic of technology migrations. If you want to start from the very beginning, you can find an overview of the series and an index of the posts [here](http://poros.github.io/technology-migrations-series/)._

## Migrations under monopoly: Nudges

### Chapter 4 – Lights from the past

_Luke was coming out of each team meeting a little more tired than the one before. He always found it very hard to keep people motivated during periods of prolonged calm, perhaps because he himself was losing motivation. The migration was dragging out, and all the momentum they had built up to the peak at the end of last year had been slowly eroded by six months of attrition._

_And the waiting. The waiting was the worst part for a man of action like him. He had promised to himself that he would keep up sending progress update emails, together with a nudge every two weeks, but he hardly had anything to report this time. The "Betelgeuse party" they threw right after the bulk migration had been both fun and a big success, with eight use cases migrated in the same month. The "Betelgeuse challenge", with a prize of T-shirts featuring the Betelgeuse logo, got them five more adopters. After that, his creativity kinda lost its edge. Targeted presentations didn't work out very well. His last two nudges had been stuff like "You can see that more than 95% of the company has already forgotten Antares' problems" or "All the other teams in the Infra group are already on Betelgeuse", to leverage the sense of guilt of the remaining teams. Based on the results, they must have been gangs of unredeemable criminals._

_He was still struggling to come up with something for the next nudge when he noticed Leia and Rey chatting over tea in the kitchen area. "I would be so down to help out with that project, Leia!" – open spaces must have legally de-penalized eavesdropping, Luke thought – "But we maintain both Antares and Betelgeuse now, and that's a ton of work. At the pace of one use case a month, we'll never truly get rid of Antares."_

_Luke opened the migration tracker once again, and this time he was able to see it clearly: they had reached the fat tail. It was again time for him to act. It's funny that all he needed to realize it was just a little nudge._

![Nudges](/assets/images/migrations_under_monopoly_4.png)
<figcaption class="caption">Nudges – Adopters</figcaption>

### Nudges – Adopters

The next phase of a migration under monopoly is the one of **nudges**, which we are going to use in order to compensate for the loss of momentum typical of the second half of migrations. I refer to the users targeted in this stage as **adopters**, as they are going to make a concrete effort to adopt your new technology for their use cases. It's easy to feel frustrated because of not-very-cooperative users or teams constantly delaying previous commitments. But appreciate that these people are still taking action to migrate to a new system which has been imposed on them (you know, monopolies), and it is very likely that their use cases are non-trivial as well, as you couldn't migrate them automatically in the previous phase, so feel grateful that they have not decided to ignore your requests instead.

The way to lead this stage of the migration forward is to establish a cycle of nudges, checks and updates.

As the first step of the cycle, send a **nudge** to the users who still have to migrate, to remind them that they should find some time to get through your migration guide and that you are happy to help. Nudging people effectively is an art, and being **creative** with your nudges can get you a long way. You can use wide-reaching channels such as speaking at your company live events, or you can reach out to each individual user privately (you should have a ticket for each of them already, so it should be fairly easy to keep track of what you've done). You can try to explain to them how this new feature of the system would make their life better; or you can use more subtle techniques, like telling them that everyone else in their group has migrated already. You can offer to embed an engineer in their team for the duration of the migration, or give them a voucher for a migration they will be leading soon. Be creative!

After the nudge comes the **waiting**, and after that you can use the **migration tracker** you built previously to check the progress of the migration and to send a **progress update** through your communication channel. This update will also work as a nudge to other future adopters!

And then repeat. Repeat until you find that **nudges don't work anymore**. This is easy to get wrong, and it is a pretty common mistake to either waste time in an endless loop of nudges or advance the migration to the next stage prematurely, with a much higher cost for your team than necessary. I would advise that you use your migration tracker to **check** that the number of migrated use cases per iteration is low and constant, or even zero, for at least two iterations before moving to the next phase; but the best exit condition really depends on your context.

<div align="center">
<a href="http://poros.github.io/mum-the-fat-tail/">
<img style="max-width:5%" src="/assets/images/next_arrow.png" alt="Next">
<b><figcaption class="caption">Next</figcaption></b>
<figcaption class="caption">Migrations under monopoly: The fat tail</figcaption>
</a>
</div>
