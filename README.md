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
   
   [Example: node bamazonCustomer.js](Screen_Caps/BamazonStart.GIF)

Use the arrow key to select the product you wish to purchase, and click the Enter key.
   
   [Example: Product Selection](Screen_Caps/ProductSelect.GIF)

 Next enter the number of units you would like to purchase and hit click the Enter key.  The app will process your order if there is enough product iventory, and provide you with a Total Cost for the order.
   
   [Example: Order Process with availalbe inventory](Screen_Caps/ProductOrder.GIF)

 If there is insufficient product inventory, customer will be notified that the order cannot be processed.  
   
   [Example: Order Unable to Process. Insufficient inventory](Screen_Caps/OutOfStock.GIF)


   

## Submission Guide

Make sure you use the normal GitHub. Because this is a CLI App, there will be no need to deploy it to Heroku. This time, though, you need to include screenshots, a gif, and/or a video showing us that you got the app working with no bugs. You can include these screenshots or a link to a video in a `README.md` file.

* Include screenshots (or a video) of typical user flows through your application (for the customer and if relevant the manager/supervisor). This includes views of the prompts and the responses after their selection (for the different selection options).

* Include any other screenshots you deem necessary to help someone who has never been introduced to your application understand the purpose and function of it. This is how you will communicate to potential employers/other developers in the future what you built and why, and to show how it works. 





5. Then create a Node application called `bamazonCustomer.js`. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

6. The app should then prompt users with two messages.

   * The first should ask them the ID of the product they would like to buy.
   * The second message should ask how many units of the product they would like to buy.

7. Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.

   * If not, the app should log a phrase like `Insufficient quantity!`, and then prevent the order from going through.

8. However, if your store _does_ have enough of the product, you should fulfill the customer's order.
   * This means updating the SQL database to reflect the remaining quantity.
   * Once the update goes through, show the customer the total cost of their purchase.


---------------------------------------------------------------

Updated Portfolio:
 [My Portfolio](https://smiotti.github.io/Bootstrap-Portfolio/)

