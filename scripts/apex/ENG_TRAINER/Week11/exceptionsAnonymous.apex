//NullPointerException //!exception error demek
    string s;
    s.toLowerCase();

//ListException
    list<integer> l = new list<integer>{0,5,45};
    system.debug('l5 => ' + l[5]);

//QueryException
    account a = [select id, name from account where createddate = today];
    system.debug(a);

    account b = [select id, name from account];
    system.debug(b);
    
    account c = [select id, name from account where name = 'Ben'];
    System.debug(c);//bu 3 kodda sadece 1 account varsa çalışır birden fazla veya azsa çalışmaz. Ben çalışır

    //System.QueryException: List has no rows for assignment to SObject

//limitException
    for(integer i=0; i < 200; i++){
        insert new contact(lastname = 'abc');
    }
    for(integer i=0; i < 200; i++){
        insert new Account(name = 'abc');
    }//Trigger etkilerse query exceitiona dönebilir

    Integer j = 0;
    while (j < 5) {
        System.debug(j);//sonsuz döngüye girer ve cpu time exception verir        
    }
//DMLException
    account a1 = new account();
    a1.Name = null; //isim null olamaz onun için hata verir. Bu satırı hiç yazmasak da aynı hatayı alırız.
    insert a1;
    system.debug('dml done');