@AuraEnabled
public with sharing class MyContactListController {
    public MyContactListController() {

    }

    public static List<Contact> getContacts(Id recordId){
        return [select id, firstName, LastName, Email, Phone from Contact where AccountId =: recordId];
    }
}
