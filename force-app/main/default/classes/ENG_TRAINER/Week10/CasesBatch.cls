public class CasesBatch implements Database.batchable<sobject> {
    //find all cases, and if the case is orphan (no related account), then set default account to Softinnovas.

    public Database.QueryLocator start(Database.BatchableContext bc){
         system.debug('inside start method');
         return database.getQueryLocator([select id, accountid from case]);
    }
    //execute method will execute on group of records
    public void execute(Database.BatchableContext bc, list<case> someCases){
         Account acc = [select id from account where name = 'Softinnovas' limit 1];
         // Account acc = [select id from account order by createddate desc limit 1]; //yukarıdaki soql çalışmazsa böyle de çağırabiliriz.
         //Id accId = [select id from account where name = 'Softinnovas' limit 1].Id; // bu şekilde de alabiliriz.
         
         list<case> updateCases = new list<case>();
         for (case eachCase : someCases) {
             if (eachCase.accountid == null) {
                 eachCase.accountid = acc.id;
                 updateCases.add(eachCase);
             }
         }
         update updateCases;
         system.debug(updateCases.size() + 'updated cases ');
    }
    public void finish(Database.BatchableContext bc){
     system.debug('done. no more orphan cases.');
    }
 }