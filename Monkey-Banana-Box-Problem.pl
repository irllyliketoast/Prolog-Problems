% move(State1, Action, State2)
% The monkey can perform different actions to get to the banana

% Grasp banana: monkey must be in the middle, on the box
move(state(middle, onbox, middle, hasnot),
     grasp_banana,
     state(middle, onbox, middle, has)).

% Climb onto box: monkey and box must be at the same position, monkey on floor
move(state(P, onfloor, P, H),
     climb_box,
     state(P, onbox, P, H)).

% Push box: monkey and box must be at same location, monkey on floor
move(state(P1, onfloor, P1, H),
     push_box(P1, P2),
     state(P2, onfloor, P2, H)).

% Walk to a new location: monkey on floor, box may be elsewhere
move(state(P1, onfloor, B, H),
     walk(P1, P2),
     state(P2, onfloor, B, H)).

% Base case: monkey has the banana
canget(state(_, _, _, has)).

% Recursive case: find a move leading to success
canget(State1) :-
    move(State1, _, State2),
    canget(State2).

% Example Query:
% ?- canget(state(atdoor, onfloor, atwindow, hasnot)).
