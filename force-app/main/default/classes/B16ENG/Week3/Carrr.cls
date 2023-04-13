public class Carrr {
    //variables directly defined in class
    //are called class variables
    //metot olmadan doğrudan yazdık
    //we can use this as properties, 
    //we can assign values when we create instance.
    String carNumber;
    String name;
    String color;
    Integer mfgYear;
    Decimal price; 
    //normalde metotlarda scope(kapsam) ulşma alanı sadece o metodun içindedir 
    //ancak yukarıdaki variablellar başka metotlara da ulaşabilir.

   

    public void details() {
        System.debug('Car number is ' + carNumber);
        System.debug('Car name is ' + name);
        System.debug('Color is ' + color);
        System.debug('Manufacturing year is ' + mfgYear);
        System.debug('Price is ' + price);
        printCarAge();// private metodu publicten çağırırsak çalışır.
        
    }
    private void printCarAge() {
        Date todayDate = Date.today();
        Integer currentYear = todayDate.year();
        System.debug('Car age is ' + (currentYear - mfgYear));
    }
    //bu constructur dır. Adı class adıyla tamamen aynı ama return type yok.
    //parameterLESS constructor
    //if we DO NOT have any contructor, by default, behind the scenes, we always parameterLESS contructor.
    //so we can create new instance even if we DO NOT have any constructor defined.
    //if we are creating any consturctor (user defined constructor), then, default constuctor(behind the scenes ones) will vanish, we can't use that anymore 
      public Carrr(){//ilk harf büyük veya küçük olabilir.
        System.debug('Carrr constructor called when new instance is created.');
        mfgYear =2023;

      }
      //multiple construcot ---> constructor overloading
      //parametrized concstructor
      public carrr(Integer yr){
        System.debug('Parametrized constructor called.');
        mfgYear = yr;
      }
      public carrr(String carnum, String nm, String clr, Integer yr, Decimal pc){
        carNumber =carnum;
        name = nm;
        color = clr;
        mfgYear = yr;
        price = pc;
        
        details(); //metodu buraya yazarsak apexte tekrar çağırmamıza gerek kalmaz
      }
}