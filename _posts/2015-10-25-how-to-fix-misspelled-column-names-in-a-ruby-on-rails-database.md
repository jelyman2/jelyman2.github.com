---
title: "How to Fix Misspelled Column Names in a Ruby on Rails Database"
author: Johnathan Lyman
layout: post
permalink: /2015/10/25/how-to-fix-misspelled-column-names-in-a-ruby-on-rails-database/
category:
    - Blog
---

I came across a small issue this afternoon while building out one of my first Ruby on Rails apps. When I generated the database table, I misspelled a column name. Luckily for me, it’s easy enough to fix and this is how I did it.

### 1. Create a New Migration
At the command line from within your Rails application folder, run this:

<script src="https://gist.github.com/jelyman2/d6017c61588d2bfbe2fa.js"></script><noscript>View the code on <a href="https://gist.github.com/jelyman2/d6017c61588d2bfbe2fa">Gist</a>.</noscript>
You’ll be generating a new database migration with the name FixColumnName (which interprets to `[timestamp]_fix_column_name.rb`) inside the `db/migrate` folder inside your rails application. Open that `.rb` file and update it so it looks something like this:

<script src="https://gist.github.com/jelyman2/2e29faf460cff05f803b.js"></script><noscript>View the code on <a href="https://gist.github.com/jelyman2/2e29faf460cff05f803b">Gist</a>.</noscript>
`:table_name` – the name of the table in question

`:old_column` – the misspelled column name  
`:new_column` – the correct column nameIf you have multiple columns you need to change, introduce additional `rename_column` functions:

<script src="https://gist.github.com/jelyman2/9ea9fba6529008ed08dc.js"></script><noscript>View the code on <a href="https://gist.github.com/jelyman2/9ea9fba6529008ed08dc">Gist</a>.</noscript>
Keep in mind that after this migration, you’ll need to update your references to the column everywhere within your app.

Seems like a simple fix but as someone who’s relatively new to Ruby on Rails, this saved me a load of time figuring out what to do and preventing me from starting over.
