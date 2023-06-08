public class AccountTriggerHandler16 {
    public static void createContact(List<Account> accNew) {
        List<Contact> conList = new List<Contact>();
            for (account acc : accNew) {
                Contact con = new Contact();
                con.LastName = 'Contact';
                con.AccountId = acc.id;
                conList.add(con);
            }
            insert conList;
    }
    @future
    public static void futureCreateContact(set<id> accIds) {
        List<Contact> conList = new List<Contact>();
        for (id accId : accIds) {
            Contact con = new Contact();
            con.LastName = 'Contact';
            con.AccountId = accId;
            conList.add(con);
        }
        insert conList;
    }

    //Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
    public static void descriptionUpdate(List<Account> accNew, Map<Id,Account> accOldMap) {
        set<id> accIds = new Set<id>();
        for (Account acc : accNew) {
            if (acc.Description != accOldMap.get(acc.id).Description) {
                accIds.add(acc.id);
            }
        }
        if (!accIds.isEmpty()) {
            futureUpdateDescription(accIds);
        }
    }

    @future
    public static void futureUpdateDescription(set<id> accIds) {
        List<contact> conList = [select id, description, account.description from contact where AccountId =: accIds];
        for (contact con : conList) {
            con.Description = con.account.Description;
        }
        update conList;

        List<opportunity> oppList = [select id, description, account.description from opportunity where AccountId =: accIds];
        for (opportunity opp : oppList) {
            opp.Description = opp.account.Description;
        }
        update oppList;
    }
}