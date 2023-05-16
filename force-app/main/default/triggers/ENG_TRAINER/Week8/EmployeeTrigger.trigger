trigger EmployeeTrigger on Employee__c (before insert, after insert, before update, after update) {

    if (Trigger.isBefore) {
        //call handler here.
        EmployeeTriggerHandler.updateJoinDate(trigger.new);
    }
}
    //! 16.05.2023

    /*
    Req: 
    if joining date is blank, then set joining date to today's date.

Object? employee__c
event? before insert or before update or after insert or after update?
    before update
    before insert

We want to update same record record which we are inserting/updating: WE DO IT IN BEFORE TRIGGER.
    */
