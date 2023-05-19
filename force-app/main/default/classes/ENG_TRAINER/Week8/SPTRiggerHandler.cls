public class SPTRiggerHandler {
    //a method which automates default ticket creation.
    //parameter: List<SP> newly created salesforce project records.
        //If we are insert 50 project, we have to create corresponding 50 tickets. 1 for each Project.
    public static void createDefaultTicket(list<salesforce_project__c> spTriggerNew) {
        //create list of ticket so create bulk records
        List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();

        for (Salesforce_Project__c newSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = newSP.Id;//relationship field
            listST.add(st);
        }
        insert listST;
    }
}