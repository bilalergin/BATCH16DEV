public class SoqlDemo {
    //! 02.05.2023
    public static void accountSOQL1() {
        list<account> listAcc = [SELECT id, name, phone from account];
        system.debug('listAcc: ' + listAcc);

        list<contact> listCon = [SELECT id, name, phone from contact];
        system.debug('listCon: ' + listCon);

        list<account> listAcc22 = [SELECT id,name,phone,createddate from account order by createddate desc limit 1];
        System.debug('listAcc '+ listAcc22);//! accounttan bir sobjeyi böyle getirebiliriz. Sonuç liste olduğu için () arasında gelir.
    }

    public static void accountSOQLOneRecord(){
        account acc = [SELECT id, name, phone, createddate from account order by createddate desc limit 1];
        system.debug('acc record ' + acc);//! bir sobjeyi liste yazmadan da böyle getirebilirz. Sonuç obje olduğu için {} arasında gelir.
        
        string accountName = acc.Name; //use dot operation to get any FIELD value
        system.debug('acc name is ' + acc.Name);
        system.debug('phone is ' + acc.Phone);
        system.debug('Id is ' + acc.Id);
    }

    public static void accountSOQL_3() {
        list<account> listAcc = [SELECT id, name, accountnumber, phone from account order by createddate desc];

        for (account eachAcc : listAcc) {
            system.debug('each account: ' + eachAcc);
            system.debug('acc name is ' + eachacc.Name);
            system.debug('acc phone is ' + eachacc.phone);
            system.debug('acc number is ' + eachacc.accountnumber);
            System.debug('acc website ' + eachAcc.Website);//listede olmadığı için query fatal erroru verir apexi execute edince
            system.debug('------');
        }
    }
}








      
   