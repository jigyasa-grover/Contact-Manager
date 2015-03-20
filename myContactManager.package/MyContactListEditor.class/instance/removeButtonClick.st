as yet unclassified
removeButtonClick
	
	[MyContact database removeAt: selectedContactIndex]
		on: Error 
		do: [UITheme builder alert: 'Cannot remove selected contact.'].
		
	self
  		contactSelectedIndex: (self contactSelectedIndex min: MyContact database size);
  		changed: #contacts  