as yet unclassified
editButtonClick
	ContactEditor new
		contact: (Contact database at: selectedContactIndex);
		openModal.
		
	self changed: #contacts.