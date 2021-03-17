public with sharing class upserter {
    public static void upsertAll() {
        List<AHCard> allcards = HTTPTest.HTTPcallout3();
        List<Card__c> manifest = new List<Card__c>();
        Savepoint sp = Database.setSavepoint();


        //Map<String, Card__c> oldmanifest = new Map<String, Card__c>([SELECT z.Name, z.Id FROM Card__c z]); 
        //System.debug(oldmanifest.get('01001'));

        try {
            for (List<Card__c> all : [SELECT id FROM Card__c]) {
                Delete all;
            }
            for (AHCard card:allcards) {
                Card__c record = new Card__c();
                record.name = Card.code;
                record.cost__c = Card.cost;
                record.imagesrc__c = Card.imagesrc;
                record.pack_code__c = Card.pack_code;
                record.pack_name__c = Card.pack_name;
                record.real_name__c = Card.real_name;
                record.skill_intellect__c = Card.skill_intellect;
                record.skill_wild__c = Card.skill_wild;
                record.skill_willpower__c = Card.skill_willpower;
                record.skill_combat__c = Card.skill_combat;
                record.skill_agility__c = Card.skill_agility;
                record.text__c = Card.text;
                record.subname__c = Card.subname;
                record.traits__c = Card.traits;
                record.xp__c = Card.xp;
                record.backimagesrc__c = Card.backimagesrc;
                record.double_sided__c = Card.double_sided;
                record.faction_name__c = Card.faction_name;

                manifest.add(record);
            }
        } Catch (exception e) {
            System.debug('there was an exception, rolling back everything');
            Database.Rollback(sp);
        }


        System.debug('Ghetto Upserting all the cards');
        UPSERT manifest;

    }
}