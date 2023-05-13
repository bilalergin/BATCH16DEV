account a = new account();
a.name = 'acc trigger 06';
insert a;

account b = new account();
b.name = 'acc trigger 07';
insert b;


list<account> listAcc = new list<account>();
for (Integer i = 0; i < 5; i++) {
    account ac = new account();
    ac.Name = 'test trigger acc ' + i;
    listAcc.add(ac);
}

insert listAcc;

