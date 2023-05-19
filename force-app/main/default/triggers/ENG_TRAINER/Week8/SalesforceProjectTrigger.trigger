trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
        //call handler method here to create new ticket.
        SPTRiggerHandler.createDefaultTicket(Trigger.New);
    }
}