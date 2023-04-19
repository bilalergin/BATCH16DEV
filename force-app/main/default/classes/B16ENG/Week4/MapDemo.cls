public with sharing class MapDemo {
    public static void mapExample() {
        //key -> string //bir tane unique olur
        //value -> integer //aynı değer olabilir
        Map<string, integer> map1 = new Map<string, Integer>();
        //we want to add key-value pair
        //put means add
        map1.put('one', 101);
        map1.put('two', 202);
        map1.put('three', 303);
        map1.put('two', 1001);//update/owerwrite the value silently
        map1.put('one', 2002);//update/owerwrite the value silently. Buradaki one ı yazdırır.
        map1.put('ten', 2002);
        System.debug(map1);

    }
}