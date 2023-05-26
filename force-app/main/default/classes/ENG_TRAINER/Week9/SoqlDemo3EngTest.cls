@IsTest
public class SoqlDemo3EngTest {
    @TestSetup
    static void makeData(){
        //List<integer> listInt = new List<integer>{1,5,8,9};//liste böyle yazabilitriz
        
            List<account> listAcc = new list<account>{
                new account(name = 'May', phone = '7775556666'),
                new account(name = 'June'),
                new account(name = 'Sunday',industry= 'Energy')
            };
            insert listAcc;
            
            List<contact> listContacts = new list<contact>();
            for (Integer i = 0; i < 300; i++) {
                contact c = new contact(lastname = 'test con ' + i);
                if (i < 100) {
                    c.accountid = listAcc[0].Id;
                } else if(i < 200){
                     c.accountid = listAcc[1].Id;
                } else {
                     c.accountid = listAcc[2].Id;
                }
               listContacts.add(c);
            }
            insert listContacts;
        
        
    }
}