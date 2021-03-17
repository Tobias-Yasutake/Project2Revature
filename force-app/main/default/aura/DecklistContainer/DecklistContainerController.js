({
    doInit: function(component, event, helper) {
        let action = component.get("c.GetDecks");
        
        action.setCallback(this, function(response) {
            component.set("v.Decks", response.getReturnValue());
        });
        
        $A.enqueueAction(action);
    },
    
    handleEditDeck: function(component, event, helper) {
        console.log('event caught')
        console.log(event.getParam('cardlist'))
        component.set('v.Deck', event.getParam('cardlist'))
    }
    
})