List<String> listCity = new List<String>{'Madrid','Amsterdam','İstanbul','New York','Paris','Toronto'};
System.debug('The city list ' + listCity);
Integer elemanSayisi =listCity.size();
System.debug('Listenin eleman sayısı ' + elemanSayisi);
String ilkEleman = listCity[0];
System.debug('İlk eleman ' + ilkEleman);
String sonEleman = listCity[listCity.size()-1];
System.debug('Son eleman ' + sonEleman);
Boolean kontrol1 = listCity.contains('İstanbul');
System.debug('Listede İstanbul var mı? ' + kontrol1);
Boolean kontrol2 = listCity.contains('Roma');
System.debug('Listede Roma var mı? ' + kontrol2);
for(String eachCity : listCity){
    System.debug(eachCity + 'City');
}
Set<String> setCity = new Set<String>();
setCity.addAll(listCity);
System.debug('Set city ' + setCity);
setCity.remove('Paris');
System.debug('Set city ' + setCity);
setCity.add('İstanbul');
System.debug('Set city ' + setCity);
setCity.add('Madrid');
System.debug('Set city ' + setCity + ' Setin eleman sayısı ' + setCity.size());
setCity.clear();
Boolean setinYeniElemanSayisi = setCity.isEmpty();
System.debug('Set boş mu? ' + setinYeniElemanSayisi);