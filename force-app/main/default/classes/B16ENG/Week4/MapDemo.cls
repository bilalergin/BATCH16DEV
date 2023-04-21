public with sharing class MapDemo {
            //! 19.04.2023

    public static void mapExample() {
        //key -> string //bir tane unique olur. Map in içindeki ilk değer
        //value -> integer //aynı değer olabilir. Map in içindeki 2. değer
        Map<string, integer> map1 = new Map<string, Integer>();
        //we want to add key-value pair
        //put means add
        map1.put('one', 101);
        map1.put('two', 202);
        map1.put('three', 303);
        map1.put('two', 1001);//update/owerwrite the value silently
        map1.put('one', 2002);//update/owerwrite the value silently. Buradaki one(2002) ı yazdırır.
        map1.put('ten', 2002);
        map1.put('Two', 1001);//case sensitive olduğu için bunu da yazar

        System.debug(map1);

//VALID maps below
map<integer, string> map2;//valid

//boolean as key
map<boolean, string> map3;//valid. 3 key-value pair possible in this map.3 key-value true-false-null

map<date, string> map4;//valid

map<string, list<string>> map5;//is this valid?valid
//country -> states
//key is string -> value is list<string>


    }
}