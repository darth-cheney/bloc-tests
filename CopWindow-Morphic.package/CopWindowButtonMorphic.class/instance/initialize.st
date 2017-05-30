initialization
initialize
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp9 tmp11 tmp13 tmp15 tmp17 tmp19 tmp21 tmp23 |
	super initialize.
	tmp9 := self.
	tmp9
		width: 13;
		height: 13;
		color: Color transparent.
	tmp11 := Morph new.
	tmp11
		extent: 12 @ 12;
		position: 1 @ 1.
	tmp6 := tmp11 color: Color white.
	tmp13 := Morph new.
	tmp13
		extent: 12 @ 12;
		position: 0 @ 0.
	tmp5 := tmp13 color: (Color fromRgbTriplet: #(136 136 136)).
	tmp15 := BorderedMorph new.
	tmp15
		extent: 11 @ 11;
		position: 1 @ 1;
		fillStyle: self drawGradient;
		borderColor: Color black.
	inner := tmp15 borderWidth: 1.
	tmp17 := Morph new.
	tmp17
		extent: 9 @ 1;
		position: 2 @ 9.
	tmp2 := tmp17 color: (Color fromRgbTriplet: #(136 136 136)).
	inner addMorph: tmp2.
	tmp19 := Morph new.
	tmp19
		extent: 1 @ 9;
		position: 9 @ 2.
	tmp1 := tmp19 color: (Color fromRgbTriplet: #(136 136 136)).
	inner addMorph: tmp1.
	tmp21 := Morph new.
	tmp21
		extent: 9 @ 1;
		position: 2 @ 0.
	tmp4 := tmp21 color: (Color fromRgbTriplet: #(204 204 204)).
	inner addMorph: tmp4.
	tmp23 := Morph new.
	tmp23
		extent: 1 @ 9;
		position: 0 @ 2.
	tmp3 := tmp23 color: (Color fromRgbTriplet: #(204 204 204)).
	inner addMorph: tmp3.
	self
		addMorph: tmp6;
		addMorph: tmp5;
		addMorph: inner