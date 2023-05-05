public class SoqlUygulamalar {

public static void selectIndustry(string indstry) {
    //Account recordlarindan industry Education olanlarin listesinin record sayisini bulup her bir accountun ismini tek tek yazdiralim.
    
    //List<Account> accList = [select id, name, industry from account where industry = 'Education'];
    System.debug('========selectIndustry Metodu Calisti==========');
    List<Account> accList = [select id, name, industry from account where industry = :indstry];

    System.debug('listemiz = ' + accList);
    integer recordSayisi = accList.size();
    System.debug('Accountlarin record sayilari = '+ recordSayisi);
    for (account acc : accList) {
        System.debug('record = ' + acc);
        System.debug('==================');
        System.debug('name = ' + acc.name);
        System.debug('industry = '+ acc.Industry);
        System.debug('==================');
    }
    System.debug('===========Metot bitti================');
}

public static void childToParent() {
    //Contactlari bagli olduklari accountlarin name ve annualRevenue leri ile beraber getirelim.. annualRevenue bos olanlar gelmesin
    List<Contact> conList = [select id, name, account.name, account.annualRevenue from contact where account.annualRevenue != null];
    System.debug('Listemin record sayisi = ' + conList.size());
    for (contact con : conList) {
        System.debug(con.name + ' contactinin bagli oldugu accountun name = ' + con.account.name + ' ve bu accountun yillik cirosu = ' + con.account.AnnualRevenue);
    }
}

public static void parentToChild() {
    //en son create edilen 5 accountu bagli oldugu contactlari ile beraber getirin. 
    List<Account> accList = [select id, name, createdDate, (select id, name from contacts), (select id, name from opportunities) from account order by createdDate desc limit 5];
    //accountlarin isimlerini ve bagli olan contactlarin isimlerini tek tek yazdiralim..
    for (account acc : accList) {
        System.debug('account = ' + acc.name);//34. satırdan [] içindeki name aldık. Account tan name aldık.
        if (!acc.Contacts.isEmpty()) {
            System.debug('=======Contact================');
             System.debug('contactlar = ' + acc.Contacts);// 34. satırdaki () parantezin içindeki her şeye ulaşıyoruz. Yani tüm cantact lara
             for (contact con : acc.Contacts) {//34. satırdaki () parantezin içindeki istediğimiz fielda ulaşmak için for yapıyoruz. contact ın fieldlarına
                System.debug('contact name = ' + con.name);//34. satırdaki () listeden name aldık. contact tan name aldık
             }
        }
        System.debug('=========Opportunity===========');
            System.debug('Opportunityler = ' + acc.Opportunities);
            for (Opportunity opp : acc.Opportunities) {
                System.debug('opportunity name = ' + opp.name);
            }
        System.debug('==========================================');
    }
}

}