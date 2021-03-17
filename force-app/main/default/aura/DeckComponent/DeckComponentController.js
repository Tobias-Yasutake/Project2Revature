({
    doInit: function(component, event, helper) {
		component.set('v.field', [
            {label: 'Card Code', fieldName: 'code__c', type: 'text'},
            {label: 'Card Name', fieldName: 'real_name__c', type: 'text'},
            //{label: 'Deck Edit', type: 'button', initialWidth: 135, typeAttributes: 
            //{label: 'Edit Deck', name: 'view_details', onclick: '{!c.handleEdit}', title: 'Click to Edit this deck'}}, 
        ]);
    },
       Deletec: function(component, event, helper) {
        let rows = component.find("dataTable").getSelectedRows();
        let row = rows[0].Name;
        let refresh = rows[0].Deck__c;
                      console.log(refresh)
        
        let action = component.get("c.DeleteCard")
        action.setParams({ "input": row })
        action.setCallback(this, function(response) {
            console.log(response.getState())
            //$A.get('e.force:refreshView').fire()
			//refreshing the page would be nice, but there isn't time for it
        })
        $A.enqueueAction(action);
        
		}    
})