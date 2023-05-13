trigger AccountTrigger2 on Account (before delete, after delete) {
    //! 10.05.2023

    if (trigger.isBefore) {
        System.debug('before delete account trigger'+ trigger.new);

    }
    if (trigger.isAfter) {
        System.debug('after delete account trigger'+ trigger.new);

    } 

}