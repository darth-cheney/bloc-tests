as yet unclassified
exampleBottomAndRight
	| space win vertScroller horizScroller bar button |
space := BlSpace new extent: 500@400.
win := PlatinumWindowFrame new
	width: 300;
	height: 300;
	relocate: 100@50.
bar := PlatinumWindowBar new.
win addChildFirst: bar.

win content
	layout: (BlFrameLayout new).

vertScroller := PlatinumVerticalScroller new
	constraintsDo: [ :c |
		c vertical matchParent.
		c frame horizontal alignRight.
		c frame vertical alignTop ];
	margin: (BlInsets top: -1 right: -1 bottom: 14 left: 0).

horizScroller := PlatinumHorizontalScroller new
	constraintsDo: [ :c |
		c horizontal matchParent.
		c frame vertical alignBottom.
		c frame horizontal alignLeft ];
	margin: (BlInsets top: 0 right: 14 bottom: -1 left: -1).

win content addChildren: { vertScroller. horizScroller }.

space root addChild: win.
space show.