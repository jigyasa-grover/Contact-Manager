as yet unclassified
contacts
	^ MyContact database collect: [:aContact| 
		', ' join: {aContact lastName.  aContact firstName}
	].