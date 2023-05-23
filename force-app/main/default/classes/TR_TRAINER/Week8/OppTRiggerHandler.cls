public with sharing class OppTRiggerHandler {
    //! 20.05.2023
    /*
    soru : Bir opportunity nin Amount update edildiğinde, amount olan bir opportunity create edildiginde veya amount olan bir opportunity record silindiginde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
    */
    public static void insertMetot(List<Opportunity> oppTriggerNew) {
        set<id> accIds = new set<id>();
        for (Opportunity opp : oppTriggerNew) {
            if (opp.Amount != null && opp.AccountId != null) {
                accIds.add(opp.AccountId);//? isempty listler ve maplerle ilgili bir yapı burada tek bir alan aldığımız için kullanamayız.

            }
        }
        if (!accIds.isEmpty()) {
            totalAmount(accIds);
        }
    }

    public static void updateMetot(List<Opportunity> oppTriggerNew, Map<Id,Opportunity> oppTriggerOldMap) {
        set<id> accIds = new set<id>();
        for (Opportunity opp : oppTriggerNew) {
            Opportunity oldOpp = oppTriggerOldMap.get(opp.id);
            if (opp.Amount != oldOpp.Amount || opp.AccountId != oldOpp.AccountId) {
                accIds.add(opp.AccountId);
                accIds.add(oldOpp.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
            totalAmount(accIds);
        }
    }

    public static void deleteMetot(List<Opportunity> oppTriggerOld) {
        set<id> accIds = new set<id>();
        for (Opportunity opp : oppTriggerOld) {
            if (opp.Amount != null && opp.AccountId != null) {
                accIds.add(opp.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
            totalAmount(accIds);
        }
    }

    public static void totalAmount(set<id> accIds) {
        List<Account> acclist = [select id, description, (select id, amount from Opportunities where amount != null) from Account where id in :accIds];
        for (account acc : acclist) {
            Decimal toplam = 0;
            List<Opportunity> oppList = acc.Opportunities;
            for (Opportunity opp : oppList) {
                toplam += opp.Amount;// toplam = toplam + opp.Amount;
            }
            acc.Description = 'Bu Accounta bagli tum opportunitylerin Amountlar toplami = ' + toplam;
        }
        update acclist;
    }



    //! 18.05.2023
    // public static void cahngeStageName(List<Opportunity> oppNew, List<Opportunity> oppOld, Map<Id,Opportunity> oppNewMap,Map<Id,Opportunity> oppOldMap ) {
    //     for (Opportunity opp : oppNew) {
    //         if (opp.StageName != oppOldMap.get(opp.Id).StageName) {
    //             if (opp.StageName == 'Closed Lost') {
    //                 opp.Description = 'Çok üzgünüz';
                    
    //             }
    //             if (opp.StageName == 'Closed Won') {
    //                 opp.Description = 'Yaşasın';
                    
    //             }
    //             if (opp.StageName == 'Prospecting') {
    //                 // opp.addError('Süreci başa döndüremezsiniz.');
    //                 opp.StageName.addError('Süreci başa döndüremezsiniz.');
                    
    //             }
                
    //         }
            
    //     }
    // }
}