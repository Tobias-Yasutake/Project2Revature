({
    doInit: function(component, event, helper) {
		component.set('v.field', [

            {label: 'Card Name', fieldName: 'real_name__c', type: 'text'},
                    {label: 'Card Code', fieldName: 'name', type: 'text'}]
            )},
            
            
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
        let rows = component.find("dataTable").getSelectedRows();
        console.log(rows)
        let card = rows[0].Name;
        console.log(card)
        console.log('fireing event')
        let updateEvent = component.getEvent("CardtoAdd");
            updateEvent.setParams({ "selectedCard": card })
            updateEvent.fire();
    }
})