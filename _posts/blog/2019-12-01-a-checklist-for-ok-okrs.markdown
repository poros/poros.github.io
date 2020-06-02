---
title: "A checklist for OK OKRs"
layout: post
date: 2019-12-01 21:00
blog: true
tag:
- okrs
- team-lead
- yelp
- talk
description: "A checklist for OK OKRs"
---

# The checklist

Checklist to verify that a **Key Result** is at least OK.

- [ ] &nbsp;**It tracks the achievement of the objective**
- [ ] &nbsp;**It is objectively measurable**
- [ ] &nbsp;**It delivers value**
- [ ] &nbsp;**It is reasonably resilient to scope change (it does not commit to a specific solution)**
- [ ] &nbsp;**It can provide reasonably accurate partial scores (it is not binary)**
- [ ] &nbsp;**It is clear enough for readers without much context**

Run yours through it and think over how you can improve them to tick all boxes.

# Talk

If you fancy watching a short talk rather than reading words, this is a remote talk that I did as part of the Yelping From Home: The Tech Talk Series on May 14th 2020 (apologies for the poor audio quality). I would still recommend reading the blog post though, as it presents many more examples.

<div align="center">
<iframe width="840" height="473" src="https://drive.google.com/file/d/1BnJH64b-0lWSga0cydwkPyVb0rvo_aTi/preview?t=4m7s" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

# A couple words more

