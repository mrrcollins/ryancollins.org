Title: Inventory control
Date: 2008-03-26 05:51
Author: mr.rcollins
Category: blog
Tags: Filemaker Pro, inventory
Slug: inventory-control

[![fmpinventory.jpg][]][]Keeping track of inventory can be a difficult,
and it seems like every four months someone is asking about what product
to get to use for inventory control. I created a [simple database in
Filemaker Pro][] to keep track of our inventory. Why Filemaker Pro?

-   We already had it.
-   I didn't need anything that fancy.
-   We also had FMP Server and FMP Unlimited (version 5.5) so I could
    easily publish the database onto the web, that way it can be updated
    from anywhere with a web connection.

I'm not a big fan of using barcodes on our equipment. Our asset tag
numbers are only 5 digits long, it doesn't take time at all to easily
type them. We do use a barcode reader when inventorying new equipment.
It cuts down on errors when entering serial numbers or MAC addresses.
The barcode reader can read the barcodes right off of the box.

To enter new equipment, we use a spreadsheet. Once the spreadsheet is
filled out, it is imported into the FMP database.

I don't track help desk requests along with hardware. We have
approximately 700 machines, and it's very rare that a piece of equipment
will have one hardware failure, let alone multiple failures that need to
be tracked.

  [fmpinventory.jpg]: http://ryancollins.org/wp/wp-content/uploads/2008/03/fmpinventory.jpg
  [![fmpinventory.jpg][]]: http://ryancollins.org/wp/wp-content/uploads/2008/03/fmpinventory.jpg
    "fmpinventory.jpg"
  [simple database in Filemaker Pro]: http://helpdesk.kentoncityschools.org/TechInventory.fp5
