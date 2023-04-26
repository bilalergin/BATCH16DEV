public class Book {
    //! 26.04.2023
    //data members or class variables
    string title;
    string author;
    decimal price;

    //parameterized constructor
    //private lara constructor ve getter-setterla ulaşabiliriz
    public Book(string title, string author, decimal price) {
        //this.title --> class variable
        //this. is used for NON-static members(variables, methods)
        //this.title = title // 1. title class variable 2. ise constructor parametresidir.
        this.title = title;
        this.author = author;
        this.price = price;
    }
    public void printDetails(){
        system.debug('book name is ' + this.title);
        system.debug('author name is ' + this.author);
        system.debug('price is ' + this.price);
    }
    //get methods are used to access class variables 
    //get le sadece variable ları döndürüyoruz
    public string getTitle(){
        return this.title;//this is valid.
    }
    public void setTitle(string title){
        this.title = title;
    }

    public string getAuthor(){
        return this.author;//this is valid.
    }
    //set le variable ları update edip yeni değerler verebiliyoruz
    public void setAuthor(string author){
        this.author = author;
    }

    public decimal getPrice(){
        return this.price;
    }

    //set methods are used to set(update) class variables
    public void setPrice(decimal price){
        this.price = price;
    }
}







