as yet unclassified
editButtonClick
	MyContactEditor new
		contact: (MyContact database at: selectedContactIndex);
		openModal.
		
	self changed: #contacts.