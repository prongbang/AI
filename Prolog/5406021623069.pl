
front(ton,noey).
front(noey,kill).
front(kill,first).
front(first,new).
front(new,bell).
front(bell,oak).
front(oak,big).
front(big,cui).
front(cui,zine).
front(zine,yam).
front(yam,naree).
front(naree,ple).
front(ple,not).
front(not,boy).
front(boy,jack). 
front(jack,jay).
front(jay,white).
front(white,black).
front(black,jo).
front(jo,ji).
front(ji,tee).
front(tee,naris).
front(naris,ohm).


%   Rule
back:- write('Enter name '),
	read(A),
	front(A,B),
	write(B).
 
allback:- write('Enter name '),
	read(A),
	write(A),
	searchBack(A).

searchBack(A):- front(A,B),nl,write(B),searchBack(B).

allfront:- write('Enter name '),
	read(A),	
	searchFront(A).
searchFront(A):- front(B,A),nl,write(B),searchFront(B).
front:- write('Enter name '),
	read(A),
	front(B,A),
	write(B).


back3:- writeln('Enter name '),
	read(A),
	front(A,B),
	front(B,C),
	front(C,D),
	write(D).

front3:- writeln('Enter name '),
	read(B),
	front(A,B),
	front(C,A),
	front(E,C),
	write(E).

between:-write('Enter name '),
	read(A),
	front(A,B),
	front(X,A),
	write(X),
	write(' between '),
	write(B).
	



