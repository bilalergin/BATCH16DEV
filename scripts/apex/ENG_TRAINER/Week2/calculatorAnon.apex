Calculator calc = new Calculator();
date bd = date.newInstance(1987, 10, 9);
boolean lp = calc.leapYearCheck(bd);
system.debug('birthdate in leap year? ' + lp);//leap year

integer sum1 = calc.add(10, 15);//2 integer
system.debug('sum1 is ' + sum1);

integer sum2 = calc.add(5,15,55);//3 integer
system.debug('sum2 is ' + sum2);

calc.add(10.10, 15.15);//decimal
// same name methods with diffeent parameters or datatype  is called METHOD OVERLOADING