as yet unclassified
addButtonClick
	|newContact|
	newContact := Contact new.
	
	ContactEditor new
		contact: newContact;
		onOK: [	Contact database add: newContact.  
				selectedContactIndex := Contact database size.
				self 
					changed: #contacts;
					changed: #hasSelectedContact];
		openModal.
		