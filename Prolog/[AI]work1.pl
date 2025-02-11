%[AI] Work 1.pl
%
%------- Fact ---------
%
parent(jame,lom).       %father
parent(jame,ji).
parent(jame,jo).

parent(mint,lom).       %mother
parent(mint,ji).
parent(mint,jo).

parent(ji,m).           %ji my father m

olderBrother(lom,ji).
olderBrother(ji,jo).

male(jame).
male(lom).
male(ji).
male(jo).
male(m).
female(mint).

%------------------------
%
parent(nun,num).        %father
parent(nun,pang).
parent(nun,q).
parent(king,num).       %mother
parent(king,pang).
parent(king,q).

parent(pang,m).         %pang my mother m

olderSister(num,pang).
olderSister(pang,q).

male(nun).
male(q).
female(king).
female(num).
female(pang).


%--------- Rule ----------
%grandfather -> poo
grandfatherpoo(X,Y):- male(X),parent(X,Z),male(Z),parent(Z,Y).

%grandfather -> ta
grandfatherta(X,Y):- male(X),parent(X,Z),female(Z),parent(Z,Y).

%grandmother -> ya
grandmotherya(X,Y):- female(X),parent(X,Z),male(Z),parent(Z,Y).

%grandmother -> yay
grandmotheryay(X,Y):- female(X),parent(X,Z),female(Z),parent(Z,Y).

%uncle -> long
uncle(X,Y):- male(X),olderBrother(X,Z),male(Z),parent(Z,Y).

%aunt -> pa
aunt(X,Y):- female(X),olderSister(X,Z),female(Z),parent(Z,Y).

%na
na(X,Y):- male(X),olderSister(Z,X),female(Z),parent(Z,Y).

%ar
ar(X,Y):- male(X),olderBrother(Z,X),male(X),parent(Z,Y).

