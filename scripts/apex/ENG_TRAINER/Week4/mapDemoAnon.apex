//MapDemo.mapExample();

map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Germany', 'Euro');
mapCC.put('Mexico', 'Peso');
mapCc.put('India', 'Rupees');
mapCC.put('India', 'Rupee');//this value will be present in map.//Aynı değeri iki kere yazdırmaz. En sondakini yazdırır.
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa', 'usd');
mapCC.put('El Salvador', 'BTC');
system.debug(mapCC);


//map has no ordering, so, no indexes.
//map has key.key yazıp value yu çağırdık.
string curr1 = mapCC.get('India');//Rupee
string curr2 = mapCC.get('usa');

system.debug('India currency is ' + curr1);
system.debug('usa currency is ' + curr2);

string country1 = 'Turkiye';//burası dinamik oldu. keyi değiştirince value da değişir
string curr3 = mapCC.get(country1);
system.debug(country1 + ' currency is ' + curr3);

//keySet returns us set of keys. keyler unique olduğu için set le alıyoruz
set<String> allCountry = mapCC.keySet();// sadece keyleri alırız.
System.debug('all countries ' + allCountry);

//we can get list of values. value lar unique olmadığı için listle alıyoruz.
List<String> allCurrencies = mapCC.values();
System.debug('all currencies ' + allCurrencies);

Set<String> allCountries = mapCC.keySet();//key ve valuları aynı anda alma.
for(String eachCountry : allCountries){//for each loop
    String eachCurrency = mapCC.get(eachCountry);
    System.debug('Country is ' + eachCountry + ', its currency is ' + eachCurrency);
}