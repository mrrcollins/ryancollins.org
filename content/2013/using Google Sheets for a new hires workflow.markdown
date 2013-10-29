Title: Using Google Sheets for a new hire workflow
Author: mr.rcollins
Date: 2013-09-24 13:07
Slug: using-google-sheets-for-a-new-hire-workflow
Category: Software
Tags: googlesheets

Apparently, there is some interest in a workflow for new hires. At the beginning of the year I worked with our superintendent's secretary and others in the administration offices to create a workflow for new hires. This way we know exactly what has been and hasn't been done for new hires. [Here is the worksheet](https://docs.google.com/spreadsheet/ccc?key=0ArbGU358V1WJdHNnVXVQekMwWEdiY2M3RHQ1ZldMcXc&usp=sharing).

# Getting started

[Open the document](https://docs.google.com/spreadsheet/ccc?key=0ArbGU358V1WJdHNnVXVQekMwWEdiY2M3RHQ1ZldMcXc&usp=sharing) and use **File -> Make a copy…** to make a copy of the Google Sheet. We use two worksheets, one for classified employees, one for certified. They are pretty much the same. Once you have the copy, you'll need to share the sheet with those that have tasks to be completed when new employees are hired. Have them double check their steps, adding or subtracting items if necessary. Be careful near the top under the superintendent secretary area, don't delete the two columns that list the various employees and whether they are finished. 

Once everyone is satisfied with the steps, you'll need to update the formulas for each person in the **Complete** column near the top of the screen. The current formula for the superintendent's secretary looks like this:

    =IF(ARRAYFORMULA(OR(ISBLANK(B4:B17)));"No" ;"Yes")

The range in the ```ISBLANK()``` function represents the items for the superintendent's secretary to complete. The formula in this cell just checks to see if any of the items are blank, and if so, sets the value of the cell to **No**. Update the ranges for each person to reflect their tasks listed in column A.

Once all the items have a value, the formula returns **Yes**.  Conditional formatting is turned on for these cells. If the value is **No** it sets the background to red. Once it says **Yes** the background is set to green. The formula only checks whether the item is blank, so feel free to put whatever you want in those cells for the items to be completed.

The second sheet is a computer info sheet that the superintendent's secretary can print and give to the new hire. Modify it to suit your district.

# Procedure

1. When a new employee is hired, the superintendent's secretary will open up the **New Certified Staff Member Worksheet** and create a copy. 
2. Name the worksheet with the new hire's name, for example, **New Hire Worksheet, John Smith**. Be sure to check **Share it with the same people**. 
3. Use **File -> Email collaborators…** to notify everyone that there is a new hire.

Complete the worksheet.