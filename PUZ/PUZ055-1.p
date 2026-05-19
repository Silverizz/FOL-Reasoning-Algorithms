%--------------------------------------------------------------------------
% File     : PUZ055-1 : TPTP v9.2.1. Released v2.7.0.
% Domain   : Puzzles
% Problem  : Show that Sam Loyd's fifteen-puzzle is not solvable
% Version  : [Cla03] axioms : Especial.
% English  : The classic fifteen-puzzle with the 14 and 15 interchanged.
%            Show that it is not solvable by showing satisfiability of
%            the following problem.

% Refs     : [Cla03] Claessen (2003), Email to G. Sutcliffe
% Source   : [Cla03]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v2.7.0
% Syntax   : Number of clauses     :    4 (   3 unt;   1 nHn;   2 RR)
%            Number of literals    :    5 (   3 equ;   1 neg)
%            Maximal clause size   :    2 (   1 avg)
%            Maximal term depth    :   21 (   5 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   19 (  19 usr;  18 con; 0-2 aty)
%            Number of variables   :    8 (   0 sgn)
% SPC      : CNF_SAT_RFO_EQU_NUE

% Comments : Should be satisfiable.
%--------------------------------------------------------------------------
cnf(initial_state,axiom,
    state(l(n1,l(n2,l(n3,l(n4,l(end,l(n5,l(n6,l(n7,l(n8,l(end,l(n9,l(n10,l(n11,l(n12,l(end,l(n13,l(n15,l(n14,l(x,l(end,nil))))))))))))))))))))) ).

cnf(final_state,negated_conjecture,
    ~ state(l(n1,l(n2,l(n3,l(n4,l(end,l(n5,l(n6,l(n7,l(n8,l(end,l(n9,l(n10,l(n11,l(n12,l(end,l(n13,l(n14,l(n15,l(x,l(end,nil))))))))))))))))))))) ).

cnf(shift_sideways,axiom,
    ( l(x,l(A,R)) = l(A,l(x,R))
    | A = end ) ).

cnf(shift_up_down,axiom,
    l(x,l(A,l(B,l(C,l(D,l(E,R)))))) = l(E,l(A,l(B,l(C,l(D,l(x,R)))))) ).

%--------------------------------------------------------------------------
