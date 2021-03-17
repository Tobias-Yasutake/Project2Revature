public with sharing class Deleter {
    public static void Del() {
        
    for (List<Card__c> manifest : [SELECT id FROM Card__c]) {
        Delete manifest;
    }

    }
}