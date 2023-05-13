ReturnClassAssignment n = new ReturnClassAssignment();
string name = n.returnStringMethod('Bilal ', 'Ergin');
System.debug('My name is ' + name);

Integer resultZ = n.addition(1, 3);
System.debug('Sum of x + y = ' + resultZ);

Integer resultV = n.addition(1, 3, 4, 6);
System.debug('Sum of x + y + z + m = ' + resultV);

ReturnClassAssignment ikinciyol = new ReturnClassAssignment();
ikinciyol.stringMethod('Bilal', 'Ergin');
