---
title: "The migration checklist"
layout: post
date: 2020-10-18 20:09
blog: true
tag:
- technology-migrations-series
description: "The migration checklist"
---

_This is the ninth and last installment in a series of blog posts on the topic of technology migrations. If you want to start from the very beginning, you can find an overview of the series and an index of the posts [here](http://poros.github.io/the-technology-migrations-series/)._

# The migration checklist

If you've endured this blog post series until the end, you may well be interested in a checklist to follow while running migrations, so you won't have to read the entire thing again when you need it ;)

![Migration under monopoly](/assets/images/migrations_under_monopoly.png)
<figcaption class="caption">Migration under monopoly</figcaption>

- [ ] &nbsp;Before you start
  - [ ] &nbsp;Make sure you have a monopoly over your technical area
  - [ ] &nbsp;Check whether your team can migrate everything by itself in a reasonable time
  - [ ] &nbsp;If you can, migrate everything by yourselves and **stop** here
- [ ] &nbsp;Preparations
  - [ ] &nbsp;Make sure your company really wants to do this migration
  - [ ] &nbsp;Find a use case internal to your team or create one (using the old system)
  - [ ] &nbsp;Find at least one sponsor teams with an easy use case
  - [ ] &nbsp;Find  at least one other sponsor team with a hard use case
- [ ] &nbsp;Alpha – You
  - [ ] &nbsp;Write design document
  - [ ] &nbsp;Build prototype
  - [ ] &nbsp;Write migration plan
  - [ ] &nbsp;Set an estimated end date for the migration (you'll miss it)
  - [ ] &nbsp;Dark-launch your internal use case and compare with production
  - [ ] &nbsp;Make sure your company really wants to do this migration (again)
  - [ ] &nbsp;Migrate your internal use case
  - [ ] &nbsp;Announce the alpha release
- [ ] &nbsp;Beta – Sponsors
  - [ ] &nbsp;Dark-launch the sponsors' use cases and compare the results with production
  - [ ] &nbsp;Write the first draft of the migration guide
  - [ ] &nbsp;Make sure your company really wants to do this migration (yes, again)
  - [ ] &nbsp;Set up a channel to broadcast regular migration progress updates (don't stop until the end)
  - [ ] &nbsp;Subscribe management to the above channel
  - [ ] &nbsp;Migrate the easy use cases using the migration guide
  - [ ] &nbsp;Migrate the hard use cases using the migration guide
  - [ ] &nbsp;Send a migration progress update and announce the beta release
  - [ ] &nbsp;Polish the migration guide
  - [ ] &nbsp;Wait and help whoever asks to be migrated (if anyone)
- [ ] &nbsp;Automation – Bystanders
  - [ ] &nbsp;Polish your technology until you feel confident
  - [ ] &nbsp;Write automation to migrate most use cases without users' intervention
  - [ ] &nbsp;Automatically track your migration progress
  - [ ] &nbsp;Wait
  - [ ] &nbsp;Make sure your company really wants to do this migration (it is not too late)
  - [ ] &nbsp;If you decided to stop, do a retrospective
  - [ ] &nbsp;Draft a release announcement focused on the benefits for the users
  - [ ] &nbsp;Set an estimated end date for the migration (you'll miss it again)
  - [ ] &nbsp;Announce widely the stable release, the deprecation of the old system and your migration plan
  - [ ] &nbsp;Stick deprecation warnings all over the old system documents and user-facing tools
  - [ ] &nbsp;Automatically migrate all the use cases you can
  - [ ] &nbsp;Automatically create tickets for all remaining use cases
  - [ ] &nbsp;Send migration progress update
  - [ ] &nbsp;Wait
- [ ] &nbsp;Nudges – Adopters
  - [ ] &nbsp;]Nudge all remaining users to migrate (be creative!)
  - [ ] &nbsp;]Wait
  - [ ] &nbsp;]Check migration progress
  - [ ] &nbsp;]Send migration progress update
  - [ ] &nbsp;]Repeat until the number of use cases migrated per round is low and constant (or zero) for at least two iterations
- [ ] &nbsp;Fat tail – Laggards
  - [ ] &nbsp;Identify the remaining use cases that must be migrated
  - [ ] &nbsp;Remind management and the team that you have to finish this
  - [ ] &nbsp;Tell the owners you will take care of migrating their use cases for them
  - [ ] &nbsp;Set an estimated end date for the migration (this time, stick with it)
  - [ ] &nbsp;Communicate as widely as possible that the old system will be terminated on that date
  - [ ] &nbsp;Migrate the must-be-migrated use cases
  - [ ] &nbsp;Send migration progress update
- [ ] &nbsp;Deprecation – Victims
  - [ ] &nbsp;Shut down the old system (but be ready to roll back)
  - [ ] &nbsp;Watch the world burn
  - [ ] &nbsp;If it burns too hot, roll back
  - [ ] &nbsp;Set an estimated end date for the migration (don't give up!)
  - [ ] &nbsp;Migrate the newly discovered must-be-migrated use cases
  - [ ] &nbsp;Send migration progress update
  - [ ] &nbsp;Repeat until the old system has been shut down
  - [ ] &nbsp;Delete anything even remotely related to the old system (or it will haunt you)
  - [ ] &nbsp;Send final migration progress update
  - [ ] &nbsp;Celebrate with your team (you have earned it)
