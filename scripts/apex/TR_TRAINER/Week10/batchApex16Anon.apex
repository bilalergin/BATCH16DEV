//bunu çalıştırınca queubla first ve second da çalışıyor alttaki queubla ları çalıştırmaya gerek yok
//! 03.06.2023

BatchApex16 ba16 = new BatchApex16();
Database.executeBatch(ba16, 11);

//1. version
Queuable16first q16 = new Queuable16first();
System.enqueueJob(q16);

//2. version
System.enqueueJob(new Queuable16first());

//! Önemli
//? İsmin veya başka yerin sonuna eklediklerimizi bu metotla siliyoruz
List<Account> accList = [select id, name from account];
for (account acc : accList) {
    acc.name = acc.name.remove('updated');
}
update accList;