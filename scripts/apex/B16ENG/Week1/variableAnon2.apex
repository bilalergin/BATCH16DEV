string a = 'learning', b = 'apex';
system.debug(a+b);
system.debug('a ==> ' + a);
system.debug('b ==> ' + b);

a = a + b;
system.debug('a ==> ' + a);// learningapex yazdırır

a = b;
system.debug(a+b);//apexapex yazdırır.