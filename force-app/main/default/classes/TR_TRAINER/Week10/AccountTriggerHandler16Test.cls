@istest
public class AccountTriggerHandler16Test {
    @istest
    private static void futureCreateContactTest() {
        Account acc = new account();
        acc.Name = 'Account Future Test';

        Test.startTest();
        insert acc;
        Test.stopTest();
        List<Contact> conList = [select id, name from contact where accountId =: acc.id];
        assert.isTrue(conList.size()>0);
        // assert.areEqual(1, conList.size());
        // assert.areEqual('Contact', conList[0].name);
    }
    @istest
    private static void descriptionUpdateTest() {
         account acc = new account();
         acc.Name = 'Account Future Test';
         insert acc;

         contact con = new contact();
         con.LastName = 'Contact Future Test';
         con.AccountId = acc.id;
         insert con;

         Opportunity opp = new Opportunity();
         opp.Name = 'Opportunity Future Test';
         opp.StageName = 'Prospecting';
         opp.CloseDate = date.today().addDays(30);
         opp.AccountId = acc.id;
         insert opp;

         acc.Description = 'Bu recorda future metot ile bu mesaj eklendi..';
         test.startTest();
         update acc;
         test.stopTest();

         Contact con1 = [select id, description from Contact where AccountId =:acc.id limit 1];
         assert.isNotNull(con1.Description);
         assert.isTrue(con1.Description.contains('future'));

         Opportunity opp1 = [select id, description from opportunity where AccountId =:acc.id limit 1];
         assert.isNotNull(opp1.Description);
         assert.isTrue(opp1.Description.contains('future'));
    }
}