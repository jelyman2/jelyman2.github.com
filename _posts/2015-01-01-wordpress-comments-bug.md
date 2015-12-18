---
title: "Disabling Comments on Existing Posts After Disabling Comments Site-Wide with WordPress"
author: Johnathan Lyman
layout: post
permalink: /2015/01/01/wordpress-comments-bug/
category:
    - Blog
---

 **Update:** I can’t seem to replicate this issue anymore and thus closed out the bug I submitted below.

I ran into an issue this morning after disabling comments site-wide on this particular site that I could no longer enable the Discussion widget to disable comments on existing posts. Since this seems like an issue others would run into, I took the liberty of [creating a bug against WordPress 4.1 addressing the issue](http://link.jlyman.net/1xy9ztr "#30880 User Cannot Disable Comments on Existing Post after Disabling Comments Site-Wide - trac.wordpress.org"). If you’re interesting in following, feel free to do so here or via the bug itself.

## Workaround
While clunky, my work around was to re-enable comments site-wide so as to have the Discussion widget return as an option in the Post Editor so I could disable comments for my existing posts. I cannot speak as to wether it was limited to just&nbsp;_published&nbsp;_posts as I did not test it.

