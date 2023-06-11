 List<account> listAcc = new list<account>{
    new account(name = 'May', phone = '7775556666', Industry = 'Energy'), //1. good guy
    new account(name = 'June', Active__c = 'Yes'), //2. good guy
    new account(name = 'Sunday', Industry = 'Energy', Active__c = 'Yes'), //3. good guy
    new account() //4. bad guy
};
//insert listAcc; //how many records will this insert? //! 0 biri insert olmayınca diğerleri de olmuyor
            //list, allOrNothing
//Database.insert(listAcc, true);//?hiçbiri insert olmaz
//Database.insert(listAcc, false); //?good lar insert olur, bad ler olmaz ama hata vermez 
//! database class, insert metot

List<Database.saveResult> allResults = Database.insert(listAcc, false); 
//this will insert good ones, and NOT INSERT bad ones - NOT THROW any error.


for(Database.saveResult res: allResults){
    if(res.isSuccess()){
        system.debug('record inserted 
        successfully. Record id is: ' + res.getId());
    } else {
        system.debug('NOT success. ERROR is : ' + res.getErrors());
    }
}

List<database.SaveResult> r2 = database.update(l2, false);
list<database.DeleteResult> r3 = database.delete(lids, false);
list<database.UndeleteResult> r4 = database.undelete(lids, false);

delete [select id, name from account where createddate = TODAY ];
