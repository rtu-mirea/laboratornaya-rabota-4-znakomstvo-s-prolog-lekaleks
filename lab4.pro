domains
s=symbol
predicates
%Task 1
nondeterm parent(s,s)
female(s)
male(s)
mother(s,s)
father(s,s)
nondeterm ancestor(s,s)
nondeterm child(s,s)
%Task 2
nondeterm likes(symbol,symbol)
%Task 3
nondeterm can_buy(symbol, symbol) 
person(symbol) 
nondeterm car(symbol) 
likes(symbol, symbol)
for_sale(symbol)
%Task 4
cooker(symbol)
food(symbol,symbol)

clauses
%Task 1
parent(vera,liza). 
parent(vera,hulio).
parent(alex,liza).
parent(liza,john).
parent(liza,migel).
parent(john,anna).
female(vera). 
female(liza).
female(anna).
male(alex). 
male(hulio).
male(migel).
male(john).
%rules for task 1
child(Y,X):- parent(X,Y).
mother(X,Y):- parent(X,Y),female(X). 
father(X,Y):- parent(X,Y),male(X). 
ancestor(X,Z):- parent(X,Z). 
ancestor(X,Z):- parent(X,Y),ancestor(Y,Z).
brother(X,Y):- male(X), father(F,X), father(F,Y), mother(M,X), mother(M,Y), X<>Y.
sister(X,Y):- female(X), father(F,X), father(F,Y), mother(M,X), mother(M,Y), X<>Y.
grand_father(X,Y):- male(X), parent(P,Y), parent(X,P).
grand_mother(X,Y):- female(X), parent(P,Y), parent(X,P).

%task 2
likes(hulio, weapon). 
likes(alex, football).
likes(migel, history).
likes(john, walk).

%task 3
person(anton).
person(maks).
car(range_rover).
car(rolls_royce).
likes(anton, range_rover).
likes(maks, rolls_royce).
for_sale(ak).
for_sale(range_rover).
for_sale(rolls_royce).
%rule for task 3
can_buy(X, Y) :- person(X), car(Y),likes(X, Y), for_sale(Y).

%task 4
cooker(alexander).
cooker(tony).
cooker(anna).
food(alexander, chikens).
food(tony,ratatoulle).
food(anna,cheesecake).

goal


	%cooker(alex).
	%food(Who,chikens).
	%food(alex,what).
	food(alexander,What).