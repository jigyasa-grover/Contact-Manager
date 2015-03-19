as yet unclassified
contacts
	^ Contact database collect: [:aContact| 
		', ' join: {aContact lastName.  aContact firstName}
	].