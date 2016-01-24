Title: Using a Here Document with bash and MySQL
Author: mrrcollins
Date: 2016-01-23 19:58
Slug: using-a-here-document-with-bash-and-mysql
Category: Software
Tags: bash,mysql

This past week I worked on a bash script to create some input files from a MySQL database. My problem was trying to use multiple line MySQL statements, which was messing everything up. The solution was to use bash's **Here Documents**. It's a way to direct lines into a command. For me, the command looked like this:

```
mysql DBNAME <<EOF
SELECT *
FROM table
WHERE item = 'WhatIWant'
EOF
```

Everything between the two EOF would be submitted to MySQL. The next problem was that bash was trying to still interpret the MySQL statement which had backticks in it. To solve this issue, I learned that I needed to enclose the first EOF in quotes.

```
mysql DBNAME <<"EOF"
```

Bash then left my MySQL command alone, and all was right in the world.

