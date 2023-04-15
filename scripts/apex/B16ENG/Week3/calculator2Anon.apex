Integer sum = Calculator2.add(9, 77);
System.debug(sum);

// yeni instance oluşturmadan da static metotları çalıştırabiliriz
Decimal sum2 = Calculator2.add(5.5, 77.5);
System.debug(sum2);



//new instance static metotlarda çalışmaz.non staticte çalışır
Calculator2 c = new Calculator2();
decimal a =c.add(5.5,21.5);
System.debug(a);