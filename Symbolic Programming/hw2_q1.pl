s --> list(0).

list(Count) --> [0], list(succ(Count)).
list(Count) --> [1], list(Count).
list(Count) --> [2], r(Count).

r(0) --> [].
r(Count) --> [0], r(Count).
r(succ(succ(Count))) --> [1], r(Count).