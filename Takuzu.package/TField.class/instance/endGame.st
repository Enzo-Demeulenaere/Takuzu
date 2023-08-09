as yet unclassified
endGame

	OSPlatform current isMacOSX
		ifTrue: [ UNNotificationCenter uniqueInstance showNotificationTitle: 'Victory' body: 'You have won!!!' ]
		ifFalse: [ self openEndGameWindowInBloc ]