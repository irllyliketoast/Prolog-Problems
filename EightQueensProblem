% Adapted from Bratko's Prolog book.
% To use: eightQueens(Solution).

% A solution is valid if all queens are placed without attacking each other.
solution([]).
solution([Col/Row | Others]) :-
    solution(Others),
    member(Row, [1,2,3,4,5,6,7,8]),
    noattack(Col/Row, Others).

% noattack(Queen, OtherQueens) ensures Queen doesn't attack any in OtherQueens.
noattack(_, []).
noattack(Col/Row, [Col1/Row1 | Others]) :-
    Row =\= Row1,                              % not in the same row
    abs(Row1 - Row) =\= abs(Col1 - Col),       % not on same diagonal
    noattack(Col/Row, Others).

% Main predicate to call
eightQueens(X) :-
    X = [1/_, 2/_, 3/_, 4/_, 5/_, 6/_, 7/_, 8/_],
    solution(X).
