public class CalculatorProgram {
    public void calc(){
        //07.04.2023
        //* calculator classı buraya çağırdık böylece buradaki kodlar diğer sınıfın bilgilerini kullanarak işlem yaptı.
         Calculator c = new Calculator();
         integer sum1 = c.add(10, 15);//* calculator classın iki integerlı add metodunu kullandı
         system.debug('sum1 is ' + sum1);
 
         system.debug('10,15,95 ==> ' + c.add(10, 15, 95));//* calculator classın üç integerlı add metodunu kullandı
    }
 }