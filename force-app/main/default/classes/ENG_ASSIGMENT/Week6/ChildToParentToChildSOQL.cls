public with sharing class ChildToParentToChildSOQL {
    //! 10.05.2023
    public static void childToParent() {
        List<Contact> listContact = [select id, name, Account.id, Account.Name from Contact];
        for (contact eachCont : listContact) {
            System.debug('Id from Account ' +eachCont.Account.id + ' Name from Account ' + eachCont.Account.Name);
            
        }
    }
    public static void ParentTochild() {
        List<Account> listAccount = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account];
        for (Account eachAcc : listAccount) {
            System.debug('Account id= ' + eachAcc.Id + ' Account name= ' + eachAcc.Name);
            for (Contact eachcont : eachAcc.Contacts) {
                System.debug('Contact id = ' + eachcont.id + ' Contact name= ' + eachcont.Name);
                
            }
        }
        
    }
}
    

    
