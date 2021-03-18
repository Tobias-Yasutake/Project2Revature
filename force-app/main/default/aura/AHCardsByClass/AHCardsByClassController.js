({
    doInit: function(component, event, helper) {
		component.set('v.field', [

            {label: 'Card Name', fieldName: 'real_name__c', type: 'text'},
            {label: 'Card Code', fieldName: 'Name', type: 'text'},
            {label: 'Card Pack', fieldName: 'pack_name__c', type: 'text'}]
            )
    },
    
    handleClass: function(component, event, helper) {
		let btnClicked = event.getSource();         
        let btnMessage = btnClicked.get("v.label");
        console.log(btnMessage)
        let action = component.get("c.GetFactionList")
        action.setParams({ "input": btnMessage })
        action.setCallback(this, function(response) {
            console.log(response.getReturnValue())
			component.set("v.data", response.getReturnValue());
        })
                
        $A.enqueueAction(action);

	},
    
        AddCard: function(component, event, helper) {
		//I don't know how to check if 
		//'let rows = component.find("dataTable").getSelectedRows()' 
		//Is null
			console.log('test')
        let rows = component.find("dataTable").getSelectedRows();
        let card = rows[0].Name;
            console.log('test')
			console.log(rows)
            console.log(card)
            
        //for some reason certain cards throw exceptions, I have no idea why
            
            let updateEvent = component.getEvent("CardtoAdd");
            updateEvent.setParams({ "selectedCard": card })
            updateEvent.fire();
        

    }
    
    
})