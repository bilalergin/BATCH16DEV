ExceptionDemo.Demo2(null, 5);//will this work? DMLException
ExceptionDemo.Demo2('simple', 0);//error. MathException

ExceptionDemo.Demo2(null, 0); //DMLException
ExceptionDemo.Demo2('simple', 5);// query exceptin exception demonun 23. satırından geliyor


ExceptionDemo.demo1('Hello hellow');//will this work?2 tane debug çalışırır

ExceptionDemo.demo1(null);//nullpointer exception hatası verir. bunu try catch le aşarız 

account a1 = ExceptionDemo.demo3(null);//bu şekilde account üretmiyor
system.debug('** returned account a1: ' + a1);

system.debug('---------');

account a11 = ExceptionDemo.demo3('sForce');
system.debug('** returned account a11: ' + a11);//account üretiyor