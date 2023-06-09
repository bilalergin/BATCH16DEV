@istest

//! 03.06.2023
public class BatchApex16Test {
    @TestSetup
    static void makeData(){
        List<Account> accList = new List<Account>();
        for (Integer i = 1; i <= 950; i++) {
            account acc = new account();
            acc.Name = 'Account ' + i;
            accList.add(acc);
        }
        if (!accList.isEmpty()) {
            insert accList;
        }
    }
    @istest
    private static void batchClassTest() {
        BatchApex16 b16 = new BatchApex16();
        test.startTest();
        Database.executeBatch(b16, 950);
        test.stopTest();

        List<Account> updateList = [select id, name, annualRevenue from account];
        for (account acc : updateList) {
            assert.isTrue(acc.name.contains('updated'));
            assert.areEqual(10000, acc.AnnualRevenue);
        }
        List<Contact> conList = [select id from contact];
        
        //assert.isTrue(conList.size()>0);//ile de contact üretiliyor mu diye kontrol edebiliriz
        assert.areEqual(950, conList.size());
    }
}