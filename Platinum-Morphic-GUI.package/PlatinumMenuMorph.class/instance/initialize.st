initialization
initialize
	super initialize.
	areas := OrderedCollection new.
	areas add: PlatinumMenuAreaMorph new.
	self
		borderStyle: PlatinumShadowedBorderStyle new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		color: self backgroundColor;
		addAllMorphs: areas.