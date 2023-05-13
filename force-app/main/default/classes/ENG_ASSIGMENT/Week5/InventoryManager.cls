public class InventoryManager {
    String productName;
    String productCode;
    Integer costPrice;
    Integer sellingPrice;
    public static Integer productCount = 0;    
    // Constructor with no parameter
    public InventoryManager() {
        productCount++;   }    
    // Constructor with 2 parameters - productName and productCode
    public InventoryManager(String productName, String productCode) {
        productCount++;
        this.productName = productName;
        this.productCode = productCode;    }    
    // Getter and Setter for costPrice
    public Integer getCostPrice() {
        return costPrice;    }
    
    public void setCostPrice(Integer costPrice) {
        this.costPrice = costPrice;    }
    
    // Getter and Setter for sellingPrice
    public Integer getSellingPrice() {
        return sellingPrice;    }
    
    public void setSellingPrice(Integer sellingPrice) {
        this.sellingPrice = sellingPrice;    }
    
    // Method to display product details
    public void productDisplay() {
        System.debug('Product Name: ' + productName);
        System.debug('Product Code: ' + productCode);
        System.debug('Cost Price: $' + costPrice);
        System.debug('Selling Price: $' + sellingPrice);
        
        // Calculate profit margin
        Integer profitPercent = ((sellingPrice - costPrice) * 100) / costPrice;
        
        // Display if product is a Star Product or Average Product based on profit margin
        if (profitPercent >= 20) {
            System.debug('Profit Margin: ' + profitPercent + '% (Star Product)');
        } else {
            System.debug('Profit Margin: ' + profitPercent + '% (Average Product)');
        }
    }
}

