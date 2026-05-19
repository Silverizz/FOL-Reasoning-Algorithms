%------------------------------------------------------------------------------
% File     : PUZ068-1 : TPTP v9.2.1. Released v3.2.0.
% Domain   : Puzzles (Sudoku)
% Problem  : Monday's Sudoku
% Version  : [Bau06] axioms : Especial.
% English  :    47 1
%             5 2
%             3      8
%            6   1 7
%              4  3
%                   5
%               7   3
%            1
%                    4

% Refs     : [Bau06] Baumgartner (2006), Email to G. Sutcliffe
% Source   : [Bau06]
% Names    :

% Status   : Satisfiable
% Rating   : 0.50 v9.1.0, 0.44 v9.0.0, 0.30 v8.2.0, 0.40 v8.1.0, 0.25 v7.5.0, 0.22 v7.4.0, 0.27 v7.3.0, 0.33 v7.2.0, 0.44 v7.1.0, 0.50 v7.0.0, 0.29 v6.4.0, 0.43 v6.3.0, 0.38 v6.2.0, 0.40 v6.1.0, 0.33 v6.0.0, 0.43 v5.5.0, 0.50 v5.4.0, 0.70 v5.3.0, 0.67 v5.2.0, 0.60 v5.1.0, 0.80 v5.0.0, 0.78 v4.1.0, 0.86 v4.0.1, 1.00 v4.0.0, 0.50 v3.7.0, 0.33 v3.4.0, 0.50 v3.3.0, 0.00 v3.2.0
% Syntax   : Number of clauses     :   96 (  71 unt;   4 nHn;  96 RR)
%            Number of literals    :  178 (  39 equ; 104 neg)
%            Maximal clause size   :   11 (   1 avg)
%            Maximal term depth    :   10 (   3 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-3 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :   75 (   0 sgn)
% SPC      : CNF_SAT_RFO_EQU_NUE

% Comments :
%------------------------------------------------------------------------------
include('Axioms/PUZ005-0.ax').
%------------------------------------------------------------------------------
cnf(c01,axiom,
    el(s(n0),s(s(s(s(n0)))),s(s(s(s(n0))))) ).

cnf(c02,axiom,
    el(s(n0),s(s(s(s(s(n0))))),s(s(s(s(s(s(s(n0)))))))) ).

cnf(c03,axiom,
    el(s(n0),s(s(s(s(s(s(s(n0))))))),s(n0)) ).

cnf(c04,axiom,
    el(s(s(n0)),s(s(n0)),s(s(s(s(s(n0)))))) ).

cnf(c05,axiom,
    el(s(s(n0)),s(s(s(s(n0)))),s(s(n0))) ).

cnf(c06,axiom,
    el(s(s(s(n0))),s(s(n0)),s(s(s(n0)))) ).

cnf(c07,axiom,
    el(s(s(s(n0))),s(s(s(s(s(s(s(s(s(n0))))))))),s(s(s(s(s(s(s(s(n0))))))))) ).

cnf(c08,axiom,
    el(s(s(s(s(n0)))),s(n0),s(s(s(s(s(s(n0))))))) ).

cnf(c09,axiom,
    el(s(s(s(s(n0)))),s(s(s(s(s(n0))))),s(n0)) ).

cnf(c10,axiom,
    el(s(s(s(s(n0)))),s(s(s(s(s(s(s(n0))))))),s(s(s(s(s(s(s(n0)))))))) ).

cnf(c11,axiom,
    el(s(s(s(s(s(n0))))),s(s(s(n0))),s(s(s(s(n0))))) ).

cnf(c12,axiom,
    el(s(s(s(s(s(n0))))),s(s(s(s(s(s(n0)))))),s(s(s(n0)))) ).

cnf(c13,axiom,
    el(s(s(s(s(s(s(n0)))))),s(s(s(s(s(s(s(s(n0)))))))),s(s(s(s(s(n0)))))) ).

cnf(c14,axiom,
    el(s(s(s(s(s(s(s(n0))))))),s(s(s(s(n0)))),s(s(s(s(s(s(s(n0)))))))) ).

cnf(c15,axiom,
    el(s(s(s(s(s(s(s(n0))))))),s(s(s(s(s(s(s(s(n0)))))))),s(s(s(n0)))) ).

cnf(c16,axiom,
    el(s(s(s(s(s(s(s(s(n0)))))))),s(n0),s(n0)) ).

cnf(c17,axiom,
    el(s(s(s(s(s(s(s(s(s(n0))))))))),s(s(s(s(s(s(s(s(s(n0))))))))),s(s(s(s(n0))))) ).

%------------------------------------------------------------------------------
