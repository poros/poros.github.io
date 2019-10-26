---
title: "How to write Rust instead of C and get away with it"
layout: post
date: 2018-07-25 16:00
blog: true
tag:
- python
- rust
- avro
- talk
description: "Talk given at EuroPython 2018 and Rustlab 2019"
---

## Update from Rustlab 2019 (with new PyO3 library) ##

<iframe width="960" height="569" src="//www.slideshare.net/slideshow/embed_code/key/aSzQwswpeVhJjJ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

## Europython 2018 ##

<div align="center">
<iframe width="840" height="473" src="https://www.youtube.com/embed/u6ZbF4apABk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>

---

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vRdsmXNJ97pxg276ZCxafhSMHYSBPBHENi-uiHOeyS5u9NSlM3VTk3aQmklUdEG_lMPdnwiMGPFM6X8/embed?start=false&loop=false&delayms=3000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

---

## Abstract ##

Have you ever tried optimizing a super-slow Python application and thought: "Oh! I wish I could just write this bit it in Rust"? Well, turns out you can! We will show you how Rust is a better alternative than C to make your programs lightning fast, and how to get away with it; without your users even noticing.

As Infrastructure Engineers at Yelp, the challenge we face everyday is: scale. Yelp is mostly a Python shop and while this is great for development velocity, our work often revolves around making Python applications run faster. Until now, we have been using different techniques: faster interpreters, or, more often, C code.

Given its safety guarantees, performance and promise of better tooling than C, we decided we had to give Rust a try. The initial results helped reinforce that there was a lot of opportunity for Rust to play an important role in our production code.

Yelp heavily relies on the [Apache Avro](https://avro.apache.org/) serialization format for its internal infrastructure. During the talk, we will show how we implemented an Avro serialization/deserialization library in Rust, how we were able to call it from Python (and in theory from any other language) with very little code, using tools such as [cbindgen](https://github.com/eqrion/cbindgen/), [CFFI](https://cffi.readthedocs.io/en/latest/) and [Milksnake](https://github.com/getsentry/milksnake/).

This talk would outline how easy it is to write performant code in a language like Rust and call it from Python applications without users even realizing it, making this a great solution for production services.

This talk is a joint talk realized with [@flavray](https://github.com/flavray).

You can check out the project [here](http://poros.github.io/avro-rs).

---

Here is the awesome summary of the talk realized during the presentation by one of the attendees (thanks!)

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/europython?ref_src=twsrc%5Etfw">@europython</a> A really interesting talk about using <a href="https://twitter.com/hashtag/rust?src=hash&amp;ref_src=twsrc%5Etfw">#rust</a> instead of a C extension by <a href="https://twitter.com/porosVII?ref_src=twsrc%5Etfw">@porosVII</a> <a href="https://twitter.com/flavray?ref_src=twsrc%5Etfw">@flavray</a> 🎉 Thank you! <a href="https://twitter.com/hashtag/EuroPython?src=hash&amp;ref_src=twsrc%5Etfw">#EuroPython</a> <a href="https://twitter.com/hashtag/sketchnotes?src=hash&amp;ref_src=twsrc%5Etfw">#sketchnotes</a> <a href="https://twitter.com/hashtag/notes?src=hash&amp;ref_src=twsrc%5Etfw">#notes</a> <a href="https://twitter.com/hashtag/Python?src=hash&amp;ref_src=twsrc%5Etfw">#Python</a> <a href="https://t.co/NFmUTXPHtT">pic.twitter.com/NFmUTXPHtT</a></p>&mdash; Niklas Heer (@niklas_heer) <a href="https://twitter.com/niklas_heer/status/1022072036309573632?ref_src=twsrc%5Etfw">July 25, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

