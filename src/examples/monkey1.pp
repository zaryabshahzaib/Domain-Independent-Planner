
goTo(X, Y): onFloor, at(monkey, X), place(Y) -> onFloor, at(monkey, Y), place(Y).

climb(X): at(box, X), at(monkey, X), onFloor -> onBox(X), at(box, X), at(monkey, X).

pushBox(X, Y): at(box, X), at(monkey, X), onFloor, place(Y) -> at(monkey, Y), at(box, Y), onFloor, place(Y).

getKnife(X): at(knife, X), at(monkey, X) -> hasKnife, at(monkey, X).

grabBananas(X): hasKnife, at(bananas, X), onBox(X) -> hasBananas, hasKnife, at(bananas, X), onBox(X).

pickGlass(X): at(glass, X), at(monkey, X) -> hasGlass, at(monkey, X).

getWater(X): hasGlass, at(waterfountain, X), at(monkey, X), onBox(X) -> hasWater, hasGlass, at(waterfountain, X), at(monkey, X), onBox(X).

#init: { at(monkey, p1),
         onFloor,
         at(box, p2),
         at(bananas, p3),
	 at(knife, p4),
         place(p1),
         place(p2),
         place(p3),
         place(p4)
       }.

#goal: { hasBananas }.
