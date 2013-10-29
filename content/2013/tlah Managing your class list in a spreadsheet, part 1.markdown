Title: #tlah Managing your class list in a spreadsheet, part 1
Author: mr.rcollins
Date: 2013-09-13 10:47
Slug: tlah-managing-your-class-list-in-a-spreadsheet-part-1
Category: Software
Tags: tlah,clss

You have a class list, or several, and you need to manage those names. Your principal may need a list for various reasons, or you may want to email all the students in your class, or you may want to import your students into a new web service that you'd like to use. Now you could manage the list manually, creating the different formats one  student at a time. Or you could teach like a hacker and let a spreadsheet do all the hard work. My examples are going to use Google Sheets, but the concepts are the same in almost every spreadsheet. It's been awhile since I've used AppleWorks on an Apple //e, so I don't know how well these steps would work there. 

I'll be assuming basic knowledge of spreadsheets in this tutorial. You'll need to know:

* Rows are labeled with numbers starting with 1
* Columns are labeled with letters starting with A
* Cells are referenced just like in the game Battleship. Cell **A2** is in the first column, second row down.

I'm going to assume you can use copy and paste to highlight your class list in your student information system software, copy, and paste it into a spreadsheet. Lets start by creating the spreadsheet. Go to Google Drive and create a new spreadsheet. Click on **Untitled spreadsheet** in the upper left and name it **My Great Class**.

![NameSpreadsheet-m.png (320×148)](http://dl.ryancollins.org/blog/NameSpreadsheet-m.png)

In the first row put **Full Name**, **First Name**, and **Last Name** as column headers.

![Column Headings-l.png (640×249)](http://dl.ryancollins.org/blog/Column%20Headings-l.png)

Now lets make the column headings pretty. Click on the **1** in row one on the left to highlight the row. Then use the two formatting text icons to set the text color and background color. Then click the **B**old button for good measure.

![Pretty Columns-l.png (640×246)](http://dl.ryancollins.org/blog/Pretty%20Columns-l.png)

Here is the class list we are going to use. You should be able to copy them from here and paste them right into the spreadsheet at cell **A2**:

    Skywalker, Luke
    Organa, Leia
    Kenobi, Obi Wan
    Vader, Darth
    Solo, Han

It's a class list alright, but now we have a problem. How do we get the last name and first name without re-typing? We are going to use a **function** (sometimessometimes referred to as a **formula**, depending on your software). Click in **C2**. You should be to the right of *Skywalker, Luke*.  Looking at our list, we notice that there is a ```,``` after each last name. We can use that in our function to know where our last name ends. The function in Google Sheets that we are going to use is called **LEFT()**. Functions take parameters, the little pieces of information that you want the function to work with. the **LEFT()** takes one mandatory parameter and one optional. 

    LEFT(text,number)

The mandatory parameter is *text*, and it references the cell we will be working with. For **Luke** that would be **A2**. The *number* parameter is how many characters to return, we'll leave it off first. You start entering a function with ```=```. Let's try out the **LEFT()** function. In **C2** enter:

    =LEFT(a2)

Hit enter.  Looky there, we grabbed the *S* from Skywalker!! Parameters are separated in the function by a comma. Let's add another parameter to **LEFT()**, and that is to tell it how many characters to grab.

    =LEFT(a2,8)

Hit enter. It grabbed the first 8 characters from cell **A2**.  Now in a perfect world everyone's last name would have the same number of characters. Unfortunately, our world is much like a world a long time ago in a galaxy far, far away. We need a way to find out the character position of the ```, ```. There is another function call **SEARCH**. It will search through the text of a cell and return the position of the found text. In **C2** try out this function:

    =SEARCH(",",A2)

After hitting enter, **C2** should contain the number 10, indicating that the comma is in the 10th position. Parameters in functions can also contain other functions, so we can use the **SEARCH()** function in place of the second parameter in the **LEFT()** function:

    =LEFT(a2,SEARCH(",",A2))

Oh, so close!!! It's returning the comma. We can use simple arithmetic to fix this, since the comma is one character, let's subtract them in the function:

    =LEFT(a2,SEARCH(",",A2)-1)

Breaking down the second parameter, you have ```SEARCH(",",A2)-1```. ```SEARCH(","A2)``` is going to return the position of the comma, which we know with **A2** is 10. The ```-1``` subtracts one from the answer of the search function, leaving us in this example with 9. Congratulations, you now have cut out *Skywalker*. 

To copy the function to the other cells you're going to want to use **fill down**. Select cell **C2** if it isn't already selected.  Mouse over the square in the bottom right of the cell, and the cursor turns into a crosshair. Click and drag down to cell **C6**. When you let up, it will fill in the cells with your function, automatically changing the references to reflect the row. 

Now lets go to **B2** and work on the first name. We can't use the left function because it always starts at position 0. But we can use the **MID()** function, which takes 3 mandatory parameters.

    =MID(text,start,number)

We already know what to put in for the first two parameters. The text to find is the cell with the data, and in this case it's **A2**. The start position is found by searching for the comma and adding 2. (Why 2? Remember, there is a space after the comma.) Our function starts to look like ```=MID(A2,SEARCH(",",A2)+2,number)```. *Number* is the number of characters to return. We'll have to get tricky by using a new function call **LEN** which calculates the length of the whole string and subtracting the position of the ```,```. Our final function looks like:

    =MID(A2,SEARCH(",",A2)+2,LEN(A2)-SEARCH(",",A2)+2)

Feel like a hacker yet? Let's break down the three parameters in that function!

* ```A2```: This is the cell with the data we want to manipulate
* ```SEARCH(",",A2)+2```: Find the position of the first comma and add two to skip over the comma and space
* ```LEN(A2)-SEARCH(",",A2)+2```: Take the length of **A2** and subtract the position of the comma then add two to skip over the comma and space. This gives us the length of the string to return.

Then fill down the function from **B2** and it should populate your first name fields. Always, ALWAYS feel free to play around with the functions until you get them right. You should have the start of a great class list!

![Classlistpart1final-l.png (640×370)](http://dl.ryancollins.org/blog/Classlistpart1final-l.png)

Stay tuned for the next part!