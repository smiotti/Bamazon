# Bamazon
### Assignment #12 - Bamazon 



"Bamazon" is a very poor man's Amazon storefront using Node.js & MySQL.  The node app will display a list of available products and take customer orders from the command line.  Once the customer selects a product and quantity, the app will display total cost for the product(s) being ordered and then update the inventory. Product inventory is being stored in a MySQL database called `bamazon`.

Inside of the bamazon database there is a table called `products`, containing the following field definition...

     item_id INT NOT NULL AUTO_INCREMENT,
     product_name VARCHAR(50) NOT NULL,
     department_name VARCHAR(50) NOT NULL,
     price DECIMAL(6, 2) default 0,
     stock_quantity INT default 0,
     product_sales decimal(10,2) NOT NULL,
     PRIMARY KEY (item_id)


### How to use Bamazon (as a Bamazon Customer):
To use Bamazon you will need Node installed on your computer.  Open a command line window and navigate to the root directory of the program.  

Start the application with the command "node bamazonCustomer.js".  Bamazon will display the available product list and prompt user to select a product to purchase.
   
   [Example: node bamazonCustomer.js](Screen_caps/BamazonStart.GIF)


Use the arrow key to select the product you wish to purchase, and click the Enter key.
   
   [Example: Product Selection](Screen_caps/ProductSelect.GIF)

 Next enter the number of units you would like to purchase and hit click the Enter key.  The app will process your order if there is enough product iventory, and provide you with a Total Cost for the order, as well as update the remaining inventory.
   
   [Example: Order Process with availalbe inventory](Screen_caps/ProductOrder.GIF)

 If there is insufficient product inventory, customer will be notified that the order cannot be processed.  
   
   [Example: Order Unable to Process. Insufficient inventory](Screen_caps/OutOfStock.GIF)

    
**************

 [Video Demo](https://drive.google.com/file/d/1DrCKbHjlnFdxv0r1dXFW1ZEm2BYWo96C/view)

**************



Updated Portfolio:
 [My Portfolio](https://smiotti.github.io/Bootstrap-Portfolio/)

