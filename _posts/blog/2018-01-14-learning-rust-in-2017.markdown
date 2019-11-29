---
title: "Learning Rust in 2017"
layout: post
date: 2018-01-14 12:00
blog: true
tag: rust
description: "Learning Rust in 2017"
---

## What’s this blog post about? ##
The Rust programming language benefits from a good momentum these days. Lots of people approached the language for the first time in the last year (included me) and many great blog posts have been published to display the qualities of Rust and help people to learn and love the language.

In a way, this post is one of those, at least because it shares with them the exact same goals. Nevertheless, I didn’t feel qualified enough to write about how great the syntax, the tooling or performance are, having learned Rust myself just a few months ago. So I thought that I could contribute sharing something a bit different: my experience of learning Rust in 2017. And, spoiler alert, it was pretty fun.

## A little curiosity will do ##
I decided to pick up Rust on a whim on a rainy Wednesday afternoon. I was particularly bored and the day before a friend told me about this Rust pet project of his. I guess that if such a shallow curiosity was enough of a motivation for me, than really anything should do. And, hey, if learning Rust had turned out to be boring, I could have just stopped anytime, right?

## One textbook and a half ##
Rust comes with its own [community](https://github.com/rust-lang/book) curated [book](https://doc.rust-lang.org/book/first-edition/) to help newcomers to learn the language. I believe it’s a brilliant idea and the book is actually pretty good, which is all that matters at the end.

I read the book in three or four days. Then I read the part about ownership and mutability one more time. Then the part on traits. Then the part on ownership and mutability again. A couple more times. I think I have read that chapter at least eight times during the last year. I am still not sure whether that’s because it’s such a great writeup or a pretty bad one. Anyway, ownership is probably the part that newcomers will take the most to digest. And, oddly enough, it wasn’t frustrating at all to come back to the same chapter over and over again; I just felt I _needed_ to stop coding and think about it one more time.

Coming back to the book during the year, I noticed that Google started to point me more and more to the [second edition](https://doc.rust-lang.org/book/second-edition/) of the book, which is supposed to be much more similar to a huge tutorial than a textbook and in general much better, faster, stronger. This second edition is still under development at the moment, but it’s also very close to be completed. Actually everything that is interesting to anyone approaching the language for the first time has been finished a while back, so both the Rust community and me definitely recommend you to just disregard the big red warning at the top and start directly with this second edition.

![Rust Book](/assets/images/rust_book.png)

## A playground is all it takes to make kids happy ##
Reading about programming is like dancing about architecture, so of course I wanted to try to write some Rust code as soon as I was learning something new.

One of my biggest psychological impediments when learning a new language is going through the ritual of setting up of a proper development environment for that language when I am not even sure whether I want to actually _write_ anything serious in it. It just requires a lot of effort while every ounce of my mind is already focused on learning. In a few words, it’s annoying.

I announce thee with immense joy that Rust comes with an awesome web [playground](https://play.rust-lang.org/) where you can write, compile, run and share (and so come back at) your code without any hassle. More of 100 libraries (crates) are already available and you can switch between Stable and Nightly Rust with just one click. How sweet is that?

![Rust Playground](/assets/images/rust_playground.png)

## Stable, Beta, Nightly, What? ##
You may hear these names quite a lot, so let’s just get familiar with them. Rust has three release channels:

* Stable: regular Rust
* Nightly: all new features are here
* Beta: bridge between the two

There are many cool things in Nightly that I started to appreciated more and more while I was growing confident with the language. Anyway, when learning I just sticked to Stable to keep it simple.

## The compiler is the best teacher ##
OK, OK, I know what you are thinking: books and playgrounds are great and everything, but how did you _actually_ learn Rust? Fair question, dear reader. The answer is simple: compiling.

Compiling in Rust is somewhat very close to learn a foreign language with a very pedantic teacher. When you start, literally anything you write is wrong and the compiler is very good at making you notice. After a few tries you completely forget about the thing you wanted to say and your only goal becomes to come up with a variation of the sentence that make your teacher happy.

I found myself writing over and over and over again the same thing in countless and very similar ways, moving compilation errors from one line to one other or turning them into slightly different versions of themselves. I cannot say that it wasn’t frustrating from time to time. And you know what? After so much time I am still unable to write a couple lines of Rust code and make them compile first try. Sad, but true.

Error messages are good, though. Very good. After so much trial and error, I think got used to it and now I feel the compiler is guiding me towards the solution, not just opposing me as I felt at the beginning. Compared to Python, it’s like programming with soft and bouncy guardrails. I do not always understand all that the compiler says to me or why what I did is wrong but there is always enough information to make me go a bit further. Until the next compilation error, at least.

## The compiler is smarter than you (except when it isn’t) ##
Especially at the beginning, I found myself in a lot of situations where I was sure the compiler wasn’t just smart enough to understand that what I was doing was _safe_ (this is the magic word in Rust). A couple hours fighting with the Rust borrow checker and you’ll definitely understand what I am referring to. Well, I was wrong. The compiler always turned out to be smarter than me. The best course of action is just to accept it and change your code.

<blockquote class="twitter-tweet" data-lang="en" data-proofer-ignore><p lang="en" dir="ltr">Three stages of <a href="https://twitter.com/hashtag/rust?src=hash&amp;ref_src=twsrc%5Etfw">#rust</a> compiling:<br>1 Compiler says that type is wrong<br>2 That type CAN&#39;T be wrong, you dumb compiler!<br>3 Fuck, it was wrong...</p>&mdash; AntonioUccioVerardi (@porosVII) <a href="https://twitter.com/porosVII/status/846518981678780417?ref_src=twsrc%5Etfw">March 28, 2017</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

Truth to be told, this isn’t always always always true. There are a bunch of cases for which the compiler turns out to be a lot less smarter than you’d like to. However, they are all fairly recognizable after you gained a bit of experience and the Rust community is already working to fix them. This [issue](https://github.com/rust-lang/rust-roadmap/issues/17) on GitHub tracks all the language ergonomic and learnability improvements that are supposed to hit the language in the short term; many of them are already available in Rust Nightly, included [non-lexical lifetimes](http://smallcultfollowing.com/babysteps/blog/2016/04/27/non-lexical-lifetimes-introduction/).

Based on my experience, non-lexical lifetime scenarios are going to be the vast majority of this 1% of cases where the compiler feels a little bit dumb, so do yourself a favor and learn how to spot them pretty early while you are learning. [Matching on references](https://github.com/rust-lang/rfcs/blob/master/text/2005-match-ergonomics.md) could also be a bit of a problem, so make yourself used to it, too.

I hope that being well aware of the situations where the compiler is dumber than you should make you more inclined to believe that it is indeed smarter than you in all the other cases. And if you still don’t, please go back and contribute to the compiler; we do really need people like you!

## This Week in Rust ##
That Rusty friend of mine I mentioned before suggested me to subscribe to a newsletters called [This Week in Rust](https://this-week-in-rust.org/). I have always considered newsletters to be either a masochistic-flavored source of spam or at best an hipster thing for people without a Twitter account, but I was utterly wrong. This Week in Rust is brilliant source of information from the Rust world: blog posts, RFCs published, latest changes merged into the Rust core, upcoming events, etc. And, most important of all, zero spam since I subscribed, just one email per week as advertised.

Thanks to this newsletter I found myself regularly reading RFCs and GitHub issues about how Rust was evolving just after a couple months I was in the language, while for Python it took me literally years to get interested enough to read my first PEP draft. It was such a great and low-effort way to start approaching the Rust community other than just the tool and it really gave a big boost to my interest in the language. So don’t wait a couple months like I did and subscribe the same day you start reading the Rust book.

## People can be nice in forums too ##
There always comes a day in the life of a programmer when Google, 47-view Stack Overflow questions, colleagues and even cursing are not enough to make your code work and you need to ask THE INTERNET. It’s brutal but that’s just how life works.

Well, when that day comes for you and that bastard program is written in Rust, consider posting your question on the Rust user [forum](https://users.rust-lang.org/) with the help tag before doing so on Stack Overflow. I did it, I got my question answered in the order of minutes and people were even nice to me! No kidding, they didn’t even asked me to change the format of my [question](https://users.rust-lang.org/t/use-of-moved-value-error-with-box-disappears-if-inside-a-method/13210).

Jokes aside, my little interaction with the Rust user forum showed me that people in the Rust community are very welcoming to newcomers, which is something I definitely appreciated during the harshest times of my learning.

## One hackathon and one friend ##
After reading the book and playing around in the playground for a while, I really wanted to get the feeling of a real Rust project. My company regularly organizes [hackathons](https://www.yelpblog.com/2014/01/what-the-heck-is-hackathon), so I decided to rewrite a simple internal application written in Python to see if I could get a decent performance boost out of Rust. These hackathons are great to start new projects because I get around a solid two days of continuous and obsessive work on something that I can just hide under the rug if it happens to be a failure and without the feeling that I wasted my free time.

For my first project in a new language I always rewrite something simple that I have written in another language in the past or that I at least know very well. It helps me to focus directly on the language instead of the design of the application, saving also a lot of time in the process, which is very convenient during an hackathon.

The best part of this experience was that I pair programmed with that colleague and friend of mine I mentioned before (the one with a Rust pet project). I don’t particularly like pair programming when it comes down to work, but I reckon that it’s a great learning tool, especially when a newbie gets to work with someone who is very comfortable with a tool or language. I learned a lot of patterns, practices and useful libraries which are definitely not mentioned in the book, plus I gained solid proof that compilation errors are a constant in Rust development at any level of experience :P

## Using Rust in production (for real) ##
Around three months after the hackathon, something unexpected happened: the first and only real Rust production project in my company just fell on my lap. I’m working on it since then and it’s been one of the most interesting things I happened to work on in my life (unfortunately I can’t talk much about it, but I’m pretty confident I will be able to do it soon).

Now, I definitely acknowledge that there was a pretty unlikely combination of events totally out of my control which lead to me working on a Rust project I didn’t even start and be paid for it, including a once-in-a-lifetime astronomic alignment. So I don’t have any good suggestion on how to convince your company to invest in a Rust project if not making lots of other people learn and love Rust. Any idea of how to do that?

<div align="center">
<img src="/assets/images/aligning.gif" alt="Planets aligning in Hercules">
</div>

## What about 2018? ##
Still learning, of course. Rust isn’t that easy (yet).

<blockquote class="twitter-tweet" data-lang="en" data-proofer-ignore><p lang="en" dir="ltr">Any sufficiently complicated code is indistinguishable from magic (Arthur C. Clarke on rust futures)</p>&mdash; AntonioUccioVerardi (@porosVII) <a href="https://twitter.com/porosVII/status/918510932803948544?ref_src=twsrc%5Etfw">October 12, 2017</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

## Useful Links ##
* Rust [book](https://doc.rust-lang.org/book/second-edition/)
* Rust [playground](https://play.rust-lang.org/)
* Rust user [forum](https://users.rust-lang.org/)
* Matching on references [RFC](https://github.com/rust-lang/rfcs/blob/master/text/2005-match-ergonomics.md)
* Non-lexical lifetimes [post](http://smallcultfollowing.com/babysteps/blog/2016/04/27/non-lexical-lifetimes-introduction/)
