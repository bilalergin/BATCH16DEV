//creating new list and assigning some values
//! listDemo2 classın devamı
list<integer> l = new list<integer>{8, 9, 21, 15, 45,101, 121};
integer sum1 = ListDemo2.add(l);
system.debug('final sum is ' + sum1);

integer new1= ListDemo2.add(15, 20);
System.debug(new1);

Decimal new2= ListDemo2.add(15.5, 20.5);
System.debug(new2);

ListDemo2.iterateListString1();

list<string> list9 = new list<string>{'class', 'object', 'methods', 'constructor', 'getter setter', 'list'};
system.debug(listDemo2.add(list9));

ListDemo2.iterateListString99();