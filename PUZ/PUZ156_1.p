%------------------------------------------------------------------------------
% File     : PUZ156_1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles
% Problem  : Tethered drone
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 1.00 v9.1.0
% Syntax   : Number of formulae    :   12 (   2 unt;   6 typ;   0 def)
%            Number of atoms       :   25 (  10 equ)
%            Maximal formula atoms :   10 (   4 avg)
%            Number of connectives :   25 (   6   ~;   3   |;  11   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :   18 (   0 atm;   4 fun;   8 num;   6 var)
%            Number of types       :    3 (   1 usr;   1 ari)
%            Number of type conns  :    3 (   1   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-3 aty)
%            Number of functors    :   10 (   4 usr;   8 con; 0-2 aty)
%            Number of variables   :    9 (   9   !;   0   ?;   9   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments : 
%------------------------------------------------------------------------------
tff(level_type,type,
    level: $tType ).

tff(ground_decl,type,
    ground: level ).

tff(middle_decl,type,
    middle: level ).

tff(top_decl,type,
    top: level ).

tff(space_decl,type,
    space: level ).

tff(possible_position_decl,type,
    possible_position: ( $int * $int * level ) > $o ).

tff(only_four_distinct_levels,axiom,
    ( ! [Z: level] :
        ( ( Z = ground )
        | ( Z = middle )
        | ( Z = top )
        | ( Z = space ) )
    & ( ground != middle )
    & ( ground != top )
    & ( ground != space )
    & ( middle != top )
    & ( middle != space )
    & ( top != space ) ) ).

%    & $distinct(ground,middle,top,space) ) ).

tff(start_at_origin,axiom,
    possible_position(0,0,ground) ).

tff(move_X,axiom,
    ! [X: $int,Y: $int,Z: level] :
      ( possible_position(X,Y,Z)
     => ( possible_position($difference(X,1),Y,Z)
        & possible_position($sum(X,1),Y,Z) ) ) ).

tff(move_Y,axiom,
    ! [X: $int,Y: $int,Z: level] :
      ( possible_position(X,Y,Z)
     => ( possible_position(X,$difference(Y,1),Z)
        & possible_position(X,$sum(Y,1),Z) ) ) ).

tff(move_Z,axiom,
    ! [X: $int,Y: $int] :
      ( ( possible_position(X,Y,ground)
       => possible_position(X,Y,middle) )
      & ( possible_position(X,Y,middle)
       => ( possible_position(X,Y,ground)
          & possible_position(X,Y,top) ) )
      & ( possible_position(X,Y,top)
       => possible_position(X,Y,middle) ) ) ).

tff(can_fly,conjecture,
    possible_position(3,-5,space) ).

%------------------------------------------------------------------------------
