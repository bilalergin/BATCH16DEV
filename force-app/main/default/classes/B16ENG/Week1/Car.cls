public class Car {
//this is a class body. Burada kaydedip tekrar kodlarımızı görebiliriz.
// public:access modifier, class: key Car: class
// buraya ancak method içinde kod yazabiliriz.


//public is access modifier
//void is return type
//switchOn is METHOD NAME (or Function Name)    
    public void switchOn(){
        // this is method body
    	system.debug('Starting the car now');
    }
    
    //can we have more than one method in a class? yes.
    public void switchOff(){
        system.debug('Switching off car');
    }
}