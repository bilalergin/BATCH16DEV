public class ContactTriggerHandler {

    //Burası TR ders
    public static void insertMetot(List<Contact> conTriggerNew) {
        Set<Id> accIds = new Set<Id>();
        for (contact con : conTriggerNew) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);
        }
    }
    public static void updateMetot(List<Contact> conTriggerNew, Map<Id,Contact> conTriggerOldMap) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggerNew) {
            contact oldCon = conTriggerOldMap.get(con.id);
            if (con.AccountId != oldCon.AccountId) {
                accIds.add(con.AccountId);
                accIds.add(oldCon.AccountId);
            }  
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);
        }
    }
    public static void deleteMetot(List<Contact> conTriggerOld) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggerOld) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);
        }
    }
    public static void numberOfContacts(Set<Id> accIds) {
        List<Account> accList = [select id, Number_of_Contacts__c, (select id from contacts) from Account where id in :accIds];
        for (account acc : accList) {
            acc.Number_of_Contacts__c = acc.Contacts.size();
        }
        update accList;
    }


//! 15.05.2023


   public static void validate1(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
        //validate.
        //if leadsource is ALREADY partner referral, then DON't ALLOW user to update record.

        //addError method to add validation or throw error in trigger.
            //we can use addError method in ONE record of trigger.new or trigger.newMap
            //we cannot use addError method on trigger.old or trigger.oldMap WHILE inserting or Updating.
        
        for (Contact newContact : cTriggerNew) {
            //if old leadsource is partner referral.
            Contact oldContact = cTriggerOldMap.get(newContact.Id);
            if (oldContact.leadsource == 'Partner Referral') {
                newContact.addError('Cannot update contact if lead source is partner referral');
            }

        }
   }
   public static void validate2(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
        //validate
        //DO NOT ALLOW USER to update LeadSource field.
        for (contact newContact : cTriggerNew) {
            //validate if lead source is updated.
            //how to check if lead source is updated?
                //old contact leadsource != new contact lead source
            Contact oldContact = cTriggerOldMap.get(newContact.id);
            if (newContact.leadsource != oldContact.LeadSource) {
                //how to access custom label in apex?
                    //system.label.labelName //! custom label ayarladık.
                //newContact.LeadSource.addError('Cannot update lead source! Please user. Behave! ');//! Hata mesajını buradan uyazıyoruz.
                newContact.LeadSource.addError(System.label.ContactValidation2);//! Bu dinamik olanı. Hata mesajını orgdan custom label dan yazıyoruz.
            }
        }
   }
}
