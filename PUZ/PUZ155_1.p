%------------------------------------------------------------------------------
% File     : PUZ155_1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles
% Problem  : Infinite descendants
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Satisfiable
% Rating   : 0.67 v9.1.0
% Syntax   : Number of formulae    :    8 (   2 unt;   4 typ;   0 def)
%            Number of atoms       :    7 (   2 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    4 (   1   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   1 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :    8 (   7   !;   1   ?;   8   :)
% SPC      : TF0_CSA_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
tff(person_type,type,
    person: $tType ).

tff(bob_decl,type,
    bob: person ).

tff(child_of_decl,type,
    child_of: person > person ).

tff(is_descendant_decl,type,
    is_descendant: ( person * person ) > $o ).

tff(descendents_different,axiom,
    ! [A: person,D: person] :
      ( is_descendant(A,D)
     => ( A != D ) ) ).

tff(descendent_transitive,axiom,
    ! [A: person,C: person,G: person] :
      ( ( is_descendant(A,C)
        & is_descendant(C,G) )
     => is_descendant(A,G) ) ).

tff(child_is_descendant,axiom,
    ! [P: person] : is_descendant(P,child_of(P)) ).

tff(all_have_child,axiom,
    ! [P: person] :
    ? [C: person] : ( C = child_of(P) ) ).

%------------------------------------------------------------------------------
