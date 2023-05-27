trigger DepartmentTrigger on Department__c (before insert, after insert) {
        //!27.05.2023

 if(trigger.isAfter && trigger.isInsert){
        DepartmentTriggerHandler.createDefaultEmpFuture(trigger.newMap.keyset());
    }
}