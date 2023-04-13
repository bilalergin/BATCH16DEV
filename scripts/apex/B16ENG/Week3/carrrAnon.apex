Carrr bmw = new Carrr();//buna create new instance(object) deniyor
bmw.details();//parametresiz consructorı çağırdık. çağırabilmemiz için class da parametresiz constructor olmak zorunda yoksa bu çalışmaz

Carrr bmw2 =   new Carrr(2020);//parametreli consructorı çağırdık
bmw2.details();


Carrr bmw3 = new carrr('ABC10001', 'BMW X3', 'Black', 2023, 50000.00);
Bmw3.details();
Carrr ford = new carrr('ABC10002', ' Ford Mustang', 'Red', 2022, 60000.00);
ford.details();

carrr tesla = new carrr('ABC10003', 'Tesla Model X', 'Silver', 2020, 70000.00);
//deatail()i cls'deki constructora yazdığımız için burada tekrar çağırmıyoruz.

//dot operator
//decimal teslaPrice = tesla.price;//it will give error, reason? PRIVATE
//no brackets variables/properties

tesla.details();//brackets means methods.

carrr necar = new carrr('Ford');//böyle structor olmadığı için çalışmaz