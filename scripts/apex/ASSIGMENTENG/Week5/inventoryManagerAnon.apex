
// Create 2 products using no parameter constructor
InventoryManager product1 = new InventoryManager();
InventoryManager product2 = new InventoryManager();

// Create 3 products using parameterized constructor
InventoryManager product3 = new InventoryManager('Product 1', 'P001');
InventoryManager product4 = new InventoryManager('Product 2', 'P002');
InventoryManager product5 = new InventoryManager('Product 3', 'P003');

// Set prices using getters and setters
product1.setCostPrice(100);
product1.setSellingPrice(150);

product2.setCostPrice(200);
product2.setSellingPrice(250);

product3.setCostPrice(300);
product3.setSellingPrice(400);

product4.setCostPrice(400);
product4.setSellingPrice(500);

product5.setCostPrice(600);
product5.setSellingPrice(600);

// Call productDisplay method to display details
product1.productDisplay();
product2.productDisplay();
product3.productDisplay();
product4.productDisplay();
product5.productDisplay();

// Print total products created using productCount
System.debug('Total products created: ' + InventoryManager.productCount);
