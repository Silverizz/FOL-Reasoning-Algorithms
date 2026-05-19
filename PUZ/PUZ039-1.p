%--------------------------------------------------------------------------
% File     : PUZ039-1 : TPTP v9.2.1. Bugfixed v2.6.0.
% Domain   : Puzzles
% Problem  : Quo vadis 2
% Version  : Especial.
% English  : bb is big block (square, size=4 tiles).
%            s1-s4 : 4 small square blocks, size=1 tile
%            v1-v4: 4 vertical blocks, size= 2 tiles
%            b1: horizontal block, size= 2 tiles
%            e1, e2 are the 2 blank tiles
%            It's a 5x4 playing field to move from the start state to
%            the goal state. This is an intermediate goal for testing.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.06 v9.1.0, 0.07 v9.0.0, 0.00 v6.2.0, 0.17 v6.1.0, 0.36 v6.0.0, 0.11 v5.5.0, 0.31 v5.4.0, 0.33 v5.3.0, 0.40 v5.2.0, 0.31 v5.0.0, 0.33 v4.1.0, 0.27 v4.0.1, 0.14 v3.4.0, 0.00 v3.2.0, 0.67 v3.1.0, 0.33 v2.7.0, 0.25 v2.6.0
% Syntax   : Number of clauses     :   43 (   2 unt;   0 nHn;  43 RR)
%            Number of literals    :   84 (   0 equ;  42 neg)
%            Maximal clause size   :    2 (   1 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 12-12 aty)
%            Number of functors    :   14 (  14 usr;   1 con; 0-2 aty)
%            Number of variables   :  491 (  11 sgn)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
% Bugfixes : v2.6.0 - Fixed clause goal_state.
%--------------------------------------------------------------------------
%----Include axioms for quo vadis
include('Axioms/PUZ004-0.ax').
%--------------------------------------------------------------------------
cnf(initial_state,hypothesis,
    state(bb(o,s(o)),v1(o,o),v2(o,s(s(s(o)))),v3(s(s(o)),o),v4(s(s(o)),s(s(s(o)))),h(s(s(o)),s(o)),s1(s(s(s(o))),s(o)),s2(s(s(s(o))),s(s(o))),s3(s(s(s(s(o)))),s(o)),s4(s(s(s(s(o)))),s(s(o))),e1(s(s(s(s(o)))),o),e2(s(s(s(s(o)))),s(s(s(o))))) ).

cnf(goal_state,negated_conjecture,
    ~ state(B,V1,V2,V3,v4(s(s(o)),s(s(o))),H,S1,S2,S3,S4,E1,E2) ).

%--------------------------------------------------------------------------
