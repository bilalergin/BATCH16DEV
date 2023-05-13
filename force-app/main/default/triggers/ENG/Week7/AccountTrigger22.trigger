//Change SOBJECT  --> Account
//save
//DEPLOY
trigger AccountTrigger22 on Account ( before insert, after insert, before update, after update) {



    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger.old: ' + trigger.old);
        system.debug('before insert trigger.new: ' + trigger.new);
    }
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger.old: ' + trigger.old);
        system.debug('after insert trigger.new: ' + trigger.new);
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('before update trigger.old: ' + trigger.old);
        system.debug('before update trigger.new: ' + trigger.new);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('after update trigger.old: ' + trigger.old);
        system.debug('after update trigger.new: ' + trigger.new);
    }

    
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

    system.debug('---');

   
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