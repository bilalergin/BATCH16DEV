Opportunity opp = new Opportunity();
opp.Name = 'Opp trigger 2';
opp.StageName = 'Prospecting';
opp.CloseDate = date.today().addDays(60);
insert opp;

opp.Name += ' update';
update opp; 

List<Account> accList = new List<Account>();
account acc1 = new account();
acc1.name = 'Amazon';
accList.add(acc1);

account acc2 = new account();
acc2.name = 'Google';
accList.add(acc2);

insert accList;