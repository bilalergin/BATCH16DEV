trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     //call handler method here to create new ticket.
    //     SPTriggerHandler.createDefaultTicket(Trigger.New);
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     //vali date
    //     SPTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
}