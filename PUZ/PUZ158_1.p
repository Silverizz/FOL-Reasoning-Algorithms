%------------------------------------------------------------------------------
% File     : PUZ158_1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles
% Problem  : Rotten banana
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : ? v9.1.0
% Syntax   : Number of formulae    :   10 (   2 unt;   5 typ;   0 def)
%            Number of atoms       :    9 (   1 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :   10 (   3   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   3 {.};   0 {#})
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   1 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   2 usr;   2 prp; 0-2 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :    2 (   2   !;   0   ?;   2   :)
% SPC      : NX0_CSA_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
tff(semantics,logic,
    $alethic_modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_M ] ).

tff(fruit_type,type,
    fruit: $tType ).

tff(apple_decl,type,
    apple: fruit ).

tff(banana_decl,type,
    banana: fruit ).

tff(healthy_decl,type,
    healthy: fruit > $o ).

tff(rotten_decl,type,
    rotten: fruit > $o ).

tff(apple_not_banana,axiom,
    apple != banana ).

tff(necessary_healthy_fruit_everywhere,axiom,
    ! [F: fruit] : ( {$necessary} @ ( healthy(F) ) ) ).

tff(fruit_possibly_not_rotten,axiom,
    ! [F: fruit] : ( {$possible} @ ( ~ rotten(F) ) ) ).

tff(rotten_banana_here,axiom-local,
    rotten(banana) ).

tff(not_true,conjecture,
    ( {$necessary}
    @ ( healthy(apple)
      & ~ rotten(banana) ) ) ).

%------------------------------------------------------------------------------
