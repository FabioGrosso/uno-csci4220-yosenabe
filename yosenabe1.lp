%% Your code here
1 { target(X,Y,XX,YY) : area(XX,YY,A) } 1 :- number(X,Y,_).

:- target(X,Y,XX,YY), X != XX, Y !=YY. 

path(X,Y,XX,YY,X1,Y) :- target(X,Y,XX,YY), Y = YY, X1 = X..XX.

path(X,Y,XX,YY,X,Y1) :- target(X,Y,XX,YY), X = XX, Y1 = Y..YY.

:- path(X,Y,XX,YY,X1,Y1), not cell(X1,Y1).
#show target/4.
