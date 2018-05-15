%[AI] Work 1.pl

%------- Fact ---------

parent(jame,lom).       %father
parent(jame,ji).
parent(jame,jo).
parent(mint,lom).       %mother
parent(mint,ji).
parent(mint,jo).
parent(ji,m).
parent(ji,kaw).
parent(nun,num).        %father
parent(nun,pang).
parent(nun,q).
parent(king,num).       %mother
parent(king,pang).
parent(king,q).
parent(pang,m).
parent(pang,kaw).
olderBrother(lom,ji).
olderBrother(ji,jo).
olderSister(num,pang).
olderSister(pang,q).

male(jame).
male(lom).
male(ji).
male(jo).
male(m).
male(nun).
male(q).
female(king).
female(num).
female(pang).
female(mint).
female(kaw).

/*------------------- Rule -------------------*/

poo(X,Y):- male(X),parent(X,Z),male(Z),parent(Z,Y).
ta(X,Y):- male(X),parent(X,Z),female(Z),parent(Z,Y).
ya(X,Y):- female(X),parent(X,Z),male(Z),parent(Z,Y).
yay(X,Y):- female(X),parent(X,Z),female(Z),parent(Z,Y).
uncle(X,Y):- male(X),olderBrother(X,Z),male(Z),parent(Z,Y).
aunt(X,Y):- female(X),olderSister(X,Z),female(Z),parent(Z,Y).
na(X,Y):- male(X),olderSister(Z,X),female(Z),parent(Z,Y).
ar(X,Y):- male(X),olderBrother(Z,X),male(X),parent(Z,Y).

niecepooya(X,Y):- female(X),parent(Z,X),male(Z),parent(Y,Z).
niecetayay(X,Y):- female(X),parent(Z,X),female(Z),parent(Y,Z).
nieceuncle(X,Y):- female(X),parent(Z,X),male(Z),olderBrother(Y,Z),male(Y).
nieceaunt(X,Y):- female(X),parent(Z,X),female(Z),olderSister(Y,Z),female(Y).
niecena(X,Y):- female(X),parent(Z,X),female(Z),olderSister(Z,Y),male(Y).
niecear(X,Y):- female(X),parent(Z,X),male(Z),olderBrother(Z,Y),male(Y).
nephewpooya(X,Y):- male(X),parent(Z,X),male(Z),parent(Y,Z).
nephewtayay(X,Y):-  male(X),parent(Z,X),female(Z),parent(Y,Z).
nephewuncle(X,Y):-  male(X),parent(Z,X),male(Z),olderBrother(Y,Z),male(Y).
nephewaunt(X,Y):-  male(X),parent(Z,X),female(Z),olderSister(Y,Z),female(Y).
nephewna(X,Y):-  male(X),parent(Z,X),female(Z),olderSister(Z,Y),male(Y).
nephewar(X,Y):-  male(X),parent(Z,X),male(Z),olderBrother(Z,Y),male(Y).


