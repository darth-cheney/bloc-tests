as yet unclassified
drawDarkSlat
	| tmp2 |
	tmp2 := Morph new.
	tmp2
		color: Color gray lighter lighter;
		height: 1;
		vResizing: #rigid.
	^ tmp2 hResizing: #spaceFill