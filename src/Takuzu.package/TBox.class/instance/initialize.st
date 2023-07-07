initialization
initialize 
	super initialize.
	valueDictionary := Dictionary new.
	valueDictionary
			  at: 0 put: 1;
			  at: 1 put: nil;
			  at: nil put: 0