Here’s a `README.md` file that documents all three programs—**Eight Queens**, **Robot Grid Navigation**, and the **Monkey-Banana Problem**—in one clear, organized, and well-commented format. It includes usage instructions, examples, and descriptions of each logic system.

---

# Prolog AI Problems: Eight Queens, Robot Grid, and Monkey-Banana

This repository contains three Prolog logic-based AI problems:

1. 🂽 **Eight Queens Problem**  
2. 🤖 **Robot Grid Navigation Problem**  
3. 🍌 **Monkey-Banana-Box Problem**

Each problem demonstrates recursive problem-solving in Prolog, involving search, pathfinding, or constraint satisfaction logic.

---

## 🂽 Eight Queens Problem (`eight_queens.pl`)

### Description

Solves the classic Eight Queens puzzle by placing 8 queens on a chessboard such that no two queens attack each other (no same row, column, or diagonal).

### How to Run

Load the file and query:
```prolog
?- eightQueens(Solution).
````

### Example Output

```prolog
Solution = [1/4, 2/2, 3/7, 4/3, 5/6, 6/8, 7/5, 8/1]
```

### Core Predicates

* `eightQueens(X)` — Generates a solution.
* `solution(List)` — Recursively validates queen placements.
* `noattack(Queen, Others)` — Ensures no attacking conditions.

---

## 🤖 Robot Grid Navigation (`robot_path.pl`)

### Description

Finds a path for a robot starting at any point in an 8x8 grid to the goal `[8,8]`, using only right or up moves.

### Constraints

* Robot starts at position `[X,Y]`
* Can only move:

  * one step **right**
  * one step **up**
* Must remain within an 8×8 grid

### How to Run

```prolog
?- path([3,2], Moves).
```

### Example Output

```prolog
Moves = [right, right, right, right, right, up, up, up, up, up, up]
```

### Core Predicates

* `move(Current, Direction, Next)` — Defines valid moves.
* `path(Current, Path)` — Recursively finds a list of moves from `Current` to `[8,8]`.

---

## 🍌 Monkey-Banana-Box Problem (`monkey_banana.pl`)

### Description

Simulates a planning problem: a monkey in a room must get a banana hanging from the ceiling. It must decide how to move, push a box, climb it, and grab the banana.

### Initial State Format

```prolog
state(MonkeyPos, MonkeyStatus, BoxPos, BananaStatus)
```

Where:

* `MonkeyPos` = `atdoor`, `middle`, `atwindow`
* `MonkeyStatus` = `onfloor` or `onbox`
* `BoxPos` = same domain as `MonkeyPos`
* `BananaStatus` = `has` or `hasnot`

### How to Run

```prolog
?- canget(state(atdoor, onfloor, atwindow, hasnot)).
```

### Example Output

```prolog
true.
```

### Core Predicates

* `move(State1, Action, State2)` — Defines possible state transitions.
* `canget(State)` — Recursively attempts to reach a state where the monkey has the banana.

---

## Requirements

* SWI-Prolog (or any other ISO-compatible Prolog interpreter)

---

## Notes

* All problems demonstrate core Prolog strengths: recursive search, symbolic computation, and logical inference.
* No built-in predicates were used unless necessary (as per assignment rules).

---

## Author

**Laura Estremera**
University of North Carolina Wilmington – CSC 434: Artificial Intelligence

```
