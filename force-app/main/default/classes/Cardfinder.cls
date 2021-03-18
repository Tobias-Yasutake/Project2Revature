public with sharing class Cardfinder {
    public Cardfinder() {

    }
    @AuraEnabled
    public static String Cardimage(String searching) {
        List<AHCard> allcard = new List<AHCard>();
        allcard = HTTPTest.HTTPcallout3();
        for (AHCard cardSearch : allcard) {
            if (cardSearch.name == searching) {
                return ('https://arkhamdb.com' + cardSearch.imagesrc);
                
            }
        }
        
        return null;
    }
}