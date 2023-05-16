//Change SOBJECT  --> Account
//save
//DEPLOY
//! 10.05.2023
//! trigger kodları nerede işlem yaparsak yapalım çalışır. Mesela DML, Page Layout veya data loader la işlem yapsak da bu kodlar çalışır
//todo before save veya update bastıktan sonra işlem daha kaydedilmeden gelen bilgidir. after ise kayıt işlemi bittikten sonra gelendir.
trigger AccountTrigger on Account (before insert, before update) {

    
        //! Assigment 25 ----16.05.2023

    // if (Trigger.isBefore) {
    //     for (Account newAcc : Trigger.new) {
    //         //check insert
    //         if (Trigger.isInsert && newAcc.active__c == 'Yes') {
    //             //update description field
    //             //set new field value
    //             newAcc.Description = 'Account is Active';
    //         }
    //         if (Trigger.isInsert && newAcc.active__c == 'No') {
    //             //update description field
    //             //set new field value
    //             newAcc.Description = 'Account is Inactive';
    //         }

    //         //check if update
    //         if(Trigger.isUpdate){
    //             //if active field is changed, and active field new value is 'yes'
    //                 //old acc active field != new acc active field AND new acc active field == yes
    //             if(newAcc.Active__c != Trigger.oldMap.get(newAcc.id).Active__c
    //             && newAcc.Active__c == 'Yes'){
    //                 newAcc.Description = 'Account is active';
    //             }
    //             // Id accId = newAcc.id;
    //             // Account oldAccount = Trigger.oldMap.get(accId);

    //             // if(newAcc.Active__c != oldAccount.Active__c && newAcc.Active__c == 'Yes'){
                    
    //             // }
    //         }

    //         if(Trigger.isUpdate){
    //             //if active field is changed, and active field new value is 'yes'
    //                 //old acc active field != new acc active field AND new acc active field == yes
    //             if(newAcc.Active__c != Trigger.oldMap.get(newAcc.id).Active__c
    //             && newAcc.Active__c == 'No'){
    //                 newAcc.Description = 'Account is Inactive';
    //             }
    //             // Id accId = newAcc.id;
    //             // Account oldAccount = Trigger.oldMap.get(accId);

    //             // if(newAcc.Active__c != oldAccount.Active__c && newAcc.Active__c == 'Yes'){
                    
    //             // }
    //         }
    //     }
    // }

    


//trigger.new is LIST<sObject>

// list<account> newAccounts = trigger.new;
// if (Trigger.isBefore && Trigger.isInsert) {
//     system.debug('before insert trigger.new : ' + trigger.new);
//     system.debug('before insert number of records : ' + trigger.new.size());
    
//     for (account eachAcc : trigger.new) {
//         system.debug('Before insert - new acount ID: ' + eachAcc.Id);
//         system.debug('Before insert - new acount Name: ' + eachAcc.Name);
//     }
// }
// if(Trigger.isAfter && Trigger.isInsert){
//     system.debug('after insert trigger.new : ' + newAccounts);
//     system.debug('after insert number of records : ' + newAccounts.size());
    
// }
// if (Trigger.isBefore && Trigger.isUpdate) {
//     system.debug('before Update trigger.new : ' + trigger.new);
//     system.debug('before Update number of records : ' + trigger.new.size());
// }
// if(Trigger.isAfter && Trigger.isUpdate){
//     system.debug('after Update trigger.new : ' + newAccounts);
//     system.debug('after Update number of records : ' + newAccounts.size());
// }
// }

    // //we are learning trigger context variables.

    // //Before Insert event
    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before insert account trigger called');
    // }
    // //After insert event
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after insert account trigger called');
    // }

    
    // //Before Update event
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('before update account trigger called');
    // }
    // //After update event
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('after update account trigger called');
    // }

    // system.debug('---');

   
    // system.debug('isBefore --> ' + trigger.isBefore);
    // system.debug('isAfter --> ' + trigger.isAfter);
    // //isBefore will be true when trigger is running in BEFORE save context
    // //this is true in before insert and before update event
    // if(trigger.isBefore){
    //     //only run when trigger is IN BEFORE.
    //     system.debug('before insert account trigger called');
    // }

    // //isAFTER will be true when trigger is running in AFTER save context.
    // //this is true in after insert and after update event
    // if(Trigger.isAfter){
    //     system.debug('after insert account trigger called');
    // }

    // //this is true in before insert and before update event
    // if(trigger.isBefore){
    //     system.debug('before update account trigger');
    // }
    // //this is true in after insert and after update event
    // if(trigger.isAfter){
    //     system.debug('after update account trigger');
    // }

    // system.debug('----');
//}



// //Change SOBJECT  --> Account
// //save
// //DEPLOY
// //! parantez içindekilere parametre değil EVENT deniyor.
// trigger AccountTrigger on Account (before insert, after insert, before update, after update) {

   
//     system.debug('isBefore --> ' + trigger.isBefore);
//     system.debug('isAfter --> ' + trigger.isAfter);//! iki debugı da önce before sonra after için çalıştırıyor. bu nedenle logda 4 kayıt görüyoruz.
//     //isBefore will be true when trigger is running in BEFORE save context

//     if(Trigger.isBefore && Trigger.isInsert){
//         system.debug('before insert account trigger called');
//     }
//     if(Trigger.isAfter && Trigger.isInsert){
//         system.debug('after insert account trigger called');
//     }
//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('before insert account trigger called');
//     }
//     if(Trigger.isAfter && Trigger.isUpdate){
//         system.debug('after insert account trigger called');
//     }

//         if(trigger.isBefore){//! bunlara trgger context deniyor
//         //only run when trigger is IN BEFORE.
//         system.debug('before insert account trigger called');
//     }

//     //isAFTER will be true when trigger is running in AFTER save context
//     if(Trigger.isAfter){//! if le yazınca kayıtları tek tek görüyoruz. bu nedenle logda 2 tane oluyor
//         system.debug('after insert account trigger called');
//     }
//     if (trigger.isBefore) {
//         System.debug('before update account trigger');

//     }
//     if (trigger.isAfter) {
//         System.debug('after update account trigger');

//     }
    
//     system.debug('----');
// }
}