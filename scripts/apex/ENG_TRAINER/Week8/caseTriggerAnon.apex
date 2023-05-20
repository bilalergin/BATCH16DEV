List<case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
        //create new case instance
    Case c = new Case(Subject = 'There is a bug ' + i, Origin ='Web', status = 'New', Description ='Resolve it.' );
    listCase.add(c);
}
insert listCase;//insert,delete gibi işlemler for un içine yazılmaz.Zira dml limiti 150 dir. for un içine yazarsak hata alırız. 
delete listCase;//?bununla oluşturup hemen silebiliriz



// CaseTriggerHandler.countRecords =200;
// System.debug(CaseTriggerHandler.countRecords);

// CaseTriggerHandler.countRecords +=5;
// System.debug(CaseTriggerHandler.countRecords); // static variable ın çalışmasını görmek için yazdık.


// List<Case> casesToDelete = [SELECT Id FROM Case where createddate = TODAY];//? bu metotla silmek uzun olduğu için alttaki tek satırla siliyoruz.
// if (!casesToDelete.isEmpty()) {
//     delete casesToDelete;
// }

Delete [select id from case where createddate = TODAY];//! Case lerde name olmadığı için sadece id ile silebiliriz.
