---
title: "Kubernetes + Operator + PaaSTA = Flink @ Yelp"
layout: post
date: 2019-10-25 18:00
blog: true
tag:
- kubernetes
- yelp
- flink
- talk
description: "Talk given at Flink Forward 2019 Berlin"
---

<iframe width="960" height="569" src="https://www.youtube.com/embed/hL5nNAMx8Bk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vRPNEAlvx0Iu6lk0fpWPV9FfxXUQTjrFPWEQ8G41A9ikIC5Vr-EH_fqMUh8p7ktxs4SGS-bz_rcV3Mh/embed?start=false&loop=false&delayms=60000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

---

## Abstract ##

At [Yelp](https://www.yelp.com) we run hundreds of [Flink](https://flink.apache.org/) jobs to power a wide range of applications: push notifications, data replication, ETL, sessionizing and more. Routine operations like deploys, restart, and savepointing for so many jobs would take quite a bit of developers’ time without the right degree of automation. The latest addition to our toolshed is a [Kubernetes](https://kubernetes.io) operator managing the deployment and the lifetime of Flink clusters on [PaaSTA](https://github.com/Yelp/paasta), Yelp’s Platform As A Service.

We replaced our deployment framework launching Flink clusters on top of [AWS EMR](https://aws.amazon.com/emr/) with a Kubernetes operator managing fully Docker-ized Flink clusters. Compared to EMR, this architecture allowed us to both drastically reduce the deployment time of our Flink clusters and to share our hardware resources more efficiently. In addition, we now offer to our developers the same interface they are used to for running REST services, batch jobs and many other workloads on PaaSTA.

This talk will give a brief overview of Yelp’s PaaSTA before diving into the details of how the Kubernetes operator has been implemented and how it has been integrated with Yelp developers’ workflow (deploy, logs, savepoints, upgrades, etc), to end with a glimpse of the future features we are planning for the operator (Flink as a library, autoscaling, etc.).

---

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Antonio Verardi from <a href="https://twitter.com/YelpEngineering?ref_src=twsrc%5Etfw">@YelpEngineering</a> (and the <a href="https://twitter.com/hashtag/italianmafia?src=hash&amp;ref_src=twsrc%5Etfw">#italianmafia</a>) on PaaSTA 🍝 and Flink on <a href="https://twitter.com/hashtag/k8s?src=hash&amp;ref_src=twsrc%5Etfw">#k8s</a>. My favourite talk so far. If you missed it, make sure to watch the recording afterwards! <a href="https://t.co/FQRsX3wA2O">pic.twitter.com/FQRsX3wA2O</a></p>&mdash; morsapaes (@morsapaes) <a href="https://twitter.com/morsapaes/status/1181906498366164993?ref_src=twsrc%5Etfw">October 9, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
