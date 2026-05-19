%--------------------------------------------------------------------------
% File     : PUZ006-1 : TPTP v9.2.1. Released v1.0.0.
% Domain   : Puzzles
% Problem  : Determine sex and race on Mars and Venus
% Version  : Especial.
% English  : Here's the situation: human observers in this exclusive club
%            on Ganymede can't distinguish Martians from Venusians, males
%            from females, except for the fact that Venusian women and
%            Martian men always tell the truth and Venusian men and
%            Martian women always lie.
%            Ork says "Bog is from Venus."  Bog says "Ork is from Mars."
%            Ork says "Bog is male."  Bog says "Ork is female." Who's
%            what?  (sex & race).

% Refs     :
% Source   : [ANL]
% Names    : mars_venus.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.05 v9.0.0, 0.10 v8.1.0, 0.00 v7.5.0, 0.05 v7.4.0, 0.06 v7.3.0, 0.08 v7.1.0, 0.00 v7.0.0, 0.07 v6.4.0, 0.00 v6.2.0, 0.10 v6.1.0, 0.07 v6.0.0, 0.10 v5.3.0, 0.17 v5.2.0, 0.12 v5.1.0, 0.06 v5.0.0, 0.00 v3.3.0, 0.07 v3.2.0, 0.00 v3.1.0, 0.09 v2.7.0, 0.08 v2.6.0, 0.00 v2.2.0, 0.11 v2.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :   29 (   5 unt;   4 nHn;  25 RR)
%            Number of literals    :   60 (   1 equ;  32 neg)
%            Maximal clause size   :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    9 (   8 usr;   0 prp; 1-2 aty)
%            Number of functors    :    7 (   7 usr;   6 con; 0-1 aty)
%            Number of variables   :   20 (   1 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments :
%--------------------------------------------------------------------------
%----Include Mars and Venus axioms
include('Axioms/PUZ001-0.ax').
%--------------------------------------------------------------------------
%----Ork says "Bog is from Venus."  Bog says "Ork is from Mars." Ork says
%----"Bog is male."  Bog says "Ork is female.
cnf(ork_says_bog_is_from_venus,hypothesis,
    says(ork,bog_is_from_venus) ).

cnf(bog_says_ork_is_from_mar,hypothesis,
    says(bog,ork_is_from_mars) ).

cnf(ork_says_bog_is_male,hypothesis,
    says(ork,bog_is_male) ).

cnf(bog_says_ork_is_female,hypothesis,
    says(bog,ork_is_female) ).

cnf(bog_is_from_venus1,hypothesis,
    ( ~ a_truth(bog_is_from_venus)
    | from_venus(bog) ) ).

cnf(ork_is_from_mars1,hypothesis,
    ( ~ a_truth(ork_is_from_mars)
    | from_mars(ork) ) ).

cnf(bog_is_male1,hypothesis,
    ( ~ a_truth(bog_is_male)
    | male(bog) ) ).

cnf(ork_is_female1,hypothesis,
    ( ~ a_truth(ork_is_female)
    | female(ork) ) ).

cnf(bog_is_from_venus2,hypothesis,
    ( ~ from_venus(bog)
    | a_truth(bog_is_from_venus) ) ).

cnf(ork_is_from_mars2,hypothesis,
    ( ~ from_mars(ork)
    | a_truth(ork_is_from_mars) ) ).

cnf(bog_is_male2,hypothesis,
    ( ~ male(bog)
    | a_truth(bog_is_male) ) ).

cnf(ork_is_female2,hypothesis,
    ( ~ female(ork)
    | a_truth(ork_is_female) ) ).

cnf(prove_bog_is_female,negated_conjecture,
    ~ female(bog) ).

%--------------------------------------------------------------------------
