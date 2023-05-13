trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
    list<Lead> newLeads = trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger.new : ' + trigger.new);
        system.debug('before insert number of records : ' + trigger.new.size());

        for (Lead eachLead : newLeads) {
            system.debug('Before insert - new lead ID: ' + eachLead.Id);
            system.debug('Before insert - new lead LastName: ' + eachLead.LastName);
        }
    }
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger.new : ' + newLeads);
        system.debug('after insert number of records : ' + newLeads.size());
        
        for (Lead eachLead : trigger.new) {
            system.debug('AFter insert - new lead ID: ' + eachLead.Id);
            system.debug('After insert - new lead LastName: ' + eachLead.LastName);
        }
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before Update trigger.new : ' + trigger.new);
        system.debug('before Update number of records : ' + trigger.new.size());
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('after Update trigger.new : ' + newLeads);
        system.debug('after Update number of records : ' + newLeads.size());
    }

}