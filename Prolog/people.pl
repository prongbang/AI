%---- FACT ----
% A ����˹�� B
people(ji,ta).
people(ta,am).
people(am,we).
people(we,on).
people(on,na).
people(na,su).
people(su,bell).
people(bell,zen).
people(zen,jame).
people(jame,jo).
people(jo,mo).
people(mo,m).
people(m,boy).
people(boy,noey).
people(noey,jack). 
people(jack,yam).
people(yam,koy).
people(koy,nok).
people(nok,kun).
people(kun,num).
people(num,nut).
people(nut,dew).
people(dew,dow).

%---- RULE ----
back:- write('Enter name to find people back.'), nl,
	read(A),
	people(A,B),
	write(B),
	write(' back .'),
	write(A),
	write('.'),nl.
 
% �������������ѧ�����������ŧ� ������ú�ҧ  ��� *false ��� �������������ѧ�ͧ���ش���� ����	
backAll:- write('Enter name to find people all back.'),nl,
	read(A),
	write('people all back '),
	write(A),
	findBack(A).

findBack(A):- people(A,B),nl,write(B),write('.'),findBack(B).

% �������������ѧ��
/* 
findBack(A):- people(A,B),output(A,B),findBack(B).
output(X,Y):-	nl,write(Y),
	 	write(' back .'),
	 	write(X),
	 	write('.').
*/ 

front:- write('Enter name to find people front.'), nl,
	read(A),
	people(B,A),
	write(B),
	write(' front.'),
	write(A),
	write('.'),nl.

% �����������˹�Ҥ����������ŧ� ������ú�ҧ  ��� *false ��� �����������˹�Ңͧ���á ����
frontAll:- write('Enter name to find people all front.'), nl,
	read(A),	
	write('people all back '),
	write(A),
	findFront(A).

findFront(A):- people(B,A),nl,write(B),write('.'),findFront(B).

% �ʴ����������˹����
/*
findFront(A):- people(B,A),output(A,B),findFront(B).
output(X,Y):-	nl,write(Y),
	 	write(' front .'),
	 	write(X),
	 	write('.').
*/

% �����������������ҧ��
between:-write('Enter name to find people between.'), nl,
	read(A),
	people(A,B),
	people(X,A),
	write(X),
	write(' between '),
	write(B),
	write('.'),nl.
	
% �Ҥ��������˹������ 3 ��
frontThree:- writeln('Enter name to find people 3 front.'),
	read(B),
	people(A,B),
	people(C,A),
	people(E,C),
	write('Found : '),
	write(E),nl.

% �Ҥҷ��������ѧ���� 3 ��
backThree:- writeln('Enter name to find people 3 back.'),
	read(A),
	people(A,B),
	people(B,C),
	people(C,D),
	%people(D,E),
	write('Found : '),
	write(D),nl.