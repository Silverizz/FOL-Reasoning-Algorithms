%--------------------------------------------------------------------------
% File     : PUZ041-1 : TPTP v9.2.1. Bugfixed v2.6.0.
% Domain   : Puzzles
% Problem  : Quo vadis 4
% Version  : Especial.
% English  : bb is big block (square, size=4 tiles).
%            s1-s4 : 4 small square blocks, size=1 tile
%            v1-v4: 4 vertical blocks, size= 2 tiles
%            b1: horizontal block, size= 2 tiles
%            e1, e2 are the 2 blank tiles
%            It's a 5x4 playing field to move from the start state to
%            the goal state. This is the true goal from the puzzle.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Unknown
% Rating   : 1.00 v2.6.0
% Syntax   : Number of clauses     :   43 (   2 unt;   0 nHn;  43 RR)
%            Number of literals    :   84 (   0 equ;  42 neg)
%            Maximal clause size   :    2 (   1 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 12-12 aty)
%            Number of functors    :   14 (  14 usr;   1 con; 0-2 aty)
%            Number of variables   :  491 (  11 sgn)
% SPC      : CNF_UNK_RFO_NEQ_HRN

% Comments :
% Bugfixes : v2.6.0 - Fixed clause goal_state.
%--------------------------------------------------------------------------
%----Include axioms for quo vadis
include('Axioms/PUZ004-0.ax').
%--------------------------------------------------------------------------
cnf(initial_state,hypothesis,
    state(bb(o,s(o)),v1(o,o),v2(o,s(s(s(o)))),v3(s(s(o)),o),v4(s(s(o)),s(s(s(o)))),h(s(s(o)),s(o)),s1(s(s(s(o))),s(o)),s2(s(s(s(o))),s(s(o))),s3(s(s(s(s(o)))),s(o)),s4(s(s(s(s(o)))),s(s(o))),e1(s(s(s(s(o)))),o),e2(s(s(s(s(o)))),s(s(s(o))))) ).

cnf(goal_state,negated_conjecture,
    ~ state(bb(s(s(s(o))),s(o)),V1,V2,V3,V4,H,S1,S2,S3,S4,E1,E2) ).

%--------------------------------------------------------------------------
