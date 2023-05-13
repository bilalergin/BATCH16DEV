SetDemo.citySet();
SetDemo.randomIntegerSet();
SetDemo.citySet2();
SetDemo.setFromList();

List<integer> l1 = new List<integer>{10,15,77,55,77,10,77,55,15};
Set<Integer> s = SetDemo.setFromList(l1);
System.debug('s is '+ s);

List<integer> l22 = new List<integer>{7,8,9,10,10,8,9,7};
Set<Integer> s22 = SetDemo.setFromList(l22);
System.debug('s is '+ s22);

set<integer> s33;
s33.add(5);//bu çalışmaz null hatası gelir. Declare edip define tmediğimiz için çalışmıyor.

list<string> l33;
l33.add('hello');//çalışmaz null gelir

string str;//null
str.toUpperCase();//we cant use any method or any operation on NULL

string str33 = '';//çalışır null değil empty gelir. define edip değer vermediğimiz için boş gelir
str33.toUpperCase();

Integer i;
System.debug(i+5);//null hatası gelir çalışmaz

Set<Integer> s33 = new Set<Integer>();//sonuç true gelir. define edip sorduğumuz için.
System.debug(s33.isEmpty());