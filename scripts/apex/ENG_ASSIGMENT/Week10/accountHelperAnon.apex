Set<Id> accountIds = new Set<Id>{
    '0038d00000bdmjXAAQ',
    '0038d00000bdmjNAAQ',
    '0038d00000bdehBAAQ'
};

AccountHelper.updateNumberOfContacts(accountIds);
System.debug(accountIds);