MapDemo.mapExample();

Map<string, string> mapCC = new Map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Germany', 'Euro');
mapCC.put('Mexico', 'Peso');
mapCC.put('India', 'Rupees');
mapCC.put('India', 'Rupee');//Aynı değeri iki kere yazdırmaz. En sondakini yazdırır.
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
System.debug(mapCC);