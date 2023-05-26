public  class SalesforceProjectHelper {
    @InvocableMethod
    public static void closedTicket(List<Id> SPIds) {
        List<Salesforce_Ticket__c> updateTickets = [SELECT id, status__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c IN : SPIds and status__c != 'Completed'];
        for (Salesforce_Ticket__c ticket : updateTickets) {
            ticket.Status__c = 'Completed';
            
        }
        if (!updateTickets.isEmpty()) {
            update updateTickets;
            
        }
    }
}