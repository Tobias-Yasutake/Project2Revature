public with sharing class CardDeleter {
    public CardDeleter() {

    }

    @AuraEnabled
    public static void DeleteCard(String input){
        try {
            Delete ([SELECT Id FROM Copy__c WHERE name = :input]);
            //Copy__c[] deckmanifest = new Copy__c[]{};
            //deckmanifest = ([SELECT name, real_name__c, code__c FROM Copy__c WHERE deck__r.Id = :asdf]);
            //return deckmanifest;
            } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}