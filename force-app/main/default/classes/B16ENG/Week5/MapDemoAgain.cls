public class MapDemoAgain {
    public static void printMap1() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');//alex burada güncellenyor ve amar oluyor.
        map1.put(1055, 'Monica');

        system.debug('student map => ' + map1);

        Integer rollNo= 1011;
        String s11 = map1.get(rollNo);
        System.debug(rollNo + ' student name is ' + s11);

        integer rollNo2 = 1066;
        //check if rollNo2 is present in map and print value if present, else print NOT PRESENT
            //containsKey -> returns true or false
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + ' student name is ' + map1.get(rollNo2));
        } else {
            system.debug('Not present in map');
        }
    }
}