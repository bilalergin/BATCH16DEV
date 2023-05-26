trigger AccountTrigger22 on Account ( before insert, after insert, before update, after update, before delete, after delete, after undelete) {
       
    //! 19.05.2023
    if (Trigger.isBefore) {
        //insert or update
        if (Trigger.isinsert || Trigger.isUpdate) {
            AccountTriggerHandler.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
        }
        //delete
        if(Trigger.isDelete){
            //validate here.
            AccountTriggerHandler.validateAccDelete(Trigger.old);
        }
    }
    if(Trigger.isAfter && Trigger.isUndelete){
        //call method to send email to user
        AccountTriggerHandler.sendAccEmail(trigger.new);
        
    }

    
    
    //! 16.05.2023

    if (Trigger.isBefore) {
        AccountTriggerHandler.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //call handler method to update all contact's VIP field.
        AccountTriggerHandler.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }
    
  
   //! 16.05.2023

 
//    if (Trigger.isBefore) {
//     for (Account newAcc : Trigger.new) {
//         //boolean flag to maintain if we want to update description field
//         boolean updateDesc = false;
//         //check insert
//         if (Trigger.isInsert && newAcc.active__c == 'Yes') {
//             //update description field
//             //set new field value
//             //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
//             updateDesc = true;
//         }

//         //check if update
//         if(Trigger.isUpdate){
//             //if active field is changed, and active field new value is 'yes'
//                 //old acc active field != new acc active field AND new acc active field == yes
//             if(newAcc.Active__c != Trigger.oldMap.get(newAcc.id).Active__c
//             && newAcc.Active__c == 'Yes'){
//                 //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
//                 updateDesc = true;
//             }
//         }

//         if(updateDesc){
//             newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
//             newAcc.rating = 'Warm';//? update yes ise rating değişir
//             newAcc.AnnualRevenue =60000;//? update yes ise annurev değişir

//         }   

//     }
// }

    // if (Trigger.isBefore) {
    //     for (Account newAcc : Trigger.new) {
    //         //check insert
    //         if (Trigger.isInsert && newAcc.active__c == 'Yes') {//! bu kodun refactoring hali üstteki
    //             //update description field
    //             //set new field value
    //             newAcc.Description = 'Account is now active. Enjoy buddy!';
    //         }

    //         //check if update
    //         if(Trigger.isUpdate){
    //             //if active field is changed, and active field new value is 'yes'
    //                 //old acc active field != new acc active field AND new acc active field == yes
    //             if(newAcc.Active__c != Trigger.oldMap.get(newAcc.id).Active__c
    //             && newAcc.Active__c == 'Yes'){
    //                 newAcc.Description = 'Account is now active. Enjoy buddy!';
    //             }
    //             // Id accId = newAcc.id;
    //             // Account oldAccount = Trigger.oldMap.get(accId);

    //             // if(newAcc.Active__c != oldAccount.Active__c && newAcc.Active__c == 'Yes'){
                    
    //             // }
    //         }
    //     }
    // }
    
    
    
    // if (Trigger.isAfter && Trigger.isUpdate) {  
    //     integer websiteChange = 0;
        
    //     for (Id eachId : Trigger.newMap.keySet()) {
    //         //how to check if website field is changed?
    //             //new account's website field NOT EQUAL to old account's website field
            
    //         Account oldAcc = Trigger.oldMap.get(eachId);
    //         Account newAcc = Trigger.newMap.get(eachId);

    //         if (oldAcc.website != newAcc.website) {
    //             system.debug('for account: ' + newAcc.Name + ', NEW website is ' + newAcc.website);
    //             websiteChange++;
    //         }
    //     }
    //     system.debug('website changed in ' + websiteChange + ' accounts');
    // }







    // List<account> newAccounts = Trigger.new;
    // Map<id, account> newAccountsMap = Trigger.newMap;

    // List<account> oldAccounts = Trigger.old;
    // Map<id, account> oldAccountsMap = Trigger.oldMap;



    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     //set<id> allKeys = newAccountsMap.keySet();
    //     for (Id eachId : newAccountsMap.keySet()) {
    //         system.debug('account id is ' + eachId);
    //         account oldAcc = oldAccountsMap.get(eachId);
    //         account newAcc = newAccountsMap.get(eachId);

    //         system.debug('acc id: ' + eachId + ', old acc name is ' + oldAcc.Name + ', new acc name is ' + newAcc.Name);
    //     }

    // }

    // //ids of newMap and oldMap will be same or NOT same?

    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('====BEFORE INSERT=====');
    //     system.debug('before insert trigger.old: ' + trigger.old);
    //     system.debug('before insert trigger.new: ' + trigger.new);
    //     system.debug('before insert trigger.oldMap: ' + trigger.oldMap);
    //     system.debug('before insert trigger.newMap: ' + trigger.newMap);
    // }
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('====AFTER INSERT=====');
    //     system.debug('after insert trigger.old: ' + trigger.old);
    //     system.debug('after insert trigger.new: ' + trigger.new);
    //     system.debug('after insert trigger.oldMap: ' + trigger.oldMap);
    //     system.debug('after insert trigger.newMap: ' + trigger.newMap);
    // }

    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('====BEFORE UPDATE=====');
    //     system.debug('before update trigger.old: ' + trigger.old);
    //     system.debug('before update trigger.new: ' + trigger.new);
    //     system.debug('before update trigger.oldMap: ' + trigger.oldMap);
    //     system.debug('before update trigger.newMap: ' + trigger.newMap);
    // }
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('==== AFTER UPDATE =====');
    //     system.debug('after update trigger.old: ' + trigger.old);
    //     system.debug('after update trigger.new: ' + trigger.new);
    //     system.debug('after update trigger.oldMap: ' + trigger.oldMap);
    //     system.debug('after update trigger.newMap: ' + trigger.newMap);
    // }
    

    system.debug('----');
    //we can do this in Before Update also (since we are JUST printing we can do in any)
    // if (Trigger.isAfter && Trigger.isUpdate) {

    //     for (account oldAcc : Trigger.old) {
    //         system.debug('old acc id: ' + oldAcc.Id + ', old acc name: ' + oldAcc.Name + 'old acc rating: ' + oldAcc.Rating);
    //     }
        
    //     List<account> newAccounts = Trigger.new;
    //     for (account newAcc : newAccounts) {
    //         system.debug('new acc id: ' + newAcc.Id + ', new acc name: ' + newAcc.Name + 'new acc rating: ' + newAcc.Rating);
    //     }
    // }

    // system.debug('----');

    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before insert trigger.old: ' + trigger.old);
    //     system.debug('before insert trigger.new: ' + trigger.new);
    // }
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after insert trigger.old: ' + trigger.old);
    //     system.debug('after insert trigger.new: ' + trigger.new);
    // }

    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('before update trigger.old: ' + trigger.old);
    //     system.debug('before update trigger.new: ' + trigger.new);
    // }
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('after update trigger.old: ' + trigger.old);
    //     system.debug('after update trigger.new: ' + trigger.new);
    // }

    
    // //trigger.new is LIST<sObject>

    // list<account> newAccounts = trigger.new;
    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before insert trigger.new : ' + trigger.new);
    //     system.debug('before insert number of records : ' + trigger.new.size());

    //     for (account eachAcc : newAccounts) {
    //         system.debug('Before insert - new acount ID: ' + eachAcc.Id);
    //         system.debug('Before insert - new acount Name: ' + eachAcc.Name);
    //     }
    // }
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after insert trigger.new : ' + newAccounts);
    //     system.debug('after insert number of records : ' + newAccounts.size());
        
    //     for (account eachAcc : trigger.new) {
    //         system.debug('AFter insert - new acount ID: ' + eachAcc.Id);
    //         system.debug('After insert - new acount Name: ' + eachAcc.Name);
    //     }
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('before Update trigger.new : ' + trigger.new);
    //     system.debug('before Update number of records : ' + trigger.new.size());
    // }
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('after Update trigger.new : ' + newAccounts);
    //     system.debug('after Update number of records : ' + newAccounts.size());
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

    //system.debug('---');

   
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
}