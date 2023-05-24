public with sharing class DmlAssigment {
    public static void insertAccs() {
        List<Account> listAccount = new List<Account>();
        Account acc1 = new Account();
        acc1.Name ='Assigment 1';
        acc1.Phone = '23154689754';
        acc1.Site = 'Site 1';
        acc1.Website= 'www.assigment1.com';
        listAccount.add(acc1);

        Account acc2 = new Account();
        acc2.Name ='Assigment 2';
        acc2.Phone = '23154689754';
        acc2.Site = 'Site 1';
        acc2.Website= 'www.assigment2.com';
        listAccount.add(acc2);

        insert listAccount;

        System.debug('Inserted Accounts : ');
        System.debug('Id= ' + acc1.Id + ' Name= ' + acc1.Name);
        System.debug('Id= ' + acc2.Id + ' Name= ' + acc2.Name);
    }
    public static void updateAccs() {
        List<Account> accList =[SELECT Id, Name FROM Account WHERE Name IN ('Assigment 1', 'Assigment 2') ORDER BY CreatedDate DESC];
        List<Account> updtList = new List<Account>();
        for (Account eachAcc : accList) {
            eachAcc.Phone = '12365478965';
            eachAcc.Name = eachAcc.Name + ' Updated';
            updtList.add(eachAcc);//Önce içine atacağımız listeyi yazıp sonra add ile istediğimizi onun içine atıyoruz.
            
        }
        update updtList;
        
    }
    public static void deleteAccs() {
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Name IN ('Assigment 1 Updated', 'Assigment 2 Updated')];
        delete accList;
        System.debug('Deleted Accounts:');
        for (Account acc : accList) {
            System.debug('Id= '+ acc.Id + ' Name= ' + acc.Name);
            
        }
    }
    public static void insertOpps() {
        List<Opportunity> opps = new List<Opportunity>();
        for (Integer i = 1; i < 150; i++) {
            Opportunity opp = new Opportunity();
            opp.Type = 'New Customer';
            opp.StageName = 'Qualification';
            opp.CloseDate = date.newInstance(2024, 02, 02);
            opp.Name = 'Homework' + i;
            opp.Description = 'Created for assigment';
            opps.add(opp);            
        }
        insert opps;
    }
    public static void deleteOpps() {
        List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE Name LIKE 'Homework%'];
        delete opps;
    }
    public static void insertCons() {
        Account acc = [SELECT name, id FROM Account WHERE id ='0018d00000cYZwzAAG' LIMIT 1];
        List<Contact> cons = new List<Contact>();
        for (Integer i = 1; i <= 3; i++){
            Contact con = new Contact();
            con.LastName = 'Event Planner ' + i;
            con.Phone = '123456789';
            con.AccountId = acc.id;
            con.LeadSource = 'Web';
            cons.add(con);
            
        }
        insert cons;
    }
}