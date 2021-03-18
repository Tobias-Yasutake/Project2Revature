public with sharing class DeckGetter {
    public DeckGetter() {

    }

    @AuraEnabled
    public static List<Deck__C> GetDecks(){
        try {
            List<Deck__C> alldecks = new List<Deck__C>([SELECT name, Card_Total__C FROM Deck__C]);
            return alldecks;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static List<Copy__c> GetDeck(String input){
        try {
            List<Copy__c> deckmanifest = new List<Copy__c>([SELECT name, real_name__c, code__c FROM Copy__c WHERE deck__r.Name = :input]);
            return deckmanifest;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static List<Card__c> GetFactionList(String input){
        try {
            List<Card__c> cardmanifest = new List<Card__c>([SELECT real_name__c, name, 	pack_name__c FROM Card__c WHERE faction_name__c = :input]);
            return cardmanifest;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static void AddSingleCard(String card, String deck){
        try {
            Copy__c copy = new Copy__c();
            copy.Card__c = card;
            copy.Deck__c = deck;
            insert copy;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
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