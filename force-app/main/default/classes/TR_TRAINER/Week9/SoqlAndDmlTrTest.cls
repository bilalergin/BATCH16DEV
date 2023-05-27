@istest
public class SoqlAndDmlTrTest {
        //! 25.05.2023
/*
Yaptığımız testi doğrulamak için System.assert Equals(beklenenDeğer,  gerçekleşenDeğer) gibi System Class methodlarını kullanırız. 

"Test işlemlerinde hali hazırda org'da bulunan record'ları kullanmayız, test sırasında DML işlemi sonucu recordlar sanal olarak oluşturulur. Test işlemi bu sanal record'lar vasıtasıyla yapılır.
DML işlemlerini test ederken, ilgili class ve method çağırılır. Test sırasında bir DML işlemi olup olmadığını kontrol etmek için test method'unda SOQL yapılır."
*/
    @istest
    private static void getAccWithOppTest() {
        List<Account> accList = new List<Account>();
        // for (Integer i = 1; i <= 3; i++) {
        //     account acc = new account();
        //     acc.name = 'Demo ' + i;
        //     accList.add(acc);//alttaki insertün for la yapılışı
        // }
        account acc1 = new account();
        acc1.name = 'Demo 1';
        accList.add(acc1);
        account acc2 = new account();
        acc2.name = 'Demo 2';
        accList.add(acc2);
        account acc3 = new account();
        acc3.name = 'Demo 3';
        accList.add(acc3);
        insert accList;

        List<Opportunity> oppList = new List<Opportunity>();
        for (account acc : accList) {
            Opportunity opp = new Opportunity();
            opp.name = acc.name + ' Opportunity';
            opp.CloseDate = date.today().addDays(30);
            opp.StageName = 'prospecting';
            opp.AccountId = acc.id;
            oppList.add(opp);
        }
        insert oppList;

        integer sz = SoqlAndDmlTr.getAccWithOpp();
        assert.areEqual(3, sz);
    }
    @istest
    private static void createAccountTest() {
        SoqlAndDmlTr.createAccount('Softinnovas');
        account acc = [select id, name from account limit 1];
        assert.areEqual('Softinnovas', acc.name);
        List<Contact> conList = [select id from contact];
        assert.isTrue(conList.size()>0);
    }
}