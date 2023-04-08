MethodsDemo m1 = new MethodsDemo();
m1.newMessage('Hank ');//doğrudan pass yaıldı
m1.newMessage('Bilal ');
String n = 'Ben ';
m1.newMessage(n);//variable atanıp pass yapıldı
// m1.newMessage(77); stringe integer atadığımız için çalışmaz

//how many parameters?
//datatype of parameters?            # How many demek.
//return type of method
m1.samplePrintMessage('Hello hello');//yukarıyı çağırmaya PASS deniyor
m1.samplePrintMessage('Something else');//string olduğu için buraya string ifade yazmalıyız.
String s = 'some message to print';
m1.samplePrintMessage(s);// variable name in önemi yok. data type ı uyarsa classtaki kod çalışır

m1.welcomeMessage();

// integer name = 99; stringe integer atadığımız için çalışmaz
// m1.newMessage(name);