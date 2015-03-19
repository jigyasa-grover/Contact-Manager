as yet unclassified
printOn: aStream
	aStream
		nextPutAll: self className;
		nextPutAll: '(';
		nextPutAll: self firstName;
		nextPutAll: ' ';
		nextPutAll: self lastName;
		nextPutAll: ')'.