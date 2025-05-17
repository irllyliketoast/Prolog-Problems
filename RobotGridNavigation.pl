% move(CurrentPosition, MoveType, NewPosition).
% Right move (X increases by 1, within 8x8 grid)
move([X, Y], right, [X1, Y]) :-
    X < 8,
    X1 is X + 1.

% Up move (Y increases by 1, within 8x8 grid)
move([X, Y], up, [X, Y1]) :-
    Y < 8,
    Y1 is Y + 1.

% path(CurrentPosition, PathToGoal)
% Reaches [8,8] using recursive pathfinding, collecting move directions.
path([8,8], []).  % Goal reached
path(Current, [Move | Moves]) :-
    move(Current, Move, Next),
    path(Next, Moves).
