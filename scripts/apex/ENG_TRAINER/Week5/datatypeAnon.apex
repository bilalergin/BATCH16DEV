//! 25.04.2023
String str1= 'Humans';
System.debug(str1);

String str2; //declared -> null
// str2.toLowerCase();//this will give error.boş metodu küçük harfe çevirmeye çalıştığımız için
System.debug(str2);

String str3 = str2+str1;
System.debug(str3);//nullhumans. string + null çalışır.
Integer len = str3.length();//built-in method.sistemin hazırlayıp bizim kullandığımız metot
System.debug(len);//null+humans ın karakterlerini saydı

Integer i= 9;
String str4 = str1+ i;
System.debug(str4);//Humans9 string + integer string olarak çalışır

// Integer j; //null
// Integer z= i+j;
// System.debug(z);//error. integer + null çalışmaz.nullpointer exeption olur.

Boolean e1 = str4.equals(i);
System.debug(e1);
//public boolean equals (object sitringOrId) . datatypeların yerine object yazarsak tüm datatype ları karşılar. Bunun için buna BossObject de denir.

//Integer e1=88;//yukarıda e1 olduğu için duplicate hatası verir.

Date dt = date.newInstance(2023, 04, 25);
System.debug(dt);

Datetime dt2 =Datetime.newInstance(202, 10, 4, 9, 45, 30);//yıl 202 olsa da çalışır
System.debug(dt2);

Datetime current = Datetime.now();//represent this in LONG
System.debug(current);
Long currentDTinLONG= 8756465132165464l;//number of miliseconds from 1970-01-01 00:00:00. Bu tarihin üzerine yazdığımız rakamı milisecond olarak ekler

//starting datetime is 1970-01-01 00:00:00
Datetime dt3 = Datetime.newInstance(currentDTinLONG);
System.debug(dt3);

long someDTinLONG = -10000000;//number of milliseconds from 1970-01-01 00:00:00. bu tarihten çıkarır.

//starting datetime is 1970-01-01 00:00:00
datetime dt4 = datetime.newInstance(someDTinLONG);
system.debug(dt4);