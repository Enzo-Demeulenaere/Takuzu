as yet unclassified
gridForTest
	^ self grid: ((CTNewArray2D width: 4 height: 4)
			at: 1 at: 1 put: (TBox set: 1);
			at: 1 at: 2 put: TBox unknown;
			at: 1 at: 3 put: TBox unknown;
			at: 1 at: 4 put: TBox unknown;
			at: 2 at: 1 put: TBox unknown;
			at: 2 at: 2 put: TBox unknown;
			at: 2 at: 3 put: (TBox set: 1);
			at: 2 at: 4 put: (TBox set: 0);
			at: 3 at: 1 put: TBox unknown;
			at: 3 at: 2 put: (TBox set: 1);
			at: 3 at: 3 put: (TBox set: 1);
			at: 3 at: 4 put: TBox unknown;
			at: 4 at: 1 put: TBox unknown;
			at: 4 at: 2 put: TBox unknown;
			at: 4 at: 3 put: TBox unknown;
			at: 4 at: 4 put: TBox unknown;
			yourself)