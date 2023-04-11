ConditionClass_Assignment mnt = new ConditionClass_Assignment();
String m1 = mnt.ifClassMethod(1);
System.debug('Month1 is ' + m1);
String m2 = mnt.ifClassMethod(2);
System.debug('Month2 is ' + m2);
String m12 = mnt.ifClassMethod(12);
System.debug('Month2 is ' + m12);
String m13 = mnt.ifClassMethod(13);
System.debug('Month13 is ' + m13);


String quarter1 = mnt.caseMethod('February');
System.debug('February is ' + quarter1);
String quarter2 = mnt.caseMethod('May');
System.debug('May is ' + quarter2);
String quarter3 = mnt.caseMethod('Spring');
System.debug('Spring is ' + quarter3);

//10.04.2023
