as yet unclassified
open
|builder content|
builder := UITheme builder.
content := builder newColumn: {   
	builder 
		newListFor: self   
		list: #contacts
		selected: #contactSelectedIndex
		changeSelected: #contactSelectedIndex:
		help: 'contacts'.
	builder newRow: {
		builder	newButtonFor: self 
								action: #addButtonClick 
								label: 'Add' 
								help: 'Create a new contact'.
		builder newButtonFor: self 
								action: #removeButtonClick 
								getEnabled: #hasSelectedContact 
								label: 'Remove' 
								help: 'Remove selected contact'.
		builder newButtonFor: self 
								action: #editButtonClick 
								getEnabled: #hasSelectedContact 
								label: 'Edit' 
								help: 'Edit selected contact'  }}.
								
(content openInWindowLabeled: 'Contacts') extent: 400@500.