({
    doInit: function(component, event, helper) {
		component.set('v.field', [
            {label: 'Deck Name', fieldName: 'Name', type: 'text' },
            {label: 'Card Total', fieldName: 'Card_Total__c', type: 'Integer'}, 
        ]);
            
        component.set('v.field2', [
            {label: 'Card Code', fieldName: 'code__c', type: 'text'},
            {label: 'Card Name', fieldName: 'real_name__c', type: 'text'}, 
        ]);
            
        let action = component.get("c.GetDecks");
        
        action.setCallback(this, function(response) {
            component.set("v.data", response.getReturnValue());
        });
        
        $A.enqueueAction(action);        
    },
            
            
    handleEditDeck: function(component, event, helper) {
        let rows = component.find("dataTable").getSelectedRows();
        let row = rows[0].Name;
        let action = component.get("c.GetDeck")
        action.setParams({ "input": row })
        console.log('handleEditDeck functioned')
        action.setCallback(this, function(response) {
            let cards = response.getReturnValue()
            component.set('v.data2', cards)
            
            /*let updateEvent = component.getEvent("EditDeckEvent");
            console.log(cards)
            updateEvent.setParams({ "cardlist": cards })
            console.log('Params set')
            updateEvent.fire();*/
        })
                
        $A.enqueueAction(action);
    },
    
    Deletec: function(component, event, helper) {
        let rows = component.find("dataTable2").getSelectedRows();
        let row = rows[0].Name;
        let refresh = rows[0].Deck__c;
                      console.log(refresh)
        
        let action = component.get("c.DeleteCard")
        action.setParams({ "input": row })
        action.setCallback(this, function(response) {
            console.log(response.getState())
            //c.handleEditDeck does this work? better to just copy paste
            //$A.get('e.force:refreshView').fire()
			//refreshing the page would be nice, but there isn't time for it
        
            let rows2 = component.find("dataTable").getSelectedRows();
            let row2 = rows2[0].Name;
            let action = component.get("c.GetDeck")
            nestedAction.setParams({ "input": row2 })
            nestedAction.setCallback(this, function(nestedResponse) {
            let cards = nestedResponse.getReturnValue()
            component.set('v.data2', cards)
            })
                    
            $A.enqueueAction(nestedAction);
        
        })
        $A.enqueueAction(action);
        
	},
    
    AddCardEvent: function (component, event, helper) {
        console.log('this worked!')
        let caughtevent = $A.get("e.c:CardtoAdd")
        console.log(caughtevent)
        
    }
    
})