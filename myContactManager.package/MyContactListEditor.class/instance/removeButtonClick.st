as yet unclassified
removeButtonClick
	
	[Contact database removeAt: selectedContactIndex]
		on: Error 
		do: [UITheme builder alert: 'Cannot remove selected contact.'].
		
	self
  		contactSelectedIndex: (self contactSelectedIndex min: Contact database size);
  		changed: #contacts  