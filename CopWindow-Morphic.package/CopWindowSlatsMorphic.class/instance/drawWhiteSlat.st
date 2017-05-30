as yet unclassified
drawWhiteSlat
	| tmp2 |
	tmp2 := Morph new.
	tmp2
		color: Color white;
		height: 1;
		vResizing: #rigid.
	^ tmp2 hResizing: #spaceFill