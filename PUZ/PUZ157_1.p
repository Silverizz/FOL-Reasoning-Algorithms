%------------------------------------------------------------------------------
% File     : PUZ157_1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles
% Problem  : Alex and Chris work on Leo-III
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : ? v9.1.0
% Syntax   : Number of formulae    :   13 (   3 unt;   7 typ;   0 def)
%            Number of atoms       :   11 (   1 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :   11 (   3   ~;   0   |;   1   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   3 {.};   0 {#})
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    3 (   2 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   2 usr;   2 prp; 0-2 aty)
%            Number of functors    :    3 (   3 usr;   3 con; 0-0 aty)
%            Number of variables   :    3 (   1   !;   2   ?;   3   :)
% SPC      : NX0_CSA_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
tff(semantics,logic,
    $alethic_modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_M ] ).

tff(person_decl,type,
    person: $tType ).

tff(product_decl,type,
    product: $tType ).

tff(alex_decl,type,
    alex: person ).

tff(chris_decl,type,
    chris: person ).

tff(leo_decl,type,
    leo: product ).

tff(work_hard_decl,type,
    work_hard: ( person * product ) > $o ).

tff(gets_rich_decl,type,
    gets_rich: person > $o ).

%----If there is a product that a person works hard on, then 
%----it's possible that the person will get rich.
tff(work_hard_to_get_rich,axiom,
    ! [P: person] :
      ( ? [R: product] : work_hard(P,R)
     => ( {$possible} @ ( gets_rich(P) ) ) ) ).

%----Nobody necessarily gets rich.
tff(not_all_get_rich,axiom,
    ~ ? [P: person] : ( {$necessary} @ ( gets_rich(P) ) ) ).

%----Alex and Chris work hard on Leo-III.
tff(alex_works_on_leo,axiom,
    work_hard(alex,leo) ).

tff(chris_works_on_leo,axiom,
    work_hard(chris,leo) ).

%----Chris is not Alex
tff(chris_not_alex,axiom,
    chris != alex ).

%----It's possible that Alex gets rich but Chris does not.
tff(only_alex_gets_rich,conjecture,
    ( {$possible}
    @ ( gets_rich(alex)
      & ~ gets_rich(chris) ) ) ).

%------------------------------------------------------------------------------
