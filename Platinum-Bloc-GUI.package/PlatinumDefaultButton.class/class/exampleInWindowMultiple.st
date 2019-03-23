as yet unclassified
exampleInWindowMultiple
	| space win winBar offset button buttonDefault |
	space := BlSpace new extent: 500@400.
	win := PlatinumWindowFrame new.
	winBar := PlatinumWindowBar new.
	winBar addEventHandler: (BlEventHandler
		on: BlDragStartEvent
		do: [ :anEvent |
			| selfGlobalPosition newGlobalPosition |
			anEvent consumed: true.
			
			selfGlobalPosition := win positionInSpace.
			newGlobalPosition := win space root globalPointToLocal: selfGlobalPosition.
			newGlobalPosition := newGlobalPosition.
			
			win invalidate.
			win relocate: newGlobalPosition.
			win invalidate.
			offset := (anEvent position - newGlobalPosition).
		]).
	winBar addEventHandler: (BlEventHandler
		on: BlDragEvent
		do: [ :anEvent |
			|aPosition|
			anEvent consumed: true.
			aPosition := anEvent position - offset.
			win relocate: aPosition ]).
	win
		width: 250;
		height: 200;
		addChildFirst: winBar;
		relocate: 125@100.
	win content layout: (BlGridLayout new 
		cellSpacing: 10;
		columnCount: 2;
		rowCount: 1;
		alignBounds;
		vertical).
	win content padding: (BlInsets top: 50).
	button := PlatinumButton new
		width: 100;
		height: 24;
		labelString: 'Cancel';
		constraintsDo: [ :c |
			c grid vertical alignCenter ].
	buttonDefault := self new
		width: 100;
		height: 30;
		labelString: 'Confirm';
		constraintsDo: [ :c |
			c grid vertical alignCenter ].
		
	win content addChild: button.
	win content addChild: buttonDefault.
	space root addChild: win.
	space show.