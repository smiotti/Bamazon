// Create a Node application called `bamazonCustomer.js

var mysql = require('mysql');
var inquirer = require('inquirer')
// var Table = require('cli-table');

// Connection to the DB
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon"
});


connection.connect(function(err) {
    if (err) throw err;
    // First Display inventory when launched
    getInventory();
});

// Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.
//      item_id INT NOT NULL AUTO_INCREMENT,
//      product_name VARCHAR(50) NOT NULL,
//      department_name VARCHAR(50) NOT NULL,
//      price DECIMAL(6, 2) default 0,
//      stock_quantity INT default 0,
//      product_sales decimal(10,2) NOT NULL,
//      PRIMARY KEY (item_id)


function getInventory() {
    var query = "SELECT * FROM products";
    var listInventory = [];

    connection.query(query, function(err, res) {
        if (err) throw err;
        res.forEach( function(result) {
            //console.log(`ID: ${result.item_id} || NAME: ${result.product_name} || PRICE: ${result.price}`);
            listInventory.push({
                name: `ID: ${result.item_id} ||  NAME: ${result.product_name} || Department: ${result.department_name} || PRICE: ${result.price} || Quantity: ${result.stock_quantity}`,
                value: result.item_id
            })
        });

        promptUser(listInventory);
    });
}


// The app prompts users with two messages.
// The first asks for the ID of the product they would like to buy.
// The second message asks how many units of the product they would like to buy.

function promptUser(list) {
    // console.log(list);
    // inquirer promt docs - https://www.npmjs.com/package/inquirer

    inquirer
        .prompt([
            {
                name: "item_id",
                type: "list",
                message: "Select the product you like to purchase: ",
                choices: list,
            },
            {
                name: "quantity",
                type: "input",
                message: "Enter how many units you want to buy: ",
                validate: function(value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                },
                filter: Number
            }
        ])
        .then(function(answer) {
            checkInventory(answer);
        });
}



// Once the customer has placed the order, application checks if there is enough of the product in inventory to meet the customer's request.
// If not, the app notifies the customer, and then prevents the order from going through.
// However, if store does have enough of the product, the customer's order is fulfilled.

function checkInventory(order) {
    var query = "SELECT * FROM products WHERE ?";
    connection.query(query, { item_id: order.item_id }, function(err, res) {
        //console.log(res);
        if (err) throw err;
        //
        // Check if there is enough in stock and notify customer if there is insufficient inventory.
        if (order.quantity > res[0].stock_quantity) {
            console.log(`Sorry.  There are only ${res[0].stock_quantity} in stock for ${res[0].product_name}`);

            getInventory();

        // If inventory exists, update the database with the new product quantity and show the customer the total cost of their purchase.
        // Total Cost of Purchase = price of the procuct * quantity purchased.
        } else {
            console.log(`\n`);
            console.log(`  Processing your order...`);
            order.newStockQuantity = res[0].stock_quantity - order.quantity;
            order.orderCost = res[0].price * order.quantity;
            order.product_sales = res[0].product_sales + order.orderCost;
            updateInventory(order);
        }
    });
}

// Update the inventory information after sales

function updateInventory(product) {
    var query = "UPDATE products SET ? WHERE ?";
    connection.query(query,
                    [{
                        stock_quantity: product.newStockQuantity,
                        product_sales: product.product_sales,
                    },
                    {
                         item_id: product.item_id
                    }],
                    function(err, res) {
                        if (err) throw err;
                        //console.log(res.affectedRows);
                        console.log(`\n**********************************************\n`);
                        console.log(`  Order Processed: Your total cost is \$${product.orderCost}`);
                        console.log(`  Transaction completed! Thank you.`);
                        console.log(`\n**********************************************\n`);
        
                        getInventory();
                    });
}
