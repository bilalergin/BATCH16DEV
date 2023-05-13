Candidate.companyName = 'Softinnovas';

Candidate c1 = new Candidate();
// Candidate.count++;
c1.name = 'Jerry';
c1.gender = 'Male';
c1.details();


Candidate c2 = new Candidate();
// Candidate.count++;
c2.name = 'George';
c2.gender = 'Male';
c2.details();

Candidate c3 = new Candidate();
// Candidate.count++;
c3.name = 'Elaine';
c3.gender = 'Female';
c3.details();

Candidate c4 = new Candidate();
// Candidate.count++;
c4.name = 'Kramer';
c4.gender = 'Male';
c4.details();

//we cannot access static member via instance. static new isntance la doğrudan çalışmadığı için alttaki satır çalışmaz
// system.debug('c3 company name is ' + c3.companyName);

system.debug('company name is ' + Candidate.companyName);

Candidate.companyName = 'Salesforce';
system.debug('after change company name is ' + Candidate.companyName);

c1.details();
c2.details();
c3.details();

Candidate.staticDetail();//sadece bunu çağırırsak null gelir. count da 0 olur.


//track number of candidates created in one execution

//static metot classa ait oluyor. Bu nedenle sınıf içindeki değişiklikler 
//birbirini takip edebiliyor. Classa ait oldukları için class ismiyle çağırıyoruz. new instance yapmıyoruz.
//count++ static olunca candidate değerleri 1,2,3... olarak artmaya devam ediyor.
//count++ static olmazsa her instance da tekrar başa döner ve candidate sayısı artmaz. hepsinde aynı değer olur. mesela 1 se hepsi 1 olur.
//non staticte ayrı ayrı bilgiler geldiği için isimler non static ama companyName herkeste aynı olduğu için ve count artmaya devam etmesi için static.