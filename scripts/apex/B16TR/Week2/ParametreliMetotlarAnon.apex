ParametreliMetotlar pm = new ParametreliMetotlar();
pm.printWelcome();
pm.printWelcome();
pm.printWelcome();
pm.wellcomePerson('Bilal');
pm.wellcomePerson('Ruya');
pm.wellcomePerson('Tumay');
pm.wellcomePerson('Ayca');


Integer sum = pm.toplama(11, 22);
System.debug(sum);
System.debug(pm.toplama(11, 22));

ParametreliMetotlar pm2 = new ParametreliMetotlar();
Date dt1 = date.newInstance(2011, 11, 13);
Boolean artik = pm2.artikYil(dt1);
System.debug(dt1.year() + ' Artik yil mi? ' + artik);

ParametreliMetotlar pm3 = new ParametreliMetotlar();
String messsage = 'Bugun hava guzel';
integer karakterSayisi = pm3.uzunluk(messsage);
System.debug(messsage + ' cumlesindeki karakter sayisi = ' + karakterSayisi);

