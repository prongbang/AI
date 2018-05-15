%---- FACT ----
% A อยุ่หน้า B
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
 
% หาว่าใครอยุ่หลังคนที่ใส่ชื่อลงไป ว่ามีใครบ้าง  และ *false คือ ไม่มีใครอยู่หลังของคนสุดท้าย แล้ว	
backAll:- write('Enter name to find people all back.'),nl,
	read(A),
	write('people all back '),
	write(A),
	findBack(A).

findBack(A):- people(A,B),nl,write(B),write('.'),findBack(B).

% หาว่าใครอยุ่หลังใคร
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

% หาว่าใครอยุ่หน้าคนที่ใส่ชื่อลงไป ว่ามีใครบ้าง  และ *false คือ ไม่มีใครอยู่หน้าของคนแรก แล้ว
frontAll:- write('Enter name to find people all front.'), nl,
	read(A),	
	write('people all back '),
	write(A),
	findFront(A).

findFront(A):- people(B,A),nl,write(B),write('.'),findFront(B).

% แสดงว่าใครอยุ่หน้าใคร
/*
findFront(A):- people(B,A),output(A,B),findFront(B).
output(X,Y):-	nl,write(Y),
	 	write(' front .'),
	 	write(X),
	 	write('.').
*/

% คนที่ค้นหาอยู่ระหว่างใคร
between:-write('Enter name to find people between.'), nl,
	read(A),
	people(A,B),
	people(X,A),
	write(X),
	write(' between '),
	write(B),
	write('.'),nl.
	
% หาคนที่อยู่หน้าเราไป 3 คน
frontThree:- writeln('Enter name to find people 3 front.'),
	read(B),
	people(A,B),
	people(C,A),
	people(E,C),
	write('Found : '),
	write(E),nl.

% หาคาที่อยู่หลังเราไป 3 คน
backThree:- writeln('Enter name to find people 3 back.'),
	read(A),
	people(A,B),
	people(B,C),
	people(C,D),
	%people(D,E),
	write('Found : '),
	write(D),nl.