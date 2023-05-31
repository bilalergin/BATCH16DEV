public class AccountHelper {
    @future
    public static void updateNumberOfContacts(Set<Id> accountIds) {
        List<Account> accountsToUpdate = new List<Account>();
        
        // Query the Account records with the provided Ids
        List<Account> accounts = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountIds];
        
        // Retrieve the count of contact records for each Account
        for (Account acc : accounts) {
            Integer contactCount = acc.Contacts.size();
            System.debug(acc.Contacts.size());
            // Update the Number of Contacts field on the Account
            acc.Number_of_Contacts__c = contactCount;
            accountsToUpdate.add(acc);
        }
        
        // Perform the update
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;
        }
    }
}
