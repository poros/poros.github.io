---
title: "Migrations under monopoly: The fat tail"
layout: post
date: 2020-10-18 20:07
blog: true
tag:
- technology-migrations-series
description: "Migrations under monopoly: The fat tail"
---

_This is the seventh installment in a series of blog posts on the topic of technology migrations. If you want to start from the very beginning, you can find an overview of the series and an index of the posts [here](http://poros.github.io/technology-migrations-series/)._

## Migrations under monopoly: The fat tail

### Chapter 5 – Children of a dying sun

_"Luke, you did plenty already, are you really sure we have to go ahead with this migration?" Leia remembered as soon as she saw the smile widening on Luke's face._

_"You know that we have to finish it. We are paying to run both Antares and Betelgeuse now, the time going into maintenance has doubled, people have to learn about both frameworks, and Antares will be a drag for any future innovation," Luke reminded her._

_"I'll be honest, GalacticEmpire Inc grew up to be a pretty worrying competitor in the space of… well, virtual space travel. Their latest feature, DeathStar, gives customers the opportunity to see how their favorite star would evolve at super-high speed, and become a supernova or a red giant." Leia wanted Luke to see where she was coming from. "The board considers Project Force our answer, and we need all the help we can get to release it next quarter. If Rey plus someone else on the team could give a hand, even temporarily…"_

_Luke let her finish. "May 4th." He did pause for dramatic effect. "May 4th is the day we shut down Antares. I have already told Rey that she is free to go help with Project Force. She said she wants to see this to the end, but I am sure you'll persuade her. You have your way with people."_

_Luke had identified 5 use cases out of the 17 left in the fat tail which must have migrated to Betelgeuse before they could turn off Antares. Missing even one of them would have resulted in critical failure for many of the core systems of Starwalker. The team was not exactly thrilled to work on five old pieces of software it did not own, but did prefer it to the prospect of maintaining both Antares and Betelgeuse forever. The owner teams, instead, were perfectly thrilled about not having to do the migration themselves. If you can afford it, waiting things out is a pretty effective negotiation strategy, Luke had to admit._

![The fat tail](/assets/images/migrations_under_monopoly_5.png)
<figcaption class="caption">The fat tail – Laggards</figcaption>

### Fat tail – Laggards

The following stage is the one where most abandoned migrations end up beached, because of the lost momentum and because the company's interest has moved on to something new and shinier which shows a lot of promise. I refer to this stage as the **fat tail** of use cases which, for one reason or another, have never been migrated and will likely never be. The users' profile for this phase is that of the **laggards**: they are not against the new technology, but they really don't find it compelling enough to prioritize adoption over everything else, and they ended up lagging behind. They might eventually migrate, though; in fact, in this phase you may still see some use cases migrated over time, but not nearly enough to finish the migration in a reasonable time.

The way to navigate out of this phase of excessive calm and probably low morale of your team is **to act**.

Start by identifying all the remaining use cases that **absolutely must be migrated**. By this I mean revenue-critical applications or widely used products – things that your company cannot afford, or doesn't want, to live without. Bring your freshly assembled list to management and your team, reminding them that you **must finish this**, to avoid incurring all the costs and pains of a failed migration that we've already discussed. Finally, reach out to each of the owners of these must-be-migrated use cases to tell them that your team will take care of migrating their use cases for them. I know this sounds frightening, but you must finish this, remember?

Set an estimated end date for the migration (you probably missed your previous one), and this time **try to stick to it**. The reason is that you will communicate as widely as possible that **the old system will be terminated on that date**. And this is a promise you'll want to keep if you want to maintain enough credibility to do what comes next.

Now migrate one must-be-migrated use case after the other, and send migration progress updates regularly to build up momentum and expectations for the end of the old technology and the migration altogether.

<div align="center">
<a class="next-arrow" href="http://poros.github.io/mum-deprecation/">
<img style="max-width:5%" src="/assets/images/next_arrow.png" alt="Next">
<b><figcaption class="caption">Next</figcaption></b>
<figcaption class="caption">Migrations under monopoly: Deprecation</figcaption>
</a>
</div>
