%Homework 1   author: Divine Mbunga
numeral(0).
numeral(s(X)) :- numeral(X).
numeral(X+Y) :- numeral(X), numeral(Y).
numeral(p(X)) :- numeral(X).
numeral(-X) :- numeral(X).

%Exercise 6
add2(X-W, Y, Z) :- subtract(X, W, Q), add2(Q, Y, Z).
add2(X, Y-W, Z) :- subtract(Y, W, Q), add2(X, Q, Z).

%Exercise 5
subtract(X, Y, Z) :- minus(Y, W), add2(X, W, Z).

%Exercise 4
add2(-X, Y, Z) :- minus(X, W), add2(W, Y, Z).
add2(X, -Y, Z) :- minus(Y, W), add2(X, W, Z).
add2(s(X), p(Y), Z) :- add2(X, Y, Z).
add2(p(X), s(Y), Z) :- add(X, Y, Z).
minus(0, 0).
minus(-X, Y) :- minus(Y, X).
minus(X+Y, Z) :- add2(X, Y, W), minus(W, Z).
minus(X-Y, Z) :- subtract(X, Y, W), minus(W, Z).

%Exercise 3
minus(s(p(X)), Y) :- minus(X, Y).
minus(p(s(X)), Y) :- minus(X, Y).
minus(s(X), p(Y)) :- minus(X, Y).
minus(p(X), s(Y)) :- minus(X, Y).

%Exercise 1
add2(X+W, s(Y+K), Z) :- add2(X, W, Q), add2(s(Y), K, s(P)),add2(Q, s(P), Z).
add2(s(X+K), Y+W, Z) :- add2(s(X), K, s(P)),add2(Y, W, Q),add2(s(P), Q, Z).
add2(X+W, Y+K, Z) :- add2(X, W, Q), add2(Y, K, P),add2(Q, P, Z).
add2(X+W, Y, Z) :- add2(X, W, Q), add2(Q, Y, Z).
add2(X, Y+W, Z) :- add2(Y, W, Q), add2(X, Q, Z).

%Exercise 2
add2(p(s(X)), Y, Z) :- add2(X, Y, Z).
add2(X, p(s(Y)), Z) :- add2(p(X), Y, Z).
add2(s(p(X)), Y, Z) :- add2(X, Y, Z).
add2(X, s(p(Y)), Z) :- add2(X, Y, Z).
add2(s(X), Y, s(Z)) :- add2(X, Y, Z).
add2(X, s(Y), s(Z)) :- add2(X, Y, Z).
add2(p(X), Y, p(Z)) :- add2(X, Y, Z).
add2(X, p(Y), p(Z)) :- add2(X, Y, Z).

%General
add2(0, X, X).
add2(X, 0, X).
add2(X, Y, Z) :- add(X, Y, Z).

add(0, X, X).
add(X, 0, X).
add(s(X), Y, s(Z)) :- add(X, Y, Z).
