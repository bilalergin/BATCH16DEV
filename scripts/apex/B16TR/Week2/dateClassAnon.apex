DateClass dc = new DateClass();
dc.tarihOlusturma();
dc.dateMessage();


//* 2.Hafta ödevi
//* 1.Yol
Date myBirthDate = Date.newInstance(1987, 04, 30);
System.debug('My birthday date: ' + myBirthDate);

Integer year = 1987;
integer month = 04;
Integer day = 30;
Integer toplam = day + month + year;
System.debug(day + ' + ' + month + ' + ' + year + ' = ' + toplam); 

//2. yol
Date myBD = Date.newInstance(1987, 04, 30);
integer years = myBD.year();
Integer months = myBD.month();
Integer days = myBD.day();
System.debug(years.format() + ' + ' + months.format() + ' + ' + days.format() + ' = ' + (years + months + days));

//* 1. yol
Date todayDate = date.today();
Date mcDT= Date.newInstance(1867, 11, 7);
System.debug('Marie Curie\'nin doğum tarihi: ' + mcDT);
Integer ayFarki = mcDT.monthsBetween(todayDate)/12;
System.debug('Farkın ay dikkate alınarak hesaplanması = '+ ayFarki);
Integer gunFarki = mcDT.daysBetween(todayDate)/365;
System.debug('Farkın gün dikkate alınarak hesaplanması = ' + gunFarki);
Integer yilFarki = todayDate.year() - mcDT.year();
System.debug('Farkın yıl dikkate alınarak hesaplanması = ' + yilFarki);
Boolean mcLeapYear = Date.isLeapYear(1867);
System.debug('Marie Curie\'nin doğum tarihi artık yıl mı?: '+ mcLeapYear);








//* 2. Yol
Date marieBD = Date.newInstance(1867, 11, 07);
System.debug('Marie Curie\'nin doğum tarihi: ' + marieBD);

Integer yearDiff = (Date.today()).year() - marieBD.year();
System.debug('Farkın yıl dikkate alınarak hesaplanması = ' + yearDiff);
Integer monthDiff = (marieBD.monthsBetween(date.today()))/12;
System.debug('Farkın ay dikkate alınarak hesaplanması = ' + monthDiff);
Integer dayDiff = (marieBD.daysBetween(date.today()))/365;
System.debug('Farkın gün dikkate alınarak hesaplanması = ' + dayDiff);

    