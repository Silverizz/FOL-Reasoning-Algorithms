%------------------------------------------------------------------------------
% File     : PUZ153+1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles
% Problem  : Humans created equal
% Version  : Especial.
% English  : All (hu)men are created equal. John is a human. John got an F 
%            grade. There is someone (a human) who got an A grade. An A grade 
%            is not equal to an F grade. Grades are not human. Therefore, it is 
%            not the case being created equal is the same as really being equal.

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v9.1.0
% Syntax   : Number of formulae    :    7 (   4 unt;   0 def)
%            Number of atoms       :   13 (   4 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :    8 (   2   ~;   0   |;   4   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    4 (   4 usr;   3 con; 0-1 aty)
%            Number of variables   :    6 (   5   !;   1   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
fof(all_created_equal,axiom,
    ! [H1,H2] :
      ( ( human(H1)
        & human(H2) )
     => created_equal(H1,H2) ) ).

fof(john,axiom,
    human(john) ).

fof(john_failed,axiom,
    grade_of(john) = f ).

fof(someone_got_an_a,axiom,
    ? [H] :
      ( human(H)
      & grade_of(H) = a ) ).

fof(distinct_grades,axiom,
    a != f ).

fof(grades_not_human,axiom,
    ! [G] : ~ human(grade_of(G)) ).

fof(equality_lost,conjecture,
    ! [H1,H2] :
      ( ( human(H1)
        & human(H2)
        & created_equal(H1,H2) )
    <=> H1 = H2 ) ).

%------------------------------------------------------------------------------
