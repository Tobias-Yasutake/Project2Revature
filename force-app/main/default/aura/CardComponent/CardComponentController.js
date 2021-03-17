({
	handleClick : function(component, event, helper) {
		let search = component.get("v.search");
        let action = component.get("c.Cardimage");
        action.setParams({searching : search});
        $A.enqueueAction(action);
        action.setCallback(this, function(response) {
            component.set("v.image", response.getReturnValue());
        });
	}   
})