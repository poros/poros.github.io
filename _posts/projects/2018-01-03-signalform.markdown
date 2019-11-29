---
title: "SignalForm"
layout: post
date: 2018-01-03 12:00
tag:
 - signalfx
 - terraform
 - golang
 - python
 - metrics
projects: true
---

At Yelp we use [SignalFx](https://signalfx.com/) to visualize and analyze real-time metrics plus monitoring many of our systems. We create hundreds of detectors, charts and dashboards. Managing and finding these resources quickly is a challenge. Engineering teams need to be able to discover the graphs and detectors they own, quickly create and update them and be informed about changes to them.

[SignalForm](https://github.com/Yelp/terraform-provider-signalform) is a [Terraform](https://www.terraform.io/) provider to codify SignalFx detectors, charts and dashboards, thereby making it easier to create, manage and version control them. Combined with [signalform-tools](https://github.com/Yelp/signalform-tools/), a set of Python tools to make easier to search and test these artifacts, it is used daily by many engineers at Yelp.

You can read more about SignalForm in the [blogpost](https://engineeringblog.yelp.com/2017/10/signalform-charts-as-code-with-signalfx-and-terraform.html) that @kokje and me wrote a while back.

As usual, also this project has been a team effort of many engineers at Yelp, with a special mention to @dichiarafrancesco who did a very big chunk of the development.

<div align="center">
<a style="color:black" href="https://github.com/Yelp/terraform-provider-signalform">
<img src="/assets/images/github_logo.png" alt="Check it out on GitHub">
<p><strong>Check it out on GitHub</strong></p>
</a>
</div>
