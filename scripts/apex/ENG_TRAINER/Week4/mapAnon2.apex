//20.04.2023
Map<string, integer> map2 = new map<string, integer>();
map2.put('one', 101);
map2.put('two', 202);
map2.put('three', 303);
System.debug(map2);


integer i1= map2.get('one');//101 //valueları tek tek execute ediyoruz
integer i2= map2.get('two');//102
integer i2= map2.get('three');//303

//get all keys from map -> we use KEYSET method
set<string> allKeys = map2.keySet();
System.debug(allKeys);
//{one, three, two} //keylerin hepsini execute ediyoruz

for(string eachKey: allKeys){
    system.debug('each key is ' + eachKey);
    //one
    //two
    //three

    //how can get value from key?
    Integer eachValue = map2.get(eachKey);//keyden value yu getle alıyoruz.
    System.debug('each value is ' + eachValue);
    System.debug('-----------------');
}
// for(string eKey : allKeys){
//     //loop will execute three times
//         //1. ekey => one
//             //map2.get(ekey) ==> map2.get('one');
//         //2. ekey => two
//         //3. ekey => three
//     system.debug('key is ' + eKey);
//     integer i = map2.get(ekey);
//     system.debug('value is ' + i);
//         //1. i => 101
//         //2. i => 202
//         //3. i => 303
// }// yukarıdaki forun aynısı.