%--------------------------------------------------------------------------
% File     : PUZ009-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Puzzles
% Problem  : Looking for Oona
% Version  : Especial.
% English  : In another curious incident, when the husband arrived on an
%            island looking for Oona, he met 5 natives A,B,C,D,E who all
%            guessed his purpose and grinned at meeting him. They said:
%            A: Oona is on this island. B: Oona is not on this island.
%            C: Oona was here yesterday. D: Oona is not here today, and she
%            was not here yesterday. E: Either D is a knave or C is a knight.
%            The logician thought for a while, but could get nowhere. `Won't
%            one of you please make another statement?' the logician pleaded.
%            At this point A said: Either E is a knave or C is a knight. Is
%            Oona on the island?"

% Refs     : [Smu87] Smullyan (1987), Forever Undecided - A Puzzle Guide to
% Source   : [ANL]
% Names    : oona.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.00 v2.0.0
% Syntax   : Number of clauses     :   18 (   1 unt;   6 nHn;  18 RR)
%            Number of literals    :   40 (   0 equ;  21 neg)
%            Maximal clause size   :    3 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of predicates  :    5 (   5 usr;   5 prp; 0-0 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (   0 sgn)
% SPC      : CNF_UNS_PRP

% Comments :
%--------------------------------------------------------------------------
cnf(c1,axiom,
    ( ~ a_is_a_knight
    | ~ b_is_a_knight ) ).

cnf(c2,axiom,
    ( ~ a_is_a_knight
    | ~ d_is_a_knight ) ).

cnf(c3,axiom,
    ( ~ b_is_a_knight
    | ~ a_is_a_knight ) ).

cnf(c4,axiom,
    ( b_is_a_knight
    | a_is_a_knight ) ).

cnf(c5,axiom,
    ( ~ b_is_a_knight
    | c_is_a_knight
    | d_is_a_knight ) ).

cnf(c6,axiom,
    ( ~ c_is_a_knight
    | ~ d_is_a_knight ) ).

cnf(c7,axiom,
    ( ~ d_is_a_knight
    | ~ a_is_a_knight ) ).

cnf(c8,axiom,
    ( ~ d_is_a_knight
    | b_is_a_knight ) ).

cnf(c9,axiom,
    ( ~ d_is_a_knight
    | ~ c_is_a_knight ) ).

cnf(c10,axiom,
    ( ~ e_is_a_knight
    | ~ d_is_a_knight
    | c_is_a_knight ) ).

cnf(c11,axiom,
    ( e_is_a_knight
    | d_is_a_knight ) ).

cnf(c12,axiom,
    ( e_is_a_knight
    | ~ c_is_a_knight ) ).

cnf(c13,axiom,
    ( d_is_a_knight
    | a_is_a_knight
    | c_is_a_knight ) ).

cnf(c14,axiom,
    ( d_is_a_knight
    | ~ b_is_a_knight
    | c_is_a_knight ) ).

cnf(c15,axiom,
    ( ~ a_is_a_knight
    | ~ e_is_a_knight
    | c_is_a_knight ) ).

cnf(c16,axiom,
    ( a_is_a_knight
    | e_is_a_knight ) ).

cnf(c17,axiom,
    ( a_is_a_knight
    | ~ c_is_a_knight ) ).

cnf(c18,negated_conjecture,
    b_is_a_knight ).

%--------------------------------------------------------------------------
