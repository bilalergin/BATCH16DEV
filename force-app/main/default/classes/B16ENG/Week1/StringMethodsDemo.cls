public class StringMethodsDemo {
    //! 01.03.2023
    //create a new method called stringMethod1
    //method name = stringMethod1
    public void stringMethod1() {
        // method variable = sd
        String sd = 'learning string methods in apex language.'; // aşağıdaki methodlarda bu cümleyi kullanıyoruz.
        //! 3 things to keep in mind
           //! a. method name
           //! b. parameters
           //! c. return type
        
        //todo 1. find length of above string
        integer lengthOfStr = sd.length();
        system.debug('length of string is ' + lengthOfStr);

        //todo 3. check if string contains apex
        Boolean checkApex = sd.contains('apex'); //? contains case sensitive
        system.debug('string contains apex?  ' + checkApex);

        string temp = 'apex';
        boolean checkApex2 = sd.contains(temp); //temp variable atandı. yes
        system.debug('string contains apex?  ' + checkApex2);

        boolean checkApex3 = sd.CONTAINS('Apex');
        system.debug('string contains Apex?  ' + checkApex3); //metotta apex yazıyor. contains case sensitive olduğu için false.

        //containsIgnoreCase
        boolean checkApex4 = sd.containsIgnoreCase('APEX');
        system.debug('string containsIgnoreCase ApEX?  ' + checkApex4); //true

        String sdUP= sd.toUpperCase();//! Bu, cümlenin hepsini büyüğe çevirir. it returns a string by converting to uppercase
        System.debug(sdUP);
        System.debug('original string '+ sd);//! Bu, cümlenin orijinal halini yazdırır. original is unchanged
    }

    public void stringMethod2(){
        //! trim  baştaki ve sondaki boşlukları yok sayar. Kelime aralarındakilere bakmaz.
        String username = '   bilal e  ';
        System.debug('original length ==> ' + username.length());//12
        String usernameTrim = username.trim();
        System.debug(usernameTrim);
        System.debug('after trim length ==> ' + usernameTrim.length());//7

    }

    public void stringMethod3(){
        string username = 'bilal e';
        string username2 = 'bilal';

        //check if username and username2 are equal or not
        //we will use equals method -> it is case sensitive

        boolean check = username.equals(username2);
        system.debug('username and username2 are equal? ' + check);//false

        string username3 = 'bilal E';
        boolean check2 = username.equals(username3);
        system.debug('username and username3 are equal? ' + check2);//false

        boolean check3 = username.equalsIgnoreCase(username3);
        system.debug('username and username3 are equalIgnoreCase? ' + check3);//true
    }
    public void stringMethod4() {
        string s = 'salesforce';
        //length -> 10
        //index -> start the count like computer , start from 0
        //s- 0
        //a- 1
        //l- 2
        //e- 3
        Integer indexOfo = s.indexOf('o');//! o'nun kaçıncı harf olduğunu buluruz. 0'dan başaldığı için 6'dır.
        System.debug(indexOfo);

        Integer indexOfs = s.indexOf('s');//! 0
        System.debug(indexOfs);

        Integer indexOfe = s.indexOf('e');//! 3
        System.debug(indexOfe);

        integer indexOfz = s.indexOf('z');//! -1 yazdırır. yazdırdığımız metotta yoksa -1 döner.
        System.debug(indexOfz);

        String str = 'My name is Bond. James Bond';
        Integer indexOfBond = str.indexOf('Bond');
        System.debug('index of Bond '+ indexOfBond);

        Integer indexOfBond2 = str.indexOf('bond');
        System.debug('index of ' + indexOfBond2);
        
    }

    public void stringMethod5(){
        string s1 = 'Welcome to Softinnovas bootcamp. Ready to learn?';
        
        string s2 = s1.remove('to');
        system.debug('s2 is ' + s2);
        system.debug('s1 is ' + s1);
        
        string s3 = s1.removeEnd('earn?');//it will remove the substring FROM END if it exisits.
        system.debug('s3 is ' + s3);
    }
}