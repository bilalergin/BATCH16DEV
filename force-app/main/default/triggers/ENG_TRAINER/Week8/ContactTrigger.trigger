
trigger ContactTrigger on Contact (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

  if (trigger.isAfter) {
      // 1. asama insert
      if (trigger.isInsert || trigger.isUndelete) {
        ContactTriggerHandler.insertMetot(trigger.new);
      }
      // 2. asama update
      if (trigger.isUpdate) {
        ContactTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
      }
      // 3. asama delete
      if (trigger.isDelete) {
        ContactTriggerHandler.deleteMetot(trigger.old);
      }
  }  
    
    // //! 18.05.2023 yukarıdaki metotla aynı ama handları yok
    // create a set of ids to store account ids
    // account id of all updated/inserted/deleted/undeleted contact ids
    // Set<Id> accountIds = new Set<Id>();

    // if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
    //     for (Contact con : Trigger.new) {
    //         if (con.AccountId != null) {
    //             accountIds.add(con.AccountId);
    //         }
    //     }
    // }
    // if (Trigger.isUpdate || Trigger.isDelete ) {
    //     for (Contact con : Trigger.old) {
    //         if (con.AccountId != null) {
    //             accountIds.add(con.AccountId);
    //         }
    //     }
    // }

    // if the list is not empty
    // do soql to get all account and contacts inside it
    // if (!accountIds.isEmpty()) {
    //     List<Account> accList = [SELECT id,number_of_contacts__c, (SELECT id from Contacts) FROM Account WHERE id in : accountIds];

    //     if (!accList.isEmpty()) {
    //         List<Account> updateAccList = new List<Account>();
    //         for (Account acc : accList) {
    //             Account objAcc = new Account(Id = acc.id, Number_of_COntacts__c = acc.Contacts.size());
    //             updateAccList.add(objAcc);
    //         }
    //         if (!updateAccList.isEmpty()) {
    //             update updateAccList;
    //         }
    //     }            
    // }
  

    //! 16.05.2023
    if (Trigger.isBefore && Trigger.isUpdate) {
        //call handler method to validate contact update
        ContactTriggerHandler.validate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        ContactTriggerHandler.validate2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    //! 12.05.2023
// //this will be true in before insert and before update
// if (Trigger.isBefore) {
//     system.debug('Contact Before Trigger');
//     if (Trigger.isInsert) {
//         system.debug('contact before insert trigger');
//     }
//     if (Trigger.isUpdate) {
//         system.debug('contact before update trigger');
//     }
// }

//  if (Trigger.isAfter) {
//     system.debug('Contact After Trigger');
//     if (Trigger.isInsert) {
//         system.debug('contact After insert trigger');
//     }
//     if (Trigger.isUpdate) {
//         system.debug('contact After update trigger');
//     }
// }

}