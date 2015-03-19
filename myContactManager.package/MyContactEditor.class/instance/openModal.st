as yet unclassified
openModal
	|builder dialog content firstName|
 
	builder := UITheme builder.
	
 	content := (builder newLabelGroup: {
  			'First name' -> (firstName := (builder
   											newTextEntryFor: contact 
											getText: #firstName 
											setText: #firstName: 
											help: 'Enter the first name of the contact')
   										acceptOnCR: false;
   										minWidth: 200).
  			'Last name' -> ((builder
   							newTextEntryFor: contact 
							getText: #lastName 
							setText: #lastName: 
							help: 'Enter the last name of the contact')
   						acceptOnCR: false;
   						minWidth: 200) 
	}).
 
	dialog := builder newPluggableDialogWindow:'Edit contact' for: content.
	dialog rememberKeyboardFocus: firstName.
	builder openModal: dialog.
 
	dialog cancelled ifFalse: [self doOnOK].