Some time ago I wrote down a thought experiment I did as an internal blog post at Yelp. The thought experiment was about improving the [OKRs](https://en.wikipedia.org/wiki/OKR) my team had drafted for the quarter. I cannot really publish the original post here, but I wanted to at least share the output of that mental exercise: a checklist to test the quality of key results (or KRs).

I pretty much like the idea to run tests for some kind of documents we write as it's standard to do for the code we write. I know that frameworks to do such a thing automatically exist, but I find checklists easier to share and simple enough for other people to pick them up without committing into learning and deploying some new technology. They are also very much used in the aviation industry as they have been helping out to strengthen the safety of flights all around the world for many years, so yay checklists.

The items in this one are the result of many of my errors as a writer of OKRs, but since I cannot share the key results I wrote at Yelp, I'll try to demonstrate how to use the checklist with some fictional ones. Let's start.

# Examples

## KR #1: Increase uptime from 99.5% to 99.9%

Let's take the happy path first and let's see how the checklist behaves with a simple and allegedly well-written key result.

- [X] &nbsp;**It tracks the achievement of the objective**

  Yep, if we assume the objective is something like "Make our infrastructure rock-solid".

- [X] &nbsp;**It is objectively measurable**

  Bonus point for specifying also the baseline of 99.5%, which makes it much easier to measure.

- [X] &nbsp;**It delivers value**
- [X] &nbsp;**It is reasonably resilient to scope change**

  This is extremely important, actually. Instead of committing to a specific initiative in order to achieve our goal, this allow us to shift our efforts midway to another initiative if the first one turns out to be too hard or ineffective.

- [X] &nbsp;**It can provide reasonably accurate partial scores**
- [X] &nbsp;**It is clear enough for readers without much context**

OK, let's try something else, but still pretty alright.

## KR #2: 100% of our services are running on AWS

This one looks pretty OK, too, but let’s see for ourselves.

- [X] &nbsp;**It tracks the achievement of the objective**

  Yep, if we assume the same objective as before: "Make our infrastructure rock-solid:.

- [X] &nbsp;**It is objectively measurable**
- [X] &nbsp;**It delivers value**
- [X] &nbsp;**It is reasonably resilient to scope change**

  Borderline, but good enough, I would say. The KR does not mention any specific AWS technology, so it gives us quite a bit of flexibility while migrating services. It won’t be resilient to a change of cloud provider, but given that such a thing is a very rare event, I think we can live with that.

- [X] &nbsp;**It can provide reasonably accurate partial scores**

  Very much, since we can just use the percentage of migrated services as score.

- [X] &nbsp;**It is clear enough for readers without much context**

So far so good. Time to see what happens with a pretty bad key result.

## KR #3: Deploy memcache in front of the emoji service

Assuming that every company has at least an objective like "Deliver better and faster emojis to our customers", let's have a look at how the checklist behaves in front of a supposedly bad key result:

- [ ] &nbsp;**It tracks the achievement of the objective**

  A cache is likely going to help, but it is not directly tracking what we want to achieve. We might find out later on that this solution is not enough to get to the response time we had in mind.

- [X] &nbsp;**It is objectively measurable**
- [X] &nbsp;**It delivers value**
- [ ] &nbsp;**It is reasonably resilient to scope change**

  Here we are committing a capital sin of OKRs: going for a specific solution instead of aiming for the result we are interested in. In case we discover a cheaper or more efficient solution, this KR would either become meaningless or even prevent us from adopting it, so not to score 0.

- [ ] &nbsp;**It can provide reasonably accurate partial scores**

  Nope, this one is binary: we either deploy the cache or we don't.

- [ ] &nbsp;**It is clear enough for readers without much context**

  I would argue that a reader could figure out that memcache is a technology which can be used to make GET requests faster with a Google search, but we could definitely make this more clear, too.

As we can see, with four failed checks, the checklist identified quite clearly a bad KR.

Alright, let’s move to something only slightly broken and therefore more interesting.

## KR #4: GET emoji calls complete in less than 300 ms

With the same objective as before, let’s see how a key result which is just a bit off gets caught by the checklist:

- [X] &nbsp;**It tracks the achievement of the objective**

  Yes, of course, but by looking at this item, we should start to see that something is off. So... all requests have to be served under 300ms? Is a single slow request enough for us to score 0?

- [X] &nbsp;**It is objectively measurable**
- [X] &nbsp;**It delivers value**
- [X] &nbsp;**It is reasonably resilient to scope change**

  We are not proactively committing to any solution, so we are free to try a simple approach first (like using a cache) instead of committing to something expensive from the get go (like extracting the endpoint into a separate service).

- [ ] &nbsp;**It can provide reasonably accurate partial scores**

  The problem we noticed above will make this check fail. If we get a single slow request the first day, we’ll score 0 for the whole quarter regardless of the fact that we might be doing a great job from that moment onward.

- [X] &nbsp;**It is clear enough for readers without much context**

At this point, we should have caught that the metric we chose is kinda off and that we should move to something more similar to an SLO, like "99% averaged over 1 minute of GET emoji calls complete in less than 300 ms for 99.9% of the previous month".

After having seen first hand how the checklist works, the next thing I want to show you is how we can make a key result better iterating through the checklist until we check all boxes.

# From bad to OK KRs: platform release

## KR #1: The event processing platform is in beta

When it comes down to OKRs for platform or infrastructure teams, this kind of key results is pretty common. Imagining an objective like "Powering the next-generation event processing at Company", let’s have a look at the checklist:

- [X] &nbsp;**It tracks the achievement of the objective**
- [ ] &nbsp;**It is objectively measurable**

  Well, technically it is: we are done when we cut the release. However, if we don’t have a magical company-wide definition of beta that applies to any type of software, when to call the release is going to be all but objective.

- [ ] &nbsp;**It delivers value**

  This is at least debatable, because someone could argue that if we don’t have any customer using the software or if we don’t deliver the features they want, we are not producing any value. But OKRs don’t really play well with multi-quarter investment plans, so I understand if you happen to feel that a software release is a decent proxy for value for those kinds of projects.

- [X] &nbsp;**It is reasonably resilient to scope change**

  Yes; being the definition of beta fuzzy, we have plenty of room to change the scope of the release in case something goes wrong or something new comes up.

- [ ] &nbsp;**It can provide reasonably accurate partial scores**

  Nope, because the way to measure the success of this key result is binary: we either released the beta version or we didn’t. If your company is into publishing mid-quarter scores for OKRs, then this will very likely show up as 0.

- [X] &nbsp;**It is clear enough for readers without much context**

This one turned out to be pretty problematic: it fails three of the criteria and barely passes another one. Let’s try to change it a bit to check at least one more box, starting from delivering value.

## KR #2: The event processing platform powers at least one beta use case

This should have improved things quite a bit; let’s give it a try:

- [X] &nbsp;**It tracks the achievement of the objective**
- [X] &nbsp;**It is objectively measurable**

  Yes, if we have some use case that we identified as beta running on the platform, then we reached our goal.

- [X] &nbsp;**It delivers value**

  With a beta use case running on the platform, we are undoubtedly delivering some value.

- [X] &nbsp;**It is reasonably resilient to scope change**

  Yes, if we are forward-looking enough to find a pool of potential users that could work as a safety net in case the one we selected pulls off the project for some reason outside of our control. Or if we discover during the quarter a big blocker that prevents the selected user from using the platform. This also has the nice side effect of not overfitting our beta release on a single user.

- [ ] &nbsp;**It can provide reasonably accurate partial scores**

  Nope, because the way to measure the success of this key result is still binary: we either have a beta use case running or we haven’t. The mid-quarter score will likely be 0 and the risk of scoring 0 at the end of the quarter is probably even higher than before (given that before we could have cheated and cut the release out anyway to hit the former KR)

- [X] &nbsp;**It is clear enough for readers without much context**

Only one is failing; let's try to do even better focusing on something more finely measurable.

## KR #3: Implement 100% of the features required for one beta use case of the event processing platform

This is a bit of a mouthful, but bare with me if that’s a problem for you. Let’s go through the checklist for now.

- [X] &nbsp;**It tracks the achievement of the objective**
- [X] &nbsp;**It is objectively measurable**

  With a KR like this one, we can assume that we had to reach out to a bunch of potential beta users, gathered their requirements and agreed on a minimal feature set to allow each of them to use the platform. I like when planning fosters good development practices.

- [X] &nbsp;**It delivers value**
- [X] &nbsp;**It is reasonably resilient to scope change**

  Yes, for the same reasons of the previous iteration of this key result.

- [X] &nbsp;**It can provide reasonably accurate partial scores**

  We can score this key result as the percentage of features implemented of the ones in the minimal feature set. If you want to be fancy you can assign them a weight equal to their estimate in story points, but I honestly recommend keeping things simple.
- [ ] &nbsp;**It is clear enough for readers without much context**

  This one is a tough one. It’s obvious that this is not as clear as the two previous iterations, unfortunately, and OKRs are all about communication. An executive looking at this KR might not have enough context to understand what this minimal set of features is. Just **linking** them in the KR definition could be enough, but that depends on the people in your organization.

If you can settle for this KR, I would advise you to do so. If you cannot, a thing that I tried with success at Yelp is to simplify complex KRs with the addition of **scoring criteria** where to hide part of the complexity. Let’s have a look at them in action.

## KR #4: The event processing platform powers at least one beta use case
### Scoring: % of the implemented features required for a beta use case

Usually people within the team or second level managers look at the scoring criteria for KRs, while executives pay attention only to the actual key result. Let’s run it through the checklist.

- [X] &nbsp;**It tracks the achievement of the objective**
- [X] &nbsp;**It is objectively measurable**
- [X] &nbsp;**It delivers value**
- [X] &nbsp;**It is reasonably resilient to scope change**
- [X] &nbsp;**It can provide reasonably accurate partial scores**
- [X] &nbsp;**It is clear enough for readers without much context**

If you can make scoring criteria part of your organization’s habits, they could really help you out when writing an OK key result is proving quite hard. However, shifting behaviors in a big group of people takes a good deal of effort, so I would recommend you to stick to standard KRs if you manage to get by with just them.
