public class SampleClass {
    //! 26.04.2023
    //non-static.
    //instance variable, 
    public string name;

    //static 
    public static string description;

    //non-static method
    public void details(){
        system.debug('name => ' + name);
        system.debug('description => ' + description);
    }
    
    //static method
    public static void staticDetails(){
        system.debug('description => ' + description);
    }
}




//class variable varsa ve onlarla işlem yapıyorsak o zamn metodumuz non -static olmalıdır.
//utility varsa yani calss variable ları dışında bilgiler gireceksek onlar için static metot kullanırız