MethodsDemo2 m2 = new MethodsDemo2();
String returnMsg = m2.returnMessage('Jenny');
System.debug(returnMsg);
// m2.returnMessage('Forrest');//this is valid. We are not string the return value.sadece bunu yazarsak forrest değil jenny görünür.
System.debug(m2.returnMessage('Forrest'));
//a = b+c
//System.debug(a)
//System.debug(b+c)

//Cümledeki karakter sayısı 1. Yol
System.debug(m2.returnMessage2('Bilal'));
//2.Yol
MethodsDemo2 m3 = new MethodsDemo2();
integer i = m3.returnMessage3('April');
system.debug('i is ' + i);

MethodsDemo2 m4 = new MethodsDemo2();
boolean b1 = m4.nameContainsA('Vicky');
System.debug('Vicky contains a ? ' + b1);

System.debug('Christina contains a ? ' + m4.nameContainsA('Christina'));

Boolean b2 = m4.nameContainsA('BARCELONA');
System.debug('BARCELONA contains a? ' + b2);

//2.Yol
m4.nameContainsA2('Bilal');