trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update, after delete) {

    //! 20.05.2023
 //soru : Bir opportunity nin Amount update edildiğinde, amount olan bir opportunity create edildiginde veya amount olan bir opportunity record silindiginde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
 
 //1. asama insert durumu..
 if (trigger.isAfter) {
    if (trigger.isInsert) {
        OppTriggerHandler.insertMetot(trigger.new);
    }
    //2. asama update durumu
    if (trigger.isUpdate) {
        OppTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
    }
    //3. asama delete durumu
    if (trigger.isDelete) {
        OppTriggerHandler.deleteMetot(trigger.old);
    }
 }
   
   
   
   
   
   //! 18.05.2023
   /*
   soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.
   */
   
   
    // if (trigger.isUpdate && trigger.isBefore) {
    //     OppTRiggerHandler.cahngeStageName(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
        
    // }
    
    
    
    //!13.05.2023

    /*if (trigger.isInsert) {
        if (trigger.isAfter) {
            System.debug('insert after durumunda tetiklenir.. ic ice 2 if');
        }
    }*/

    // if (trigger.isInsert && trigger.isBefore) {
    //     System.debug('before insert durumunda calisti..');
    //     System.debug('trigger new = ' + trigger.new);
    //     for (opportunity op : trigger.new) {
    //         System.debug('name = ' + op.Name);
    //         System.debug('id = ' + op.id);
    //         System.debug('olusturulma tarihi = ' + op.CreatedDate);
    //     }
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new map = ' + trigger.newMap);
    //     System.debug('trigger old map = ' + trigger.oldMap);
    //     System.debug('=============================================');
    // }
    // if (trigger.isInsert && trigger.isAfter) {
    //     System.debug('after insert durumunda calisti..');
    //     System.debug('trigger new = ' + trigger.new);
    //     for (opportunity op : trigger.new) {
    //         System.debug('name = ' + op.Name);
    //         System.debug('id = ' + op.id);
    //         System.debug('olusturulma tarihi = ' + op.CreatedDate);
    //     }
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new map = ' + trigger.newMap);
    //     System.debug('trigger old map = ' + trigger.oldMap);
    //     System.debug('=============================================');
    // }
    // if (trigger.isUpdate && trigger.isBefore) {
    //     System.debug('before update durumunda calisti..');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new map = ' + trigger.newMap);
    //     System.debug('trigger old map = ' + trigger.oldMap);
    //     System.debug('=============================================');
    // }
    // if (trigger.isUpdate && trigger.isAfter) {
    //     System.debug('after update durumunda calisti..');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new map = ' + trigger.newMap);
    //     System.debug('trigger old map = ' + trigger.oldMap);
    //     // her recordun eski isim ve yeni ismini yan yana yazdiralim..
    //     for (Opportunity op : trigger.new) {
    //         System.debug('yeni isim = '+ op.Name);
    //         System.debug('eski isim = ' + trigger.oldMap.get(op.id).Name);
    //         System.debug('yeni stage name = '+ op.StageName);
    //         System.debug('eski stage name = ' + trigger.oldMap.get(op.id).StageName);
    //     }

    //     System.debug('=============================================');
    // }

}