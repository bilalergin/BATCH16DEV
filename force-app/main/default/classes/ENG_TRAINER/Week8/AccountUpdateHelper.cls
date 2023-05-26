public class AccountUpdateHelper {
    //! 20.05.2023
    @InvocableMethod//flow ve process builder la kullanıyoruz
    public static void updateAccountWebsite(List<id> accIds) {
        //get all account records for these IDS
        list<account> listAcc = [select id, website from account where id in :accIds];

        for (account eachAcc : listAcc) {
            eachAcc.Website = 'www.softinnovasBatch16.com';
        }
        update listAcc;
   }
}