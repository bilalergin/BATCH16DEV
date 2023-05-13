public with sharing class SOQL_Assignment {
   public static void soql_WhereClause() {
    List<Contact> lstContact = [select id, name, phone from contact where name like 'a%'];
    Integer lstSize = lstContact.size();
    System.debug('Contact name start with A ' + lstContact );
    System.debug(' List size ' + lstSize);
   }
   public static void soql_FromMethod() {
    List<Contact> lstContact = [select lastname, phone from contact];
    for (contact eachContact : lstContact) {
        //System.debug('Each contact ' + eachContact);
        System.debug('eachContacts are with only lastname: '+ eachContact.lastname);
        System.debug('eachContact are with only phone: ' + eachContact.phone);
                
    }
    Integer sizeList= lstContact.size();
    System.debug('Size of List: '+ sizeList);

   }
}