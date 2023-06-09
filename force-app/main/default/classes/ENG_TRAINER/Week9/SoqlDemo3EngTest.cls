@isTest
public class SoqlDemo3EngTest {
        //!26.05.2023

    @TestSetup
    static void makeData(){
        List<account> listAcc = new list<account>{
            new account(name = 'May', phone = '7775556666', Industry = 'Energy'),
            new account(name = 'June'),
            new account(name = 'Sunday', Industry = 'Energy')
        };
        insert listAcc;

        List<contact> listContacts = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact(lastname = 'test con ' + i);
            if (i < 100) {
                //to get ID of may
                Account acc0 = listAcc[0];
                c.accountid = acc0.Id;
            } else if(i < 200){
                 c.accountid = listAcc[1].Id;
            } else {
                 c.accountid = listAcc[2].Id;
            }
           listContacts.add(c);
        }
        insert listContacts;
    }

    @isTest
    public static void testSOQL1() {
        SoqlDemo3Eng.childToParentQuery();
    }

    @IsTest
    private static void testSOQL2(){
        //we need opportunity for account records.
        list<account> allAcc = [select id, name, industry from account];
        //what will be industry for each acc here?
            //1. Same as setup
        List<Opportunity> listOpp = new List<Opportunity>();
        Opportunity opp = new Opportunity(name = 'TEst opp', CloseDate = date.today(), StageName ='New', amount = 5000, AccountId = allAcc[0].id);
        listOpp.add(opp);
        Opportunity opp2 = new Opportunity(name = 'TEst opp 2', CloseDate = date.today(), StageName ='New', amount = 10000, AccountId = allAcc[1].id);
        listOpp.add(opp2);
        insert listOpp;
        soqlDemo3Eng.childToParentSOQL1();
    }
}