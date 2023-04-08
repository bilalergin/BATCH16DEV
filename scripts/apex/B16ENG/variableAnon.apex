//! String = data type
//! firstVariable = variable name
//! = >>> assigment

String firstVariable = 'This is first variable';
System.debug(firstVariable);

firstVariable= 'Update variable';// Will this work? Yes. üstteki update ediliyor böyle yazınca.
System.debug(firstVariable);

String firstName = 'Bilal';
String lastName = 'Ergin';
String fullName = firstName + ' ' + lastName;
System.debug('full name is '+ fullName);


//todo Defining variable means creating a new variable and assigning value to it // değer atanmış olan define demek
String definingStr= 'this is string';
//todo birden çok variable aynı yere atanabilir
String a,b,c;
System.debug(a);
System.debug(b);
System.debug(c); // Bunlar null gelir

String x= 'This', y='is', z= 'simple';
System.debug(x+y+z);// this is simple, gelir

String strr= 'PRR';
System.debug(STRR);// strr STRR olarak çalışır çünkü apex incase sensitive dir. 

String str = 'This is';
//string str = 'Giving error' //! Böyle çalışmaz. Üstteki variable name le aynı olduğu için.
str = 'Giving error'; //bunu yazınca reassign etmiş oluyoruz ve birinci update oluyor
System.debug(str); //? aynı variable name le execute yapamayız. Çalışmaz.

string example = 'some string'; //defining a variable
//string example = 'some other string';//re-defining a variable - this variable already exist. will thow error
system.debug(example);

//todo declaring means just creating variable // declare edilmiş ama değeri yok declare demek. Sonradan değer atanabilir
String declarStr;
System.debug(declarStr);// Bu null gelir

