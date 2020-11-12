---
title: "Migrations under monopoly: Preparations"
layout: post
date: 2020-10-18 20:02
blog: true
tag:
- technology-migrations-series
description: "Migrations under monopoly: Preparations"
---

_This is the second installment in a series of blog posts on the topic of technology migrations. If you want to start from the very beginning, you can find an overview of the series and an index of the posts [here](http://poros.github.io/technology-migrations-series/)._

## Migrations under monopoly: Preparations

In this post and the ones to follow, I will go over my ideal model of large-scale migrations under monopoly and my personal recipe for how to run them successfully. To do so, we will follow the fictional migration of all software applications in the Starwalker company from their first-generation in-house logging framework, Antares, to their second-generation one, Betelgeuse. But before we start, let me tell you what this post will **not** cover.


### Start from the basics (somewhere else)

If you are **completely new** to technology migrations, I honestly recommend you **leave** this place to read [Migrations: the sole scalable fix to tech debt](https://lethain.com/migrations/) by **Will Larson** and/or watch his talk [Paying Technical Debt at Scale – Migrations @Stripe](https://www.youtube.com/watch?v=OFjvJmS_uDo). He is a much better writer than I am, and I learned a ton from the content he produced. Once you can articulate to your boss and your users **why** you'd want to run a migration, please be my guest again :)

I will also assume that:

* you are an expert in your technology domain
* you are used to software development
* you know how to build "the right thing"
* you know how to keep a high level of quality while operating with a finite budget, time and staff.

I know this is a lot to take for granted, but I want to keep this post focused and not turn it into a book :P

### Chapter 0 – A new star is born

_At Starwalker, the world-leading company for space travel virtual experiences, there is a running joke that if you chat for long enough with someone working in engineering, they will eventually start complaining about Antares. Developers hate it because it's hard to use, it's excruciatingly slow, and log lines often go missing. Maintainers hate it because it's a hot mess of legacy infrastructure and breaks every other night. Management hates it because it costs a ton of money to keep the servers running and it's hard to find people who want to work on it._

_When Luke from the Logging Infra team pitched a new-generation scalable logging framework which would fix all the users' complaints and would cost a fraction to run, the room could barely contain its excitement. Luke was going over the costs and risks involved in such a potentially huge effort, without doubt the biggest migration in the history of Starwalker to this day, but Leia, the CTO, had already made up her mind ten slides ago: Project Betelgeuse was born._

_There were plenty of teams with modern web services who wanted to get their hands on a prototype of Betelgeuse as soon as possible, and the Star Catalog team just happened to be the largest one. But convincing the Revenue team to let Luke use its ancient payments collection pipeline as a guinea pig for Betelgeuse, now **that** wasn't easy. Luke had to promise to offer strong delivery guarantees from the get-go, so that the team could keep extracting billing events from its logs. That said, the Revenue team was already losing 3% of those events every day (it even logs them twice!) and everyone knows how good an incentive 3% of revenue can be._

_While Luke was securing high-profile sponsors for the Betelgeuse project, the Logging Infra team had just shipped Abacus, a simple application which was continuously logging a bunch of lines to just read and count them every two minutes. People looked a little surprised when they heard it was still using Antares._

![Preparations](/assets/images/migrations_under_monopoly_0.png)
<figcaption class="caption">Preparations</figcaption>

### Preparations

Preparatory work doesn't show up on the chart, but it is foundational to successful migrations and establishes the relationships with the three actors in migrations: **the boss, the users and the team**.

First and foremost, you must make sure that your company **really** wants to embark on the migration. Migrations are long commitments with pretty unpredictable end dates and are hard to justify in terms of return on investment, so make sure that management is on-board and aware of all risks and costs. You'll need all the support you can get going forward.

While you talk with management, you want to find (at least) **two users** who are excited about the migration and would like to trial it early on (later we'll call them **sponsors**). There are additional constraints: at least one of them must have a pretty **straightforward use case** to migrate, while at least one other must have a pretty **hard and complex one**. In addition, I would strongly recommend that they are very significant in terms of **impact** for the company (e.g. the Revenue team), to maximize your early visibility. We will go over the reasons behind these additional constraints in one of the following blog posts.

The selection of the sponsors is by far one of the hardest parts of a migration, as it is pretty hard to find two of them respecting all the criteria. But don't cheat – this is important. And if you cannot manage to find them, are you really sure that this migration is truly what your company should be focused on right now? :P

Lastly, make sure that your team has at least one **internal use case** that could be migrated to the new technology; and if it doesn't, **create** one running on the **old** technology you want to migrate away from. [Dogfooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) is exactly what we are going to focus on in the next stage.

<div align="center">
<a href="http://poros.github.io/mum-alpha/">
<img style="max-width:5%" src="/assets/images/next_arrow.png" alt="Next">
<b><figcaption class="caption">Next</figcaption></b>
<figcaption class="caption">Migrations under monopoly: Alpha</figcaption>
</a>
</div>
