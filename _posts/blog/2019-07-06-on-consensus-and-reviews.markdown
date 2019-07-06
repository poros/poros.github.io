---
title: "On consensus and code reviews"
layout: post
date: 2019-07-06 16:00
blog: true
tag:
- yelp
- team-lead
description: "Some thoughts on consensus and code reviews"
---

## Note ##

This is an adaptation of one my posts on my Yelp internal blog. For context, Yelp fosters a culture of code reviews and accountability: all the code gets reviewed and the person who opened a pull request is responsible for the pull rquest to be accepted by reviewers. In addition, at Yelp every project has a project lead who is accountable for the entire success of the project, including meeting deadlines and making sure that the team works together effectively.

## What has consensus to do with reviews? ##

Some time ago, I got into a "beer-fueled" discussion on the topic of code reviews. In the middle of the discussion, I got asked:

> How come that you are so critical about stuff like food or movies and you are so lenient on code reviews?

I had never thought about it. Many of my close friends (people I don't work with) know that I like writing/doing reviews and often mock me for being "hyper-critical", so how come that my colleagues who experience my (code/document) reviews on a day-to-day noticed quite the opposite behavior?

Just the other day, instead, another colleague and I were discussing of how to move forward pull requests with a lot of comments or reviewers and I brought up an old RFC from IETF: [On Consensus and Humming in the IETF](https://tools.ietf.org/html/rfc7282). The RFC goes into detail on how IETF adopts "rough consensus" to move forward in case of disagreements on technical matters.

At that point, I kinda had an "ah-ah!" moment. Perhaps I am "lenient" on code reviews because of the way I think about consensus when I am working on something. On the other hand, when I do reviews of things which my reviews have no effect on (e.g.; a movie), I am not mitigated by my ideas on consensus and I revert to my "original self", that I guess can be labeled as "hyper-critical".

Since this only makes sense in my head for now, let's go over how I think about consensus, how I push my pull requests forward given my idea of consensus and, finally, how I do reviews because of that.

## Consensus, not unanimity ##

> We don't try to reach consensus in the IETF as an end in itself. We use consensus-building as a tool to get to the best technical (and sometimes procedural) outcome when we make decisions.

This may seem such an obvious statement that anyone would find hard to disagree. Translate this to the real world and you are bound to find yourself into troubles from time to time. Here is an (anonymized) story.

Years ago, I was playing the coordinator on an incident response team and we had to make a decision on what to do real quick. There was one investigator who didn't like the mitigation strategy another investigator proposed because it would have required a ton of manual cleanup later on. I acknowledged that this was indeed a problem, but that both the other investigator and me valued a speedy mitigation of the incident more and, not having another option ready, I decided to go forward with the proposed strategy. We mitigated and closed the incident in a matter of minutes and then spent hours doing the manual cleanup.

All in all, a decent outcome, right? Well, it took around two weeks for that investigator to speak to me again. And when they spoke to me, it was only to give me feedback because I decided to move forward without reaching unanimity in the group first. Imagine how happy they (and our manager) were when I replied with the exact some explanation I gave at the time and that I would have done the same thing again.

Nevertheless, recognizing that consensus is a tool and not an end is paramount to my approach to decision-making. I'm OK gulping down the occasional troubles, given how much benefit this unlocks. Since consensus is not my goal (resolving an incident, building a system, implementing a feature are), I don't have to focus on reaching unanimity and on making everyone happy. This allows me to avoid (most) decision deadlocks and to move much faster.

## Consensus in the rough ##

Let's now move to how I try to reach consensus to unblock a situation and what kind of consensus, given that it is not unanimity (neither tyranny). Actually, I'll let IETF do that for me.

IETF goes into much details to explain what they mean with "rough consensus" and I truly recommend you to read the [RFC](https://tools.ietf.org/html/rfc7282). For the sake of lazy readers, let me quote what in my opinion is their best example:

>If the chair of a working group determines that a technical issue brought forward by an objector has been truly considered by the working group, and the working group has made an informed decision that the objection has been answered or is not enough of a technical problem to prevent moving forward, the chair can declare that there is rough consensus to go forward, the objection notwithstanding. A good outcome is for the objector to understand the decision taken and accept the outcome, even though their particular issue is not being accommodated in the final product.

There are three points in this examples I want to focus on.

First, it is that we are always speaking in the context of an existing proposal. If there is not any proposal yet, I find pointless to look for consensus; it is just better to look for ideas. Anyway, it is the owner/chair/lead (so me, in the cases when I care about consensus) who is in charge to make sure there is at least one proposal (not necessarily to come up with it).

Second (and most important) is that any technical issue raised as an objection to a proposal must be truly considered by the working group/team/me (depends on the group composition). Considered means that the objection has been acknowledged and either incorporated/turned into the proposal or discarded because of an explicit trade-off by the group or the owner. If an objection of the minority is silenced through apathy or simply disregarded without explanation, then you are looking at tyranny (either of a person or of the majority), not rough consensus.

Third is that it is OK if the objector is not satisfied with the outcome of the decision, but the group has truly taken the objection into consideration (and this is for the owner/lead/chair to decide). Unhappy but heard, consensus but rough.

The RFC also makes sure to clarify what is not to be considered rough consensus (but consensus, instead):

> When a participant says, "That's not my favorite solution, but I can live with it; I'm satisfied that we've made a reasonable choice", that participant is not in the "rough" part of a rough consensus; the group actually reached consensus if that person is satisfied with the outcome. It's when the chair has to declare that an unsatisfied person still has an open issue, but that the group has truly answered the objection, that the consensus is only rough.

This might sound like arguing on semantics, but this example is central to the way I do approach reviews. This is how I draw the line between the stuff that is blocking a review or not.

## Pushing reviews to the finish line ##

Pushing a pull request out for review is basically gathering consensus around a change one wants to make. Group (aka reviewers), check. Proposal (aka code), check. Objections (aka comments/issues), check.

First obvious thing I do is considering each comment and either incorporate the suggestion in the code or reply to explain the trade-off for which I intend to discard the comment.

If the reviewer responds to advocate for their objection instead of approving the pull request and cannot persuade me to incorporate the objection in the pull request, I try to understand whether dropping the issue is something the reviewer could live with (approve the pull request) or if they consider it a fundamental flaw (and so block the pull request).

In case it is something they could live with, consensus is reached. I either:

- drop the issue documenting the trade-off;
- in case the comment is suggesting an improvement that I decided not to make due to scope or time constraints, I ticket it to be addressed in the future.

In case they consider it a fundamental flaw which would prevent them to approve the review, I act based on whether the approval from the reviewer is required to merge the pull request or not:

- if it is not, I go for rough consensus: as the owner of the pull request, I determine that the objection has been truly considered but it still stands, I document the trade-off I went for and drop the issue;
- if their approval is necessary, I cannot leverage rough consensus (remember that it is a mean, not an end), I have to find another way to advance the review.

Many open-source projects have specific rules on how to get out of this kind of decision deadlock, the most common being multiple reviewers. The approval of one or N of them is enough to move forward the pull requests even in case of strong objections from another reviewer. In case we are talking about the single owner or core maintainer of a project, the best course of action is probably to negotiate with the objector (negotiation is something I am getting interested into, so you may expect a follow-up post on the topic).

For extreme cases when a compromise cannot be found and you are in a working or structured environment, I recommend you ask the project lead/group to help out to reach rough consensus. Just be ready to accept that, in this case, rough consensus could also end up not being in your favor.

## The practice of letting reviews go ##

When I am reviewing someone else's pull requests, roles are swapped: I am not the owner who is trying to move the request forward, but the objector. However, knowing how I would act as the owner of the pull request, I make my comments in a way that would simplify the owner's job.

Practically, I always make sure that my comments are clear on whether the issue I raised is a blocking issue or not.

In [No Kings: How Do You Make Good Decisions Efficiently in a Flat Organization?](https://doist.com/blog/decision-making-flat-organization/) (I am not sure the author got the meaning of rough consensus right, but the blog post still makes pretty good points), the author suggests to structure comments in one of two ways:

> - “Not the best choice” feedback: “I don’t believe Solution A is the best choice, because XYZ. I believe Solution B would be better, but I accept that Solution A can work too.”
> - Fundamental flaws: “I believe Solution A is unacceptable because XYZ.”

This comment structure gets rid of one entire step for the pull requests owner who is trying to reach consensus, helping to speed the review out quite a bit.

In addition, the exercise of thinking whether the issue I am raising is something I cannot live with or not, helps me out putting the problems I found in the right perspective.

Let's take for example a comment of mine advising for a refactoring to make the code more readable and maintainable. There is little gain in blocking an improvement on status quo (aka the pull request) only because there is yet another improvement that can be done on top. The code in review does what it is supposed to do and is tested, so I can definitely live with it. I'll make sure to say that this comment is not a blocking issue. This way I have already helped the owner to reach consensus, but I still made my voice heard. If the owner replies to my comment saying that they do not have the time to refactor the code because this feature is blocking a whole team, I'm ready to let it go.

The more I practiced this "zen of comments", the least blocking issues I found myself opening. I have seen with my eyes that I was able to actually live with many things, so there wasn't really much of a point in arguing about them. On the contrary, I (and the owners of the pull requests) suddenly had a lot more time to focus on the fundamental flaws I pointed out. All in all, it is a pretty sweet spot to find myself into.

## tl;ra (too long; read anyway) ##
I mostly wrote this blog post because I wanted something to point people to during discussions. If you read it until the end, though, I should probably do something for you, too. 😉

Here is a summary of what I said, as quick refresher which you could use in case you decide to try this out in real life:

- Consensus is a mean, not an end
- Do not try to reach unanimity
- Incorporate objections or explain because of what trade-off you didn't incorporate them
- It is OK if someone is not satisfied with the decision, as long as their objections have been truly considered
- Make sure to understand whether the objector could live with the proposed solution or not
- Make sure that, when you object, you communicate whether you could live with the proposed solution or not
- Let it go, let it go
