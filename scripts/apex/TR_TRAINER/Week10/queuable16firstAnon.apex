//BatchApex16anon.apexte execute ettik. burada executa gerek yok
//! 03.06.2023


//1. version
Queuable16first q16 = new Queuable16first();
System.enqueueJob(q16);

//2. version
System.enqueueJob(new Queuable16first());

delete [select id, name from account where createddate = TODAY ];
