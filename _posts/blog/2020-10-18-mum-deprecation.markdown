---
title: "Migrations under monopoly: Deprecation"
layout: post
date: 2020-10-18 20:08
blog: true
tag:
- technology-migrations-series
description: "Migrations under monopoly: Deprecation"
---

_This is the eighth installment in a series of blog posts on the topic of technology migrations. If you want to start from the very beginning, you can find an overview of the series and an index of the posts [here](http://poros.github.io/technology-migrations-series/)._

## Migrations under monopoly: Deprecation

### Chapter 6 – The fault in our stars

_The air above the Logging Infra pod was a strange mixture of excitement, anxiety and anticipation on May 4th. Luke asked for the privilege of deploying the branch to turn off Antares, and the team was happy to grant his wish. In retrospect, suspiciously happy._

_Not that they hadn't done their due diligence: Luke had sent out the announcement plenty of time ahead, the five must-be-migrated use cases were already running on Betelgeuse, and two more teams had migrated by themselves (not without grumbling) after hearing about the shutdown date. In case of unforeseen disaster, they had the rollback procedure ready too._

_There was no point in feeling so anxious, really. Everything went on as if nothing had happened. For around 5 hours, 34 minutes, 22 seconds and a bunch of milliseconds. Then literally every single star known to man went dark, and nothing was left but infinite black space. The virtual space of Starwalker's virtual space travel experiences, of course._

_The rollback procedure brought the light back to the universe pretty quickly, but the investigation for the postmortem which followed took most of the team's evening. The killer of stars and devourer of worlds turned out to be the legacy navigation system which powered Starwalker's space travel. The impossibility of reading log lines with the coordinates of the space travelers convinced the navigation system that everyone had reached the very far end of the virtual universe, after which there was indeed only black. Code entropy and intricate design, all combined with the lack of a formal owner, had prevented Luke from identifying the navigation system as one of those must-be-migrated use cases._

_Three weeks later, and with the kind help of Han and Rey, Luke was ready to try again. This time, the universe stayed bright._

_Not everyone shared Luke and the team's happiness and relief, though. Two teams had somehow missed this entire Antares to Betelgeuse migration thing for 16 months straight, and their workflows were now broken. Luke could not be persuaded to bring Antares back to life once again, but offered them help with migrating. They were so satisfied with the offer that Luke would never hear back from them again._

_The day the last reference to Antares had been removed from code bases and documentation, Luke sent a card, cookies and Betelgeuse stickers to everyone who had been involved in the migration. That evening the team (yep, Han included) celebrated in the office with drinks and funny stories. At the end of the night, Luke was genuinely surprised when Leia passed him one of those DeathStar VR headsets. He couldn't help but smile as Antares lit up in a shiny supernova._

![Deprecation](/assets/images/migrations_under_monopoly_6.png)
<figcaption class="caption">Deprecation – Victims</figcaption>

### Deprecation – Victims

The last and final stage is the one where you are going to pull the weight of your **monopoly** to reach the **termination** (a.k.a. it won't run anymore), or at least the complete **deprecation** of the old technology, meaning that no more maintenance time will be spent on it and that it could stop working at any time.

I call the users of this final stage **victims**, as their use case will be sacrificed for the good of the migration and the company. These may be laggards whose use case was not important enough for your team to migrate in the previous stage, or people who are downright hostile to the new technology and who would never have migrated. They may end up switching to a competitor snowflake system or deprecating their use case altogether, but the cost will be localized to their team and not spread across the entire company for years to come, making it much easier to manage in the future.

On the date you set in your announcement, **shut down the old system** (or stop maintaining it), but be ready to **roll back**. As well as being good practice, this is necessary for the migration, so make sure you know how to do it.

Now **watch the world burn**. If nothing burns too hot (or at all), congratulations, you did a great job! If something burns too hot, **roll back and don't give up**!

You should have now **discovered** one or more must-be-migrated use cases that you missed the first time. This is incredibly common in large companies, where it's practically impossible to gather all the context about a certain use case and understand how many things actually depend on it.

Set a **new** deprecation date, migrate the newly discovered must-be migrated use cases, send a migration progress update and try again. **Repeat until the old system has finally been terminated or deprecated**.

Don't celebrate just yet. You have to **clean up **everything even remotely related to the old system: code, monitoring and especially tutorials or documents that could make someone resurrect the old system by mistake. Don't skip this step, or the old system will come back and haunt you!

Now you can send the **final** migration progress update and **celebrate with your team**: you have earned it! :)

<div align="center">
<a href="http://poros.github.io/migration-checklist/">
<img style="max-width:5%" src="/assets/images/next_arrow.png" alt="Next">
<b><figcaption class="caption">Next</figcaption></b>
<figcaption class="caption">The migration checklist</figcaption>
</a>
</div>
