({
    doInit: function(component, event, helper) {
		component.set('v.field', [
            {label: 'Deck Name', fieldName: 'Name', type: 'text' },
            {label: 'Card Total', fieldName: 'Card_Total__c', type: 'Integer'}, 
        ]);
    },
        
    handleEditDeck: function(component, event, helper) {
        let rows = component.find("dataTable").getSelectedRows();
        let row = rows[0].Name;
        let action = component.get("c.GetDeck")
        action.setParams({ "input": row })
        console.log('handleEditDeck functioned')
        action.setCallback(this, function(response) {
            let cards = response.getReturnValue()
            let updateEvent = component.getEvent("EditDeckEvent");
            console.log(cards)
            updateEvent.setParams({ "cardlist": cards })
            console.log('Params set')
            updateEvent.fire();
        })
                
        $A.enqueueAction(action);
    },
    
    AddCard: function(component, event) {
        let card = event.getParam('selectedCard').Name
        let decka = component.get("v.datatable").selectedRows
        let deck = decka[0].Name
        console.log('catching event')
        console.log('card ' + card)
        console.log(decka)
        console.log('deck ' +deck)
        console.log('is it a success? What is going wrong?')
        let action = component.get("c.AddSingleCard")
        action.setParams({"card": card})
        action.setParams({"deck": deck})
        action.setCallback(this, function(response){
            console.log('success?')
        })
    }
})