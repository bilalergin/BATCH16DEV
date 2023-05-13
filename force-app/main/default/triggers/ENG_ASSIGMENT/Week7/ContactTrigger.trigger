trigger ContactTrigger on contact (before insert, after insert, before update, after update,before delete, after delete, after undelete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('Before insert contact trigger called');
        
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('After insert contact trigger called');
        
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('Before update contact trigger called');
        
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('After update contact trigger called');
        
    }
    if (Trigger.isBefore && Trigger.isDelete) {
        System.debug('Before delete contact trigger called');
        
    }
    if (Trigger.isAfter && Trigger.isDelete) {
        System.debug('After delete contact trigger called');
        
    }
    if (Trigger.isAfter && Trigger.isUndelete) {
        System.debug('After undelete contact trigger called');
        
    }

}