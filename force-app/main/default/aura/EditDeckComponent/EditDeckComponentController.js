({
    doInit: function(component, event, helper) {
		component.set('v.field', [
            {label: 'Card Title', fieldName: 'real_name__c', type: 'text'},
            {label: 'Remove Card', type: 'button', initialWidth: 135, typeAttributes: 
            {label: 'Remove', name: 'Card_remove', 
            				//onclick: '{!c.handleRemoval}', 
            				title: 'Click to remove this card from the deck'}},,
        ]);
    },	
})