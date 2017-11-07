---
layout: post
title: "Notes on Open Data Science Conference West 2017"
---

I just came back from the Open Data Science Conference (ODSC) in San Francisco and I found it really stimulating and interesting. I learned a ton, met some great people working in very different fields, and overall found it quite worthwhile.

Here are some of the highlights from my notes:

## Workshops

### [scikit-learn intro Workshop](https://github.com/amueller/ml-training-intro) and [Advanced](https://github.com/amueller/ml-training-advanced)

I admit that I am not really a Python person. But I am helping to develop some materials for an introductory workshop and I found this workshop and its materials to be a very beginner-friendly to `scikit-learn` and machine learning concepts, much like `caret` for R. All the slides and workshop materials are available at the above links.

### [SparkylR Workshop](https://github.com/WinVector/ODSCWest2017)

I liked this workshop from John Mount of Win-Vector. It started out with a *dplyr* intro, and introduced us to the basics of Apache Spark, which is a cluster-computing based machine learning framework, which is designed to do very large queries and machine learning. RStudio's Edgar Ruiz managed to get us each an RStudio Pro Instance running on AWS with all the required packages installed so we could test out the SparklyR package, which uses dplyr's commands to run Spark jobs.

### [In-Memory Computing Essentials for Data Scientists](https://drive.google.com/file/d/0B3MFD2S4MhtGd1ltVHZkbFhHX0ZUbGlGZmtNRjllQ2NtQkJN/view?usp=sharing)

This was an introduction to Apache Ignite, which is a distributed, in-memory database that can be leveraged by different languages. The really interesting thing about Ignite is that it will colocate related data on the same cluster node, resulting in rapid queries within each node. I think this technology will become very important as we need more datasets to be openly accessible to compute on.

## Talks

These were the most interesting talks that I attended.

[Visually Explaining Statistical and Machine Learning Concepts](http://mfviz.com/odsc-2017/#/)

This was a great talk by Mike Freedman about his process of how he put together D3.js based visualizations to explain some statistical concepts. I thought the explanation of his process (isolate specific ideas, identify data structures, leverage visualization algorithms). Check out the slides above. They're very cool.

[The Wonder Twins: Data Science and Human Centered Design](https://odscwest.pathable.com/meetings/596522)

This was a really interesting talk about the interplay between data science and design in helping encourage a mobile money system in Tanzania. It was inspiring to see how they had both designers and data scientists embedded and looking at how the mobile payment system worked. One interesting example was doing network analysis of the Mobile Money Agents, who distribute cash. They targeted a highly influential group of these agents based on this analysis. Very cool.

[The People's Data](https://odscwest.pathable.com/meetings/601861)
and [The Deontology of Data Science](https://odscwest.pathable.com/meetings/604496)

I thought these were really interesting sides about the human side of data science. DJ Patil, who was chief data scientist under the Obama administration, talked about citizen-driven data projects and how it enabled a number of advances. The most interesting case was basically a parent built an online community of people who had a very rare disease condition so he could help his son with the condition.

Igor Perisic (of LinkedIn) followed this with a talk about ethical issues in data science. In particular, he identified three different areas to concentrate on: 1) The Ethics of Data, 2) The Ethics of Algorithms, and 3) The Ethics of practice. He concentrated on the recent New York Times article about using [machine learning to identify potential re-offenders in the prison system](https://www.nytimes.com/2017/05/01/us/politics/sent-to-prison-by-a-software-programs-secret-algorithms.html). The lack of transparency in how the algorithm identifies potential reoffenders is a huge ethical problem.

In all, I had an interesting time and I met lots of people in industry, which was a nice contrast to the academic side of things.
