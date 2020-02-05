s --> person(Col1, Nat1, Pet1), person(Col2, Nat2, Pet2), person(Col3 ,Nat3, Pet3),
{Col1 \== Col2, Col1 \== Col3, Col2 \== Col3,
 Nat1 \== Nat2, Nat1 \== Nat3, Nat2 \== Nat3,
 Pet1 \== Pet2, Pet1 \== Pet3, Pet2 \== Pet3}.

person(Col, Nat, Pet) --> col(Col), nat(Nat), pet(Pet).

col('red') --> [red].
col('green') --> [green].
col('blue') --> [blue].

nat('spanish') --> [spanish].
nat('english') --> [english].
nat('japanese') --> [japanese].

pet('snail') --> [snail].
pet('jaguar') --> [jaguar].
pet('zebra') --> [zebra].