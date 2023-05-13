Map<Integer,String> plakaSehir = new Map<Integer,String>{34=> 'İstanbul', 16=>'Bursa',35=>'İzmir',42=>'Konya',27=>'Gaziantep'};
System.debug(plakaSehir);
System.debug('Mapte İstanbul var mı? ' + plakaSehir.containsKey(34) + ' Mapte Trabzon var mı? ' + plakaSehir.containsKey(61));
System.debug('Mapin eleman sayısı ' + plakaSehir.size());
plakaSehir.remove(16);
System.debug(plakaSehir);
Set<Integer> plaka= plakaSehir.keySet();
List<String> sehir = plakaSehir.values();
System.debug('Plaka numaraları ' + plaka + ' ve sehir isimleri ' + sehir);

