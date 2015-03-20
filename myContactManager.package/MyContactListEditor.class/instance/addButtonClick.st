as yet unclassified
addButtonClick
	|newContact|
	newContact := MyContact new.
	
	MyContactEditor new
		contact: newContact;
		onOK: [	MyContact database add: newContact.  
				selectedContactIndex := MyContact database size.
				self 
					changed: #contacts;
					changed: #hasSelectedContact];
		openModal.
		