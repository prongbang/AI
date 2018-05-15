%FACT
person(m,jo).
person(jo,ken).
person(ken,noey).
person(noey,white).
person(white,ton).
person(ton,ji).
person(ji,bell).
person(bell,zen).
person(zen,new).
person(new,one).
person(one,first).
person(first,kay).
person(kay,kui).
person(kui,mai).
person(mai,son).
person(son,jane).
person(jane,am).
person(am,mon).
person(mon,daw).
person(daw,da).
person(da,test).
person(test,mim).
person(mim,gon).
person(gon,lon).
person(lon,raw).
person(raw,get).

%RULE

front :- write('Enter name to find person front : '),
			read(Y),
			person(X,Y),
			write(X),
			write(' front '),
			write(Y).
back :- write('Enter name to find person back : '),
			read(X),
			person(X,Y),
			write(Y),
			write(' back '),
			write(X).

between :- write('Enter name to find person between : '),
				read(A),
				person(A,B),
				person(C,A), 
				write(A),
				write(' between '),
				write(C),
				write(' and '),
				write(B).

back3 :- write(' Enter name to find three back : '),
			read(A),
			person(A,B),
			person(B,C),
			person(C,D), 
			write(D),
			write(' back three '),
			write(A).

front3 :- write('Enter name to find three front : '),
			read(D),
			person(C,D),
			person(B,C),
			person(A,B),
			write(A),
			write(' front three '),
			write(D).

frontall :- write('Enter name to find front all : '),
			read(A),
			write(' person front all '),
			write(A),nl,
			findfront(A).

findfront(X) :- person(B,X),write(B),nl,findfront(B).

backall :- write('Enter name to find back all : '),
			read(A),
			write('person back all '),
			write(A),nl,
             findback(A).
findback(X) :- person(X,Y),write(Y),nl,findback(Y).

fac(N,F) :- N1 is N-1,
				fac(N1,F1),
				F is N * F1.