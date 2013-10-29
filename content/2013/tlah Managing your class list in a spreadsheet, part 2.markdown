Title: #tlah Managing your class list in a spreadsheet, part 2
Author: mr.rcollins
Date: 2013-10-17 10:10
Slug: tlah-managing-your-class-list-in-a-spreadsheet-part-2
Category: Software
Tags: tlah,clss

When we last visited our spread sheet, we used formulas to cut apart a list of names in our class that resulted in the following spreadsheet:

![Our great class](http://dl.ryancollins.org/blog/Classlistpart1final-l.png)

Today, we will learn some more programming techniques in our quest to create another column in our spreadsheet which would have the students full name in the format **Firstname Lastname**. To create this full name column, you might try:

    =B2+C2

Ugh, what's this ```#VALUE!``` result? In this instance, it is because you tried to use the ```+``` operand on data which cannot be added. This means we need to talk about data types. We'll touch on two today, ```number``` and ```string``` (for those that know, a number data type can be a very complex beast, but we're trying to keep it simple!). A number data type is basically anything numeric. ```19``` and ```87``` are two numbers.  We can add those two numbers and get ```106```. A string is a data type that can encompass letters, numbers, and symbols. ```Luke``` is a string as is ```I am your father```. But, ```19``` and ```87``` can also be strings, it just depends on what you want to do with them. 

With strings, you don't add, you concatenate (yes, that's a real word, go look it up!). When you concatenate ```Luke``` and ```I am your father``` you get ```LukeI am your father``` (no space between ```Luke``` and ```I``` because the original strings don't have a space).  You can also concatenate `19` and `87` to get `1987`. The operand to concatenate is `&`. So for our example in Column D we will use the `&` to concatenate the two fields:

    =B2&C2

Oh, so close! But now we have `LukeSkywalker`, we want a space between them. To add the space, we just concatenate a `" "` in between the two cell references:

    =B2&" "&C2

And violà! We have a new column with the users `Firstname Lastname`:

![mygreatclass-firstname-lastname-l.png (640×292)](http://dl.ryancollins.org/blog/mygreatclass-firstname-lastname-l.png)

How would you write the formula to create a username which consists of the last two digits of the grad year, last name, firstname?

p.s. [All posts in the series - Managing your class list in a spreadsheet](http://ryancollins.org/tag/clss/)

