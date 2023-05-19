public with sharing class OppTRiggerHandler {
    public static void cahngeStageName(List<Opportunity> oppNew, List<Opportunity> oppOld, Map<Id,Opportunity> oppNewMap,Map<Id,Opportunity> oppOldMap ) {
        for (Opportunity opp : oppNew) {
            if (opp.StageName != oppOldMap.get(opp.Id).StageName) {
                if (opp.StageName == 'Closed Lost') {
                    opp.Description = 'Çok üzgünüz';
                    
                }
                if (opp.StageName == 'Closed Won') {
                    opp.Description = 'Yaşasın';
                    
                }
                if (opp.StageName == 'Prospecting') {
                    // opp.addError('Süreci başa döndüremezsiniz.');
                    opp.StageName.addError('Süreci başa döndüremezsiniz.');
                    
                }
                
            }
            
        }
    }
}