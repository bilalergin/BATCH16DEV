public class SetDemo {
    public static void citySet() {
        //set of string
        set<string> cities = new set<string>();
        cities.add('Tokyo');//sette aynı değeri birden fazla yazdıramıyoruz.
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('LISBON');
        // it prints in alphabetic order
        System.debug('Cities set ' + cities);

    }

    public static void citySet2() {//bu şekilde de yazabiliriz
        //set of string
        set<string> cities = new set<string>{'Tokyo',' İstanbul'};
        System.debug(cities);
        

    }
    public static void randomIntegerSet() {
        Set<integer> intSet = new Set<integer>();
        intSet.add(15);
        intSet.add(21);
        intSet.add(10);
        intSet.add(15);
        intSet.add(15);
        intSet.add(10);
        intSet.add(15);
        //it prints numeric order
        System.debug('int set =>> ' + intSet);
        
    }
    public static void setFromList() {
        //we will create set from list
        List<integer> l1 = new List<integer>{10,15,77,55,99,10,77,55};
        System.debug('l1 ==> ' + l1);

        //create new set and add all elements from list to set
        Set<integer> s1 = new Set<integer>();
        s1.addAll(l1);//adAll method we can add ALL elements from another list or set
        System.debug('s1 ==> '+ s1);

    }
    // public static void setFromSet() {
    //     Set<string> myCitySet = new Set<string>();
    //     myCitySet.addAll(citySet());
    //     System.debug('Set from citySet ==> ' + myCitySet);
        
    // }// çağırdığımız metotta return olmadığı için böyle çalışmıyor

    //We will pass lis<integer> in below method, and it will return us set <integer>
    public static set<integer> setFromList(List<Integer> l1) {
        System.debug('l1 from parameter => ' + l1);
        //create new set 
        Set<integer> s1 = new Set<integer>();
        s1.addAll(l1);//add all elements from list to set
        return s1;
        
    }

    
}