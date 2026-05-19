%------------------------------------------------------------------------------
% File     : PUZ141^1 : TPTP v9.2.1. Released v6.2.0.
% Domain   : Puzzles
% Problem  : Labyrinth1
% Version  : Especial.
% English  : Move 2 to the right.

% Refs     : [Cam14] Camarero (2014), Email to Geoff Sutcliffe
% Source   : [Cam14]
% Names    : labyrinth1 [Cam14]

% Status   : Theorem
% Rating   : 0.00 v9.0.0, 0.10 v8.2.0, 0.08 v8.1.0, 0.09 v7.5.0, 0.14 v7.4.0, 0.33 v7.2.0, 0.25 v7.1.0, 0.38 v7.0.0, 0.29 v6.4.0, 0.33 v6.3.0, 0.80 v6.2.0
% Syntax   : Number of formulae    :   27 (  10 unt;  15 typ;   2 def)
%            Number of atoms       :   22 (  14 equ;   0 cnn)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :   46 (   1   ~;   0   |;   0   &;  41   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   3 avg)
%            Number of types       :    4 (   3 usr)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (  12 usr;   9 con; 0-2 aty)
%            Number of variables   :   12 (   0   ^;  11   !;   1   ?;  12   :)
% SPC      : TH0_THM_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
thf(position_type,type,
    position: $tType ).

thf(direction_type,type,
    direction: $tType ).

thf(left_type,type,
    left: direction ).

thf(right_type,type,
    right: direction ).

thf(top_type,type,
    top: direction ).

thf(bottom_type,type,
    bottom: direction ).

thf(next_type,type,
    next: position > direction > position ).

thf(next_comm,axiom,
    ! [D1: direction,D2: direction,P: position] :
      ( ( next @ ( next @ P @ D1 ) @ D2 )
      = ( next @ ( next @ P @ D2 ) @ D1 ) ) ).

thf(left_right,axiom,
    ! [P: position] :
      ( ( next @ ( next @ P @ left ) @ right )
      = P ) ).

thf(top_bottom,axiom,
    ! [P: position] :
      ( ( next @ ( next @ P @ top ) @ bottom )
      = P ) ).

thf(wall_type,type,
    wall: position > $o ).

%----Inductive MoveList. For the moment we do not include the inductive axioms.
thf(movelist_type,type,
    movelist: $tType ).

thf(nomove_type,type,
    nomove: movelist ).

thf(movedir_type,type,
    movedir: movelist > direction > movelist ).

%----The position of the player after a list of movements
thf(playerpos_type,type,
    playerpos: movelist > position ).

thf(player_move_legal,axiom,
    ! [PO: position,M: movelist,D: direction] :
      ( ( ( playerpos @ M )
        = PO )
     => ( ~ ( wall @ ( next @ PO @ D ) )
       => ( ( playerpos @ ( movedir @ M @ D ) )
          = ( next @ PO @ D ) ) ) ) ).

thf(player_move_illegal,axiom,
    ! [PO: position,M: movelist,D: direction] :
      ( ( ( playerpos @ M )
        = PO )
     => ( ( wall @ ( next @ PO @ D ) )
       => ( ( playerpos @ ( movedir @ M @ D ) )
          = PO ) ) ) ).

thf(c00_type,type,
    c00: position ).

thf(c10_type,type,
    c10: position ).

thf(c20_type,type,
    c20: position ).

thf(c10_defin,definition,
    ( c10
    = ( next @ c00 @ right ) ) ).

thf(c20_defin,definition,
    ( c20
    = ( next @ c10 @ right ) ) ).

%----Exercise 1. Move 2 to the right
thf(c00_axiom,axiom,
    ( ( wall @ c00 )
    = $false ) ).

thf(c10_axiom,axiom,
    ( ( wall @ c10 )
    = $false ) ).

thf(c20_axiom,axiom,
    ( ( wall @ c20 )
    = $false ) ).

thf(start_axiom,axiom,
    ( ( playerpos @ nomove )
    = c00 ) ).

thf(exercise,conjecture,
    ? [M: movelist] :
      ( ( playerpos @ M )
      = c20 ) ).

%------------------------------------------------------------------------------
