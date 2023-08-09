as yet unclassified
endGame

	(OSPlatform current isMacOSX and: [UNNotificationCenter isAvailable])
		ifTrue: [ UNNotificationCenter uniqueInstance showNotificationTitle: 'Victory' body: 'You have won!!!' ]
		ifFalse: [ self openEndGameWindowInBloc ]