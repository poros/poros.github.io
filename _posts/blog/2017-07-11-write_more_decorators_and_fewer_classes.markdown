---
title: "write more decorators (and fewer classes)"
layout: post
date: 2017-07-11 19:00
blog: true
tag:
- python
- talk
description: "Talk given at EuroPython 2017"
---

<iframe width="960" height="569" src="https://www.youtube.com/embed/VLlLIL5ZYLI" frameborder="0" allowfullscreen></iframe>

---

<iframe src="https://docs.google.com/presentation/d/1BRK4tpYozcPVUPg2x0cIQ88uDgNcpArfxP6wA3Dprs0/embed?start=false&loop=false&delayms=60000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

---

## Abstract ##

In the wake of famous talk [Stop Writing Classes](https://www.youtube.com/watch?v=o9pEzgHorH0) by Jack Diederich, I’d like to present a pattern that can be used to design clean and pythonic interfaces for programmers based on replacing single-method classes with decorated functions.

This pattern is already used by some famous frameworks and libraries, like [Pyramid](https://trypyramid.com/), but I believe it isn’t that well-known to many (even experienced) Python developers and is not as widely used as it deserves.

I’ll show how this pattern can be employed to improve a programming interface which is used by an internal log processing framework at Yelp. This will demonstrate how a more functional approach, leveraging the power of Python decorators, can lead to simpler, more beautiful and easier to understand code.

However, this talk doesn’t suggest giving up classes altogether, but making use of them only when they are truly useful. In fact, the use-case I’m going to analyze will combine classes, functions, and decorators to make the best out of these tools.

Given that the presentation is going to be very code-oriented, the talk is intended for an audience of developers who are already familiar with most Python constructs, including decorators, even though the concept will be briefly introduced at the beginning of the talk. But, if you are one of these people, I promise you that the code will speak for itself.

---

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Write more decorators (and fewer classes) by Antonio Verardi - <a href="https://t.co/5i8uA7QfiO">https://t.co/5i8uA7QfiO</a>. This talk presents a pattern that can be used to design clean and pythonic interfaces for programmers based on replacing single-method classes with decorated functions.</p>&mdash; Python Software (@ThePSF) <a href="https://twitter.com/ThePSF/status/1017119332957065217?ref_src=twsrc%5Etfw">July 11, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
