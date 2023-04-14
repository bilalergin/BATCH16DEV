public class Dog {
   public String name;
   public String color;
   public Integer age;

public Dog(){
    age = 1;
    checkAge();
}
public Dog(string dogName, string dogColor, integer dogAge) {
    String name = dogName;
    String color = dogColor;
    Integer age = dogAge;
    checkAge();    
}
public void checkAge() {
    if (age > 0 && age <=1) {
        System.debug('Pupy Dog');
    }else if (age > 1 && age <= 3) {
        System.debug('Young Dog');
    }else if (age > 3 && age <=5) {
        System.debug('Adult Dog');
    }else if (age > 5) {
        System.debug('Old Dog');
        
    }
        
    }        
       
}
