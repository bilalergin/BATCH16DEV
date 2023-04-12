public class LoopDemo {
    public void print1() {
        // print1, 10 times
        // Integer i; //null olur
        Integer i = 1;//initial vaLUE
        while (i<=10) {//exit statement
            System.debug(1);
            i++;
            
        }

    }
    //print 1 to 25
    public void print_in_while() {
        Integer i = 1;
        while (i<=25) {
            System.debug(i);
            i++;
            
        }
        System.debug('after while i ==> ' + i); //what will be value of i?26 Bu loopun dışındaki değer. İ sorulduğunda hep while ın dışındaki değeri artış durumuna göre söyleyeceğiz. ikişerli artsaydı 27 olacaktı.
        
    }
    //print hello 10 times

    public void printHello() {
        //1. initialize
        //2. exit condition
        //3. increment/decrement
        // for 10 times, i= 0 to i< 10 or i <=9
        for (integer i = 0; i < 10; i++) {
            System.debug('Hello');
            
        }
        
    }

    //print 1 to n numbers //fori yazıp entere basarsak for hazır halde gelir
    public void print_N_numbers(Integer n) {
        //String s ='this';////variable define işinin metot içinde yaparsak aşağıdakiler çaışır
        //starts from 1, ends 10
        //starst from 0, ends 9
        for (Integer i = 1; i <= n; i++) {
            System.debug(i);
            //System.debug(s);//variable define işinin metot içinde yaptığımız için buradan çağırabiliriz.

        }
        //System.debug(s);//variable define işinin metot içinde yaptığımız için buradan çağırabiliriz.

    }
    //print 1 to n numbers
    public void print_N_numbers2(integer n) {
        // print 1,2,3,4,5,6,7,8,9, ...n,
        String printN = '1';
        for (Integer i = 2; i <= n; i++) {
            //System.debug(i);//ayrı satırlarda yazdırır
            String temp = ',' + i;
            printN += temp;
            System.debug('inside for printN ==> ' + printN);
            
        }
        System.debug(printN);
        
    }

    //print n odd numbers
    //1,3,5
    //odd nnumbers are not divisible by 2
    public void printOddNumbers(Integer startInt, Integer endInt) {
        //initialize with startInt
        for (Integer i = startInt; i < endInt; i++) {     
            //check if i odd
            Integer remainder = Math.mod(i, 2);
            if (remainder == 1) {
                System.debug(i);
                
            }       
        }
        
    }

    public void forLoopExample() {
        Integer no = 5;
        Integer fact = 1;
        for (Integer i = 1; i <= no; i++) {
            fact *= i;
            System.debug(fact);
        }
        System.debug('Factorial of ' + no + ' is: ' + fact);
        
    }
}


