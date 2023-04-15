//! 15.04.2023
List<String> isimList = new List<String>();
isimList.add('Ali');
isimList.add('Selma');
isimList.add('Tumay');
isimList.add('Ruya');
isimList.add('Mucahid');
System.debug('isim listesi => ' + isimList);
System.debug('index 2 = ' + isimList[2]);
System.debug('index 2 = ' + isimList.get(2));


List<String> alisverisList = new List<String>{'kalem', 'silgi', 'defter', 'canta'};
System.debug(alisverisList);
alisverisList.add('cetvel');
alisverisList.add('kalemtras');
//alisverisList.add('zimba');
System.debug(alisverisList);
//zimba listede var mi? yoksa ekleyelim.. 
Boolean isThere = alisverisList.contains('zimba');
if (!isThere) {
    alisverisList.add('zimba');
}
System.debug(alisverisList);
//listemin elemanlarini tek tek yazdiralim.. 
integer elemanSayisi = alisverisList.size();
System.debug('listenin isimlerinin tek tek yazilisi');
for (Integer i = 0; i < elemanSayisi; i++) {
    System.debug(alisverisList.get(i));
}

//listeyi tersten yazalim..
System.debug('listenin tersten yazilisi...');
for (Integer i = elemanSayisi-1; i >= 0; i--) {
    System.debug(alisverisList.get(i));
}