list<Lead> listLead = new list<Lead>();
for (Integer i = 0; i < 5; i++) {
    Lead ld = new Lead();
    ld.lastname = 'test trigger Lead object ' + i;
    ld.Status ='Working - Contacted';
    ld.Company = 'Education Company';
    listLead.add(ld);
}

insert listLead;

//updated 1 lead record
Lead ld1 = [select id, lastname, description from lead where lastname = 'test trigger Lead object 0' ];
ld1.lastname += ' update'; 
ld1.Description = 'Field Updated from Anonymous';

update ld1;