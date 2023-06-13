tests
testBuildArrayFor

	| tool string res |
	tool := TFieldTool new.
	string := '0 1
	_ _'.

	res := tool buildArrayFor: string.

	self assert: res contents equals: #( '0' '1' '_' '_' )