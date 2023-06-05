tests
testBoxUnknownClick
	|box|
	box := TBoxUnknown new.
	self assert: box value isNil.
	box click.
	self assert: box value equals: 0.
	box click.
	self assert: box value equals: 1.
	box click.
	self assert: box value isNil