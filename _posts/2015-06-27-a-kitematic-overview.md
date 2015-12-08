---
title: "A Kitematic Overview"
author: Johnathan Lyman
layout: post
permalink: /2015/06/27/a-kitematic-overview/
categories:
    - Blog
---

I have only recently started tinkering with Docker when I made a brief attempt at getting Discourse running on my server. What started out as me being quite frustrated with my lack of SMTP knowledge ended in my admittance that a pre-packaged setup would be much easier, and indeed it was.

Docker is good for that. Docker’s purpose is to allow swift and efficient deployment and management of applications that reside in their own containers. Think of a cargo ship. Each one of those containers can be its own app that runs exclusively in its own box/bubble/container/virtual world and on the outside Docker and the system it runs on maintains structural integrity so each container can keep running.

If you’re relatively new to Docker like I am, you’ll probably be wondering how easy it is to get started.

There are two routes: the command line route and the GUI route. Today I’m going to show off the GUI route by way of an app called Kitematic.

[![Screenshot 2015-06-27 16.02.42](https://i2.wp.com/johnathanlyman.com/wp-content/uploads/2015/06/Screenshot-2015-06-27-16.02.42.png?resize=882%2C570)](https://johnathanlyman.com/wp-content/uploads/2015/06/Screenshot-2015-06-27-16.02.42.png)

### Overview
The purpose of Kitematic, in my opinion, is to bridge the gap that’s created by the learning curve created by not being fully aware of how to interact with Docker on the command line.

Deploying an image is dirt simple. The UI presents you with a searchable area in which you can comb the Docker Hub. One click is all it takes to create an instance of the application you’re looking to install.

The actual deployment time will depend on your Internet connection speed because the image has to be downloaded. The larger the application, the longer it’ll take to deploy, install, and configure, so keep that in mind.

### Deployment Tests
Here are a few examples of apps I downloaded and how long they took from the moment I clicked the Create button to the moment they were ready to go. These incredibly non-scientific numbers come from my 2011 Macbook Pro with a 2.2GHz Intel Core i7, 8GB of RAM, and the images being stored and run on an SSD. I also used the most popular choices for each of these images, including recommended ones if they were available. Each of the image were downloaded on a 125mbps Internet connection and the timing below includes that.

|
| |
 Application | Time to Ready ||
| |
 Ghost | 0m 26s ||
| |
 Atlassian JIRA | 1m 45s ||
| |
 Redis | 0m 12s ||
| |
 MySQL | \* ||
| |
 Nginx | 0m 5s ||
| |
 Minecraft | 1m 50s ||
| |
 Jenkins | 1m 16s ||
| |
 Elasticsearch | 0m 35s |I obviously want to stress that the above numbers are essentially me using a stopwatch and watching the process take place. When it came to MySQL, it never fully initialized and I was unable to determine its progress after about 30 seconds. I couldn’t connect to the service and the logs weren’t displaying anything. It’s possible that I just got a bad run and re-doing it could have fixed my issue. YMMV.

If you plan on running Kitematic a lot, you’ll want to make sure you can reserve at least 2GB of RAM for the VirtualBox VM it runs in the background. Also, check Kitematic’s settings and check the box to clean up the VM on closure if you’re on a battery-powered system. It’ll take a bit of extra time on boot but it’ll save your battery when you’re not using it, for sure.

I do believe it’s prudent to point out that if you choose the delete-on-closure option, you might find yourself with a VM that can’t fetch an IP address when you re-start Kitematic. This was the case 100% of the time I restarted Kitematic after killing VirtualBox on Kitematic’s closure.

### The Bottom Line
So here’s where I tell you if it’s worth it. In short, completely. For people like me that just want to get things done and move on with my day and not have to deal with the command line all the time, this is a boon. If you’re a die-hard command line junkie that thrives on typos and mashing away at the keyboard, go do it the regular, old-fashioned way.

Kitematic is free to use and is in Beta. It might be a bit rough around the edges, and may not work very well on Windows. I tried running the JIRA install on Windows and it failed every time.

If you’re looking to break into Docker and the idea of containered apps, this is your vice.

This slideshow requires JavaScript.

