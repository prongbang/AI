parent(oak,ton).
parent(oak,ruj).
parent(oak,noey).
parent(ja,ton).
parent(ja,ruj).
parent(ja,noey).
parent(new,naree).
parent(new,white).
parent(new,zine).
parent(yam,naree).
parent(yam,white).
parent(yam,zine).
parent(ruj,ple).
parent(ruj,phet).
parent(white,ple).
parent(white,phet).

older(ton,ruj).
older(ruj,noey).
older(naree,white).
older(white,zine).
older(ple,phet).

male(oak).
male(new).
male(ton).
male(ruj).
male(noey).
male(ple).
female(ja).
female(yam).
female(naree).
female(white).
female(zine).
female(phet).

poo(X,Y):- male(X),parent(X,Z),male(Z),parent(Z,Y).
ta(X,Y):- male(X),parent(X,Z),female(Z),parent(Z,Y).
ya(X,Y):- female(X),parent(X,Z),male(Z),parent(Z,Y).
yay(X,Y):- female(X),parent(X,Z),female(Z),parent(Z,Y).
uncle(X,Y):- male(X),older(X,Z),male(Z),parent(Z,Y).
aunt(X,Y):- female(X),older(X,Z),female(Z),parent(Z,Y).
na(X,Y):- female(X),older(Z,X),female(Z),parent(Z,Y).
ar(X,Y):- male(X),older(Z,X),male(X),parent(Z,Y).
niece(X,Y) :- parent(Y,Z) , parent(Z,X) , female(X).
nephew(X,Y) :-parent(Y,Z) , parent(Z,X) , male(X).



