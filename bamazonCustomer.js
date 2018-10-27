var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection infomration for the sql database
var connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    
    // Your port; if not 3306
    port:3306,

    // Your password
    password: "root",
    database: "bamazonBD"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
});

// function which prompts the user for what action they should take
function start() {
    inquirer
    .prompt({
        name:"purchase",
        type:"rawlist",
        message: "Please select your item by id number, press q to quit.",
        validate: function (value){
            return !is NaN(value) || value.toLowerCase() === "q";
        }     
    } 
]};

.then((value)) => {
    userResponse(value.choice);
    let id = parseInt(value.choice);
    let product = itemQuantity(id, inventory);

    if (product) {
        customerQuantity(product);
    } else {
        console.log("That item is not in stock.");
        products();
    }
  });
}  

let customerQuantity = (product) => {
    inquirer ([
        {
            type: "input",
            name: "quantity",
            message: "Select Purchase Quantity?",
            validate: function(value) {
                return value > 0 || value.toLowerCase() === "q";                
            }
        }
    ])
    .then ((value) => {
        userRespones(value.quantity);
        var quantity = parseInt(value.quantity);

        if(quantity> product.stock_quantity) {
            console.log("Insufficient quantity, order must be less than " + product.stock_quantity);
            products();
        }else {
        placeOrder(product, quantity);
        }
    });
}

let placeOrder = (product, quantity) => {
    connection.query(
        "UPDATE products SET stock_quantity = stock_quantity - ? WHERE item_id = ?",
        [quantity, product.item_id],
        (error, response) => {
            console.log (" You have purchased a quantity of " + quantity " " + product.product_name);
            products();
        }
    );
}

let itemQuantity = (id, inventory) => {
    for (var i = 0; i < inventory.length; i++) {
        return inventory[i];
     }
   }
    return null;
}

let itemQuantity = (id, inventory) => {
    for (var i = 0; < inventory.length; i++) {
        if (inventory[i].item_id === id) {
            return inventory[i]; 
            
        }
    }
    return null;
}

let userResponse