public with sharing class HTTPTest {
    
    
    @AuraEnabled
    public static AHcard HTTPcallout1(){
        try {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://arkhamdb.com/api/public/card/01001.json');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            
            if(response.getStatusCode() == 200) {
                System.debug('success!');
                return AHCard.parse(response.getBody());
            } else {
                System.debug('did not get OK status code');
            }

        } catch (Exception e) {
            System.debug('it threw an exception' + e);
        }

        return null;
    }

    @AuraEnabled
    public static List<AHcard> HTTPcallout2(){
        try {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://arkhamdb.com/api/public/cards/core.json');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            
            if(response.getStatusCode() == 200) {
                System.debug('success!');
                return SomeAHCards.parse(response.getBody());
            } else {
                System.debug('did not get OK status code');
            }

        } catch (Exception e) {
            System.debug('it threw an exception' + e);
        }

        return null;
    }

    @AuraEnabled
    public static List<AHcard> HTTPcallout3(){
        try {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://arkhamdb.com/api/public/cards/?_format=json');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            
            if(response.getStatusCode() == 200) {
                System.debug('success!');
                return SomeAHCards.parse(response.getBody());
            } else {
                System.debug('did not get OK status code');
            }

        } catch (Exception e) {
            System.debug('it threw an exception' + e);
        }

        return null;
    }

    @AuraEnabled
    public static List<AHPack> HTTPcallout4(){
        try {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://arkhamdb.com/api/public/packs/?_format=json');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            
            if(response.getStatusCode() == 200) {
                System.debug('success!');
                return AHPack.parse(response.getBody());
            } else {
                System.debug('did not get OK status code');
            }

        } catch (Exception e) {
            System.debug('it threw an exception' + e);
        }

        return null;
    }


}