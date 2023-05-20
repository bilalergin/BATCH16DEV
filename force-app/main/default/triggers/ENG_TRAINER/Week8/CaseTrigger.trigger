trigger CaseTrigger on Case (before insert) {
    system.debug('before insert case trigger');
    //number of recrods?
    //static variable value stays throughtout the transaction.
        //for first execution. CaseTriggerHandler.countRecord==> 200
        //for second execution. CaseTriggerHandler.countRecord==> 205

    CaseTriggerHandler.countRecords += Trigger.size;
    system.debug('number of records processed: ' + CaseTriggerHandler.countRecords);//trigger.size, trigger.new gibi bir context variable dır. trigger.new.size() ise bir metottur

    CaseTriggerHandler.countTrigger++;
    System.debug('Total number trigger executed : ' + CaseTriggerHandler.countTrigger);

}