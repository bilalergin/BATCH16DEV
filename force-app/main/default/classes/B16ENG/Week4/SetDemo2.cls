public class SetDemo2 {
    public static void setToUpperCase() {
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

        //convert each element to uppercase and add in new set
        Set<string> citiesUP = new Set<string>();
        //for each loop on CITIES set
        //for each loop on CITIES set
        for (string eachCity : cities) {
            string temp = eachCity.toUpperCase();
            citiesUP.add(temp);//bu ve altındaki aynı sonucu verir
            citiesUP.add(eachCity.toUpperCase());
        }
        system.debug('uppercase cities => ' + citiesUP);
    }
    public static void setInteger2() {
        set<integer> setInt = new set<integer>{1,4,5,6,7,8,9,10};
        //print hepsine 5 ekleyeceğiz yazdıracağız
        for (integer i : setInt) {
            System.debug(i+5);

        }
        
    }
}