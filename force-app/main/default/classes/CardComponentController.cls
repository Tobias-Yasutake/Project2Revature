public with sharing class CardComponentController {
/*    @AuraEnabled
    public static String Cardimage(String asdf) {
        System.debug(asdf);
        return 'https://arkhamdb.com/bundles/cards/01001.png';
    }

CardComponentController.Cardimage('Lucky!');

    @AuraEnabled
    public static String Cardimage() {
        return 'https://arkhamdb.com/bundles/cards/01001.png';
    }
 */
    @AuraEnabled
    public static String Cardimage(String searching) {
        List<AHCard> allcard = new List<AHCard>();
        allcard = HTTPTest.HTTPcallout3();
        for (AHCard cardSearch : allcard) {
            if (cardSearch.name == searching) {
                System.debug('https://arkhamdb.com' + cardSearch.imagesrc);
                return ('https://arkhamdb.com' + cardSearch.imagesrc);
                
            }
        }
        
        return null;
    }
}
