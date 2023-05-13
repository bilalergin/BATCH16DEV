IfAndForLoop ifl = new IfAndForLoop();
string msg1 = ifl.phone('2124442233');
System.debug(msg1);
string msg2 = ifl.phone('2164442233');
System.debug(msg2);
string msg3 = ifl.phone('3124442233');
System.debug(msg3);
string msg4 = ifl.phone('02124442233');
System.debug(msg4);
string msg5 = ifl.phone('ABCDEABCDE');
System.debug(msg5);

IfAndForLoop ifl2 = new IfAndForLoop();
ifl2.sum(16);

IfAndForLoop ifl3 = new IfAndForLoop();
string msg = ifl3.hello('batch16');
System.debug(msg);