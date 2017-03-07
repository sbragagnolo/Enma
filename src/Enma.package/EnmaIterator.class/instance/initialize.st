initialization
initialize
	super initialize.
	elements := OrderedCollection new.
	timecondition := EnmaEmptyTimeCondition new .
	limit := 30. 