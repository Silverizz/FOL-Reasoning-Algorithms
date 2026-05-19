%------------------------------------------------------------------------------
% File     : PUZ145^1 : TPTP v9.2.1. Released v6.2.0.
% Domain   : Puzzles
% Problem  : Labyrinth5
% Version  : Especial.
% English  :

% Refs     : [Cam14] Camarero (2014), Email to Geoff Sutcliffe
% Source   : [Cam14]
% Names    : labyrinth5 [Cam14]

% Status   : Theorem
% Rating   : 1.00 v9.0.0, 0.90 v8.2.0, 0.92 v8.1.0, 0.91 v7.5.0, 1.00 v6.2.0
% Syntax   : Number of formulae    :  963 ( 634 unt; 327 typ; 314 def)
%            Number of atoms       : 1270 ( 638 equ;   0 cnn)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :  982 (   1   ~;   0   |;   0   &; 977   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   1 avg)
%            Number of types       :    4 (   3 usr)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :  327 ( 324 usr; 322 con; 0-2 aty)
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

thf(c0c0_type,type,
    c0c0: position ).

thf(c0c1_type,type,
    c0c1: position ).

thf(c0c2_type,type,
    c0c2: position ).

thf(c0c3_type,type,
    c0c3: position ).

thf(c0c4_type,type,
    c0c4: position ).

thf(c0c5_type,type,
    c0c5: position ).

thf(c0c6_type,type,
    c0c6: position ).

thf(c0c7_type,type,
    c0c7: position ).

thf(c0c8_type,type,
    c0c8: position ).

thf(c0c9_type,type,
    c0c9: position ).

thf(c0c10_type,type,
    c0c10: position ).

thf(c0c11_type,type,
    c0c11: position ).

thf(c0c12_type,type,
    c0c12: position ).

thf(c0c13_type,type,
    c0c13: position ).

thf(c0c14_type,type,
    c0c14: position ).

thf(c1c0_type,type,
    c1c0: position ).

thf(c1c1_type,type,
    c1c1: position ).

thf(c1c2_type,type,
    c1c2: position ).

thf(c1c3_type,type,
    c1c3: position ).

thf(c1c4_type,type,
    c1c4: position ).

thf(c1c5_type,type,
    c1c5: position ).

thf(c1c6_type,type,
    c1c6: position ).

thf(c1c7_type,type,
    c1c7: position ).

thf(c1c8_type,type,
    c1c8: position ).

thf(c1c9_type,type,
    c1c9: position ).

thf(c1c10_type,type,
    c1c10: position ).

thf(c1c11_type,type,
    c1c11: position ).

thf(c1c12_type,type,
    c1c12: position ).

thf(c1c13_type,type,
    c1c13: position ).

thf(c1c14_type,type,
    c1c14: position ).

thf(c2c0_type,type,
    c2c0: position ).

thf(c2c1_type,type,
    c2c1: position ).

thf(c2c2_type,type,
    c2c2: position ).

thf(c2c3_type,type,
    c2c3: position ).

thf(c2c4_type,type,
    c2c4: position ).

thf(c2c5_type,type,
    c2c5: position ).

thf(c2c6_type,type,
    c2c6: position ).

thf(c2c7_type,type,
    c2c7: position ).

thf(c2c8_type,type,
    c2c8: position ).

thf(c2c9_type,type,
    c2c9: position ).

thf(c2c10_type,type,
    c2c10: position ).

thf(c2c11_type,type,
    c2c11: position ).

thf(c2c12_type,type,
    c2c12: position ).

thf(c2c13_type,type,
    c2c13: position ).

thf(c2c14_type,type,
    c2c14: position ).

thf(c3c0_type,type,
    c3c0: position ).

thf(c3c1_type,type,
    c3c1: position ).

thf(c3c2_type,type,
    c3c2: position ).

thf(c3c3_type,type,
    c3c3: position ).

thf(c3c4_type,type,
    c3c4: position ).

thf(c3c5_type,type,
    c3c5: position ).

thf(c3c6_type,type,
    c3c6: position ).

thf(c3c7_type,type,
    c3c7: position ).

thf(c3c8_type,type,
    c3c8: position ).

thf(c3c9_type,type,
    c3c9: position ).

thf(c3c10_type,type,
    c3c10: position ).

thf(c3c11_type,type,
    c3c11: position ).

thf(c3c12_type,type,
    c3c12: position ).

thf(c3c13_type,type,
    c3c13: position ).

thf(c3c14_type,type,
    c3c14: position ).

thf(c4c0_type,type,
    c4c0: position ).

thf(c4c1_type,type,
    c4c1: position ).

thf(c4c2_type,type,
    c4c2: position ).

thf(c4c3_type,type,
    c4c3: position ).

thf(c4c4_type,type,
    c4c4: position ).

thf(c4c5_type,type,
    c4c5: position ).

thf(c4c6_type,type,
    c4c6: position ).

thf(c4c7_type,type,
    c4c7: position ).

thf(c4c8_type,type,
    c4c8: position ).

thf(c4c9_type,type,
    c4c9: position ).

thf(c4c10_type,type,
    c4c10: position ).

thf(c4c11_type,type,
    c4c11: position ).

thf(c4c12_type,type,
    c4c12: position ).

thf(c4c13_type,type,
    c4c13: position ).

thf(c4c14_type,type,
    c4c14: position ).

thf(c5c0_type,type,
    c5c0: position ).

thf(c5c1_type,type,
    c5c1: position ).

thf(c5c2_type,type,
    c5c2: position ).

thf(c5c3_type,type,
    c5c3: position ).

thf(c5c4_type,type,
    c5c4: position ).

thf(c5c5_type,type,
    c5c5: position ).

thf(c5c6_type,type,
    c5c6: position ).

thf(c5c7_type,type,
    c5c7: position ).

thf(c5c8_type,type,
    c5c8: position ).

thf(c5c9_type,type,
    c5c9: position ).

thf(c5c10_type,type,
    c5c10: position ).

thf(c5c11_type,type,
    c5c11: position ).

thf(c5c12_type,type,
    c5c12: position ).

thf(c5c13_type,type,
    c5c13: position ).

thf(c5c14_type,type,
    c5c14: position ).

thf(c6c0_type,type,
    c6c0: position ).

thf(c6c1_type,type,
    c6c1: position ).

thf(c6c2_type,type,
    c6c2: position ).

thf(c6c3_type,type,
    c6c3: position ).

thf(c6c4_type,type,
    c6c4: position ).

thf(c6c5_type,type,
    c6c5: position ).

thf(c6c6_type,type,
    c6c6: position ).

thf(c6c7_type,type,
    c6c7: position ).

thf(c6c8_type,type,
    c6c8: position ).

thf(c6c9_type,type,
    c6c9: position ).

thf(c6c10_type,type,
    c6c10: position ).

thf(c6c11_type,type,
    c6c11: position ).

thf(c6c12_type,type,
    c6c12: position ).

thf(c6c13_type,type,
    c6c13: position ).

thf(c6c14_type,type,
    c6c14: position ).

thf(c7c0_type,type,
    c7c0: position ).

thf(c7c1_type,type,
    c7c1: position ).

thf(c7c2_type,type,
    c7c2: position ).

thf(c7c3_type,type,
    c7c3: position ).

thf(c7c4_type,type,
    c7c4: position ).

thf(c7c5_type,type,
    c7c5: position ).

thf(c7c6_type,type,
    c7c6: position ).

thf(c7c7_type,type,
    c7c7: position ).

thf(c7c8_type,type,
    c7c8: position ).

thf(c7c9_type,type,
    c7c9: position ).

thf(c7c10_type,type,
    c7c10: position ).

thf(c7c11_type,type,
    c7c11: position ).

thf(c7c12_type,type,
    c7c12: position ).

thf(c7c13_type,type,
    c7c13: position ).

thf(c7c14_type,type,
    c7c14: position ).

thf(c8c0_type,type,
    c8c0: position ).

thf(c8c1_type,type,
    c8c1: position ).

thf(c8c2_type,type,
    c8c2: position ).

thf(c8c3_type,type,
    c8c3: position ).

thf(c8c4_type,type,
    c8c4: position ).

thf(c8c5_type,type,
    c8c5: position ).

thf(c8c6_type,type,
    c8c6: position ).

thf(c8c7_type,type,
    c8c7: position ).

thf(c8c8_type,type,
    c8c8: position ).

thf(c8c9_type,type,
    c8c9: position ).

thf(c8c10_type,type,
    c8c10: position ).

thf(c8c11_type,type,
    c8c11: position ).

thf(c8c12_type,type,
    c8c12: position ).

thf(c8c13_type,type,
    c8c13: position ).

thf(c8c14_type,type,
    c8c14: position ).

thf(c9c0_type,type,
    c9c0: position ).

thf(c9c1_type,type,
    c9c1: position ).

thf(c9c2_type,type,
    c9c2: position ).

thf(c9c3_type,type,
    c9c3: position ).

thf(c9c4_type,type,
    c9c4: position ).

thf(c9c5_type,type,
    c9c5: position ).

thf(c9c6_type,type,
    c9c6: position ).

thf(c9c7_type,type,
    c9c7: position ).

thf(c9c8_type,type,
    c9c8: position ).

thf(c9c9_type,type,
    c9c9: position ).

thf(c9c10_type,type,
    c9c10: position ).

thf(c9c11_type,type,
    c9c11: position ).

thf(c9c12_type,type,
    c9c12: position ).

thf(c9c13_type,type,
    c9c13: position ).

thf(c9c14_type,type,
    c9c14: position ).

thf(c10c0_type,type,
    c10c0: position ).

thf(c10c1_type,type,
    c10c1: position ).

thf(c10c2_type,type,
    c10c2: position ).

thf(c10c3_type,type,
    c10c3: position ).

thf(c10c4_type,type,
    c10c4: position ).

thf(c10c5_type,type,
    c10c5: position ).

thf(c10c6_type,type,
    c10c6: position ).

thf(c10c7_type,type,
    c10c7: position ).

thf(c10c8_type,type,
    c10c8: position ).

thf(c10c9_type,type,
    c10c9: position ).

thf(c10c10_type,type,
    c10c10: position ).

thf(c10c11_type,type,
    c10c11: position ).

thf(c10c12_type,type,
    c10c12: position ).

thf(c10c13_type,type,
    c10c13: position ).

thf(c10c14_type,type,
    c10c14: position ).

thf(c11c0_type,type,
    c11c0: position ).

thf(c11c1_type,type,
    c11c1: position ).

thf(c11c2_type,type,
    c11c2: position ).

thf(c11c3_type,type,
    c11c3: position ).

thf(c11c4_type,type,
    c11c4: position ).

thf(c11c5_type,type,
    c11c5: position ).

thf(c11c6_type,type,
    c11c6: position ).

thf(c11c7_type,type,
    c11c7: position ).

thf(c11c8_type,type,
    c11c8: position ).

thf(c11c9_type,type,
    c11c9: position ).

thf(c11c10_type,type,
    c11c10: position ).

thf(c11c11_type,type,
    c11c11: position ).

thf(c11c12_type,type,
    c11c12: position ).

thf(c11c13_type,type,
    c11c13: position ).

thf(c11c14_type,type,
    c11c14: position ).

thf(c12c0_type,type,
    c12c0: position ).

thf(c12c1_type,type,
    c12c1: position ).

thf(c12c2_type,type,
    c12c2: position ).

thf(c12c3_type,type,
    c12c3: position ).

thf(c12c4_type,type,
    c12c4: position ).

thf(c12c5_type,type,
    c12c5: position ).

thf(c12c6_type,type,
    c12c6: position ).

thf(c12c7_type,type,
    c12c7: position ).

thf(c12c8_type,type,
    c12c8: position ).

thf(c12c9_type,type,
    c12c9: position ).

thf(c12c10_type,type,
    c12c10: position ).

thf(c12c11_type,type,
    c12c11: position ).

thf(c12c12_type,type,
    c12c12: position ).

thf(c12c13_type,type,
    c12c13: position ).

thf(c12c14_type,type,
    c12c14: position ).

thf(c13c0_type,type,
    c13c0: position ).

thf(c13c1_type,type,
    c13c1: position ).

thf(c13c2_type,type,
    c13c2: position ).

thf(c13c3_type,type,
    c13c3: position ).

thf(c13c4_type,type,
    c13c4: position ).

thf(c13c5_type,type,
    c13c5: position ).

thf(c13c6_type,type,
    c13c6: position ).

thf(c13c7_type,type,
    c13c7: position ).

thf(c13c8_type,type,
    c13c8: position ).

thf(c13c9_type,type,
    c13c9: position ).

thf(c13c10_type,type,
    c13c10: position ).

thf(c13c11_type,type,
    c13c11: position ).

thf(c13c12_type,type,
    c13c12: position ).

thf(c13c13_type,type,
    c13c13: position ).

thf(c13c14_type,type,
    c13c14: position ).

thf(c14c0_type,type,
    c14c0: position ).

thf(c14c1_type,type,
    c14c1: position ).

thf(c14c2_type,type,
    c14c2: position ).

thf(c14c3_type,type,
    c14c3: position ).

thf(c14c4_type,type,
    c14c4: position ).

thf(c14c5_type,type,
    c14c5: position ).

thf(c14c6_type,type,
    c14c6: position ).

thf(c14c7_type,type,
    c14c7: position ).

thf(c14c8_type,type,
    c14c8: position ).

thf(c14c9_type,type,
    c14c9: position ).

thf(c14c10_type,type,
    c14c10: position ).

thf(c14c11_type,type,
    c14c11: position ).

thf(c14c12_type,type,
    c14c12: position ).

thf(c14c13_type,type,
    c14c13: position ).

thf(c14c14_type,type,
    c14c14: position ).

thf(c15c0_type,type,
    c15c0: position ).

thf(c15c1_type,type,
    c15c1: position ).

thf(c15c2_type,type,
    c15c2: position ).

thf(c15c3_type,type,
    c15c3: position ).

thf(c15c4_type,type,
    c15c4: position ).

thf(c15c5_type,type,
    c15c5: position ).

thf(c15c6_type,type,
    c15c6: position ).

thf(c15c7_type,type,
    c15c7: position ).

thf(c15c8_type,type,
    c15c8: position ).

thf(c15c9_type,type,
    c15c9: position ).

thf(c15c10_type,type,
    c15c10: position ).

thf(c15c11_type,type,
    c15c11: position ).

thf(c15c12_type,type,
    c15c12: position ).

thf(c15c13_type,type,
    c15c13: position ).

thf(c15c14_type,type,
    c15c14: position ).

thf(c16c0_type,type,
    c16c0: position ).

thf(c16c1_type,type,
    c16c1: position ).

thf(c16c2_type,type,
    c16c2: position ).

thf(c16c3_type,type,
    c16c3: position ).

thf(c16c4_type,type,
    c16c4: position ).

thf(c16c5_type,type,
    c16c5: position ).

thf(c16c6_type,type,
    c16c6: position ).

thf(c16c7_type,type,
    c16c7: position ).

thf(c16c8_type,type,
    c16c8: position ).

thf(c16c9_type,type,
    c16c9: position ).

thf(c16c10_type,type,
    c16c10: position ).

thf(c16c11_type,type,
    c16c11: position ).

thf(c16c12_type,type,
    c16c12: position ).

thf(c16c13_type,type,
    c16c13: position ).

thf(c16c14_type,type,
    c16c14: position ).

thf(c17c0_type,type,
    c17c0: position ).

thf(c17c1_type,type,
    c17c1: position ).

thf(c17c2_type,type,
    c17c2: position ).

thf(c17c3_type,type,
    c17c3: position ).

thf(c17c4_type,type,
    c17c4: position ).

thf(c17c5_type,type,
    c17c5: position ).

thf(c17c6_type,type,
    c17c6: position ).

thf(c17c7_type,type,
    c17c7: position ).

thf(c17c8_type,type,
    c17c8: position ).

thf(c17c9_type,type,
    c17c9: position ).

thf(c17c10_type,type,
    c17c10: position ).

thf(c17c11_type,type,
    c17c11: position ).

thf(c17c12_type,type,
    c17c12: position ).

thf(c17c13_type,type,
    c17c13: position ).

thf(c17c14_type,type,
    c17c14: position ).

thf(c18c0_type,type,
    c18c0: position ).

thf(c18c1_type,type,
    c18c1: position ).

thf(c18c2_type,type,
    c18c2: position ).

thf(c18c3_type,type,
    c18c3: position ).

thf(c18c4_type,type,
    c18c4: position ).

thf(c18c5_type,type,
    c18c5: position ).

thf(c18c6_type,type,
    c18c6: position ).

thf(c18c7_type,type,
    c18c7: position ).

thf(c18c8_type,type,
    c18c8: position ).

thf(c18c9_type,type,
    c18c9: position ).

thf(c18c10_type,type,
    c18c10: position ).

thf(c18c11_type,type,
    c18c11: position ).

thf(c18c12_type,type,
    c18c12: position ).

thf(c18c13_type,type,
    c18c13: position ).

thf(c18c14_type,type,
    c18c14: position ).

thf(c19c0_type,type,
    c19c0: position ).

thf(c19c1_type,type,
    c19c1: position ).

thf(c19c2_type,type,
    c19c2: position ).

thf(c19c3_type,type,
    c19c3: position ).

thf(c19c4_type,type,
    c19c4: position ).

thf(c19c5_type,type,
    c19c5: position ).

thf(c19c6_type,type,
    c19c6: position ).

thf(c19c7_type,type,
    c19c7: position ).

thf(c19c8_type,type,
    c19c8: position ).

thf(c19c9_type,type,
    c19c9: position ).

thf(c19c10_type,type,
    c19c10: position ).

thf(c19c11_type,type,
    c19c11: position ).

thf(c19c12_type,type,
    c19c12: position ).

thf(c19c13_type,type,
    c19c13: position ).

thf(c19c14_type,type,
    c19c14: position ).

thf(c20c0_type,type,
    c20c0: position ).

thf(c20c1_type,type,
    c20c1: position ).

thf(c20c2_type,type,
    c20c2: position ).

thf(c20c3_type,type,
    c20c3: position ).

thf(c20c4_type,type,
    c20c4: position ).

thf(c20c5_type,type,
    c20c5: position ).

thf(c20c6_type,type,
    c20c6: position ).

thf(c20c7_type,type,
    c20c7: position ).

thf(c20c8_type,type,
    c20c8: position ).

thf(c20c9_type,type,
    c20c9: position ).

thf(c20c10_type,type,
    c20c10: position ).

thf(c20c11_type,type,
    c20c11: position ).

thf(c20c12_type,type,
    c20c12: position ).

thf(c20c13_type,type,
    c20c13: position ).

thf(c20c14_type,type,
    c20c14: position ).

thf(c1c0_defin,definition,
    ( c1c0
    = ( next @ c0c0 @ right ) ) ).

thf(c2c0_defin,definition,
    ( c2c0
    = ( next @ c1c0 @ right ) ) ).

thf(c3c0_defin,definition,
    ( c3c0
    = ( next @ c2c0 @ right ) ) ).

thf(c4c0_defin,definition,
    ( c4c0
    = ( next @ c3c0 @ right ) ) ).

thf(c5c0_defin,definition,
    ( c5c0
    = ( next @ c4c0 @ right ) ) ).

thf(c6c0_defin,definition,
    ( c6c0
    = ( next @ c5c0 @ right ) ) ).

thf(c7c0_defin,definition,
    ( c7c0
    = ( next @ c6c0 @ right ) ) ).

thf(c8c0_defin,definition,
    ( c8c0
    = ( next @ c7c0 @ right ) ) ).

thf(c9c0_defin,definition,
    ( c9c0
    = ( next @ c8c0 @ right ) ) ).

thf(c10c0_defin,definition,
    ( c10c0
    = ( next @ c9c0 @ right ) ) ).

thf(c11c0_defin,definition,
    ( c11c0
    = ( next @ c10c0 @ right ) ) ).

thf(c12c0_defin,definition,
    ( c12c0
    = ( next @ c11c0 @ right ) ) ).

thf(c13c0_defin,definition,
    ( c13c0
    = ( next @ c12c0 @ right ) ) ).

thf(c14c0_defin,definition,
    ( c14c0
    = ( next @ c13c0 @ right ) ) ).

thf(c15c0_defin,definition,
    ( c15c0
    = ( next @ c14c0 @ right ) ) ).

thf(c16c0_defin,definition,
    ( c16c0
    = ( next @ c15c0 @ right ) ) ).

thf(c17c0_defin,definition,
    ( c17c0
    = ( next @ c16c0 @ right ) ) ).

thf(c18c0_defin,definition,
    ( c18c0
    = ( next @ c17c0 @ right ) ) ).

thf(c19c0_defin,definition,
    ( c19c0
    = ( next @ c18c0 @ right ) ) ).

thf(c20c0_defin,definition,
    ( c20c0
    = ( next @ c19c0 @ right ) ) ).

thf(c0c1_defin,definition,
    ( c0c1
    = ( next @ c0c0 @ top ) ) ).

thf(c0c2_defin,definition,
    ( c0c2
    = ( next @ c0c1 @ top ) ) ).

thf(c0c3_defin,definition,
    ( c0c3
    = ( next @ c0c2 @ top ) ) ).

thf(c0c4_defin,definition,
    ( c0c4
    = ( next @ c0c3 @ top ) ) ).

thf(c0c5_defin,definition,
    ( c0c5
    = ( next @ c0c4 @ top ) ) ).

thf(c0c6_defin,definition,
    ( c0c6
    = ( next @ c0c5 @ top ) ) ).

thf(c0c7_defin,definition,
    ( c0c7
    = ( next @ c0c6 @ top ) ) ).

thf(c0c8_defin,definition,
    ( c0c8
    = ( next @ c0c7 @ top ) ) ).

thf(c0c9_defin,definition,
    ( c0c9
    = ( next @ c0c8 @ top ) ) ).

thf(c0c10_defin,definition,
    ( c0c10
    = ( next @ c0c9 @ top ) ) ).

thf(c0c11_defin,definition,
    ( c0c11
    = ( next @ c0c10 @ top ) ) ).

thf(c0c12_defin,definition,
    ( c0c12
    = ( next @ c0c11 @ top ) ) ).

thf(c0c13_defin,definition,
    ( c0c13
    = ( next @ c0c12 @ top ) ) ).

thf(c0c14_defin,definition,
    ( c0c14
    = ( next @ c0c13 @ top ) ) ).

thf(c1c1_defin,definition,
    ( c1c1
    = ( next @ c1c0 @ top ) ) ).

thf(c1c2_defin,definition,
    ( c1c2
    = ( next @ c1c1 @ top ) ) ).

thf(c1c3_defin,definition,
    ( c1c3
    = ( next @ c1c2 @ top ) ) ).

thf(c1c4_defin,definition,
    ( c1c4
    = ( next @ c1c3 @ top ) ) ).

thf(c1c5_defin,definition,
    ( c1c5
    = ( next @ c1c4 @ top ) ) ).

thf(c1c6_defin,definition,
    ( c1c6
    = ( next @ c1c5 @ top ) ) ).

thf(c1c7_defin,definition,
    ( c1c7
    = ( next @ c1c6 @ top ) ) ).

thf(c1c8_defin,definition,
    ( c1c8
    = ( next @ c1c7 @ top ) ) ).

thf(c1c9_defin,definition,
    ( c1c9
    = ( next @ c1c8 @ top ) ) ).

thf(c1c10_defin,definition,
    ( c1c10
    = ( next @ c1c9 @ top ) ) ).

thf(c1c11_defin,definition,
    ( c1c11
    = ( next @ c1c10 @ top ) ) ).

thf(c1c12_defin,definition,
    ( c1c12
    = ( next @ c1c11 @ top ) ) ).

thf(c1c13_defin,definition,
    ( c1c13
    = ( next @ c1c12 @ top ) ) ).

thf(c1c14_defin,definition,
    ( c1c14
    = ( next @ c1c13 @ top ) ) ).

thf(c2c1_defin,definition,
    ( c2c1
    = ( next @ c2c0 @ top ) ) ).

thf(c2c2_defin,definition,
    ( c2c2
    = ( next @ c2c1 @ top ) ) ).

thf(c2c3_defin,definition,
    ( c2c3
    = ( next @ c2c2 @ top ) ) ).

thf(c2c4_defin,definition,
    ( c2c4
    = ( next @ c2c3 @ top ) ) ).

thf(c2c5_defin,definition,
    ( c2c5
    = ( next @ c2c4 @ top ) ) ).

thf(c2c6_defin,definition,
    ( c2c6
    = ( next @ c2c5 @ top ) ) ).

thf(c2c7_defin,definition,
    ( c2c7
    = ( next @ c2c6 @ top ) ) ).

thf(c2c8_defin,definition,
    ( c2c8
    = ( next @ c2c7 @ top ) ) ).

thf(c2c9_defin,definition,
    ( c2c9
    = ( next @ c2c8 @ top ) ) ).

thf(c2c10_defin,definition,
    ( c2c10
    = ( next @ c2c9 @ top ) ) ).

thf(c2c11_defin,definition,
    ( c2c11
    = ( next @ c2c10 @ top ) ) ).

thf(c2c12_defin,definition,
    ( c2c12
    = ( next @ c2c11 @ top ) ) ).

thf(c2c13_defin,definition,
    ( c2c13
    = ( next @ c2c12 @ top ) ) ).

thf(c2c14_defin,definition,
    ( c2c14
    = ( next @ c2c13 @ top ) ) ).

thf(c3c1_defin,definition,
    ( c3c1
    = ( next @ c3c0 @ top ) ) ).

thf(c3c2_defin,definition,
    ( c3c2
    = ( next @ c3c1 @ top ) ) ).

thf(c3c3_defin,definition,
    ( c3c3
    = ( next @ c3c2 @ top ) ) ).

thf(c3c4_defin,definition,
    ( c3c4
    = ( next @ c3c3 @ top ) ) ).

thf(c3c5_defin,definition,
    ( c3c5
    = ( next @ c3c4 @ top ) ) ).

thf(c3c6_defin,definition,
    ( c3c6
    = ( next @ c3c5 @ top ) ) ).

thf(c3c7_defin,definition,
    ( c3c7
    = ( next @ c3c6 @ top ) ) ).

thf(c3c8_defin,definition,
    ( c3c8
    = ( next @ c3c7 @ top ) ) ).

thf(c3c9_defin,definition,
    ( c3c9
    = ( next @ c3c8 @ top ) ) ).

thf(c3c10_defin,definition,
    ( c3c10
    = ( next @ c3c9 @ top ) ) ).

thf(c3c11_defin,definition,
    ( c3c11
    = ( next @ c3c10 @ top ) ) ).

thf(c3c12_defin,definition,
    ( c3c12
    = ( next @ c3c11 @ top ) ) ).

thf(c3c13_defin,definition,
    ( c3c13
    = ( next @ c3c12 @ top ) ) ).

thf(c3c14_defin,definition,
    ( c3c14
    = ( next @ c3c13 @ top ) ) ).

thf(c4c1_defin,definition,
    ( c4c1
    = ( next @ c4c0 @ top ) ) ).

thf(c4c2_defin,definition,
    ( c4c2
    = ( next @ c4c1 @ top ) ) ).

thf(c4c3_defin,definition,
    ( c4c3
    = ( next @ c4c2 @ top ) ) ).

thf(c4c4_defin,definition,
    ( c4c4
    = ( next @ c4c3 @ top ) ) ).

thf(c4c5_defin,definition,
    ( c4c5
    = ( next @ c4c4 @ top ) ) ).

thf(c4c6_defin,definition,
    ( c4c6
    = ( next @ c4c5 @ top ) ) ).

thf(c4c7_defin,definition,
    ( c4c7
    = ( next @ c4c6 @ top ) ) ).

thf(c4c8_defin,definition,
    ( c4c8
    = ( next @ c4c7 @ top ) ) ).

thf(c4c9_defin,definition,
    ( c4c9
    = ( next @ c4c8 @ top ) ) ).

thf(c4c10_defin,definition,
    ( c4c10
    = ( next @ c4c9 @ top ) ) ).

thf(c4c11_defin,definition,
    ( c4c11
    = ( next @ c4c10 @ top ) ) ).

thf(c4c12_defin,definition,
    ( c4c12
    = ( next @ c4c11 @ top ) ) ).

thf(c4c13_defin,definition,
    ( c4c13
    = ( next @ c4c12 @ top ) ) ).

thf(c4c14_defin,definition,
    ( c4c14
    = ( next @ c4c13 @ top ) ) ).

thf(c5c1_defin,definition,
    ( c5c1
    = ( next @ c5c0 @ top ) ) ).

thf(c5c2_defin,definition,
    ( c5c2
    = ( next @ c5c1 @ top ) ) ).

thf(c5c3_defin,definition,
    ( c5c3
    = ( next @ c5c2 @ top ) ) ).

thf(c5c4_defin,definition,
    ( c5c4
    = ( next @ c5c3 @ top ) ) ).

thf(c5c5_defin,definition,
    ( c5c5
    = ( next @ c5c4 @ top ) ) ).

thf(c5c6_defin,definition,
    ( c5c6
    = ( next @ c5c5 @ top ) ) ).

thf(c5c7_defin,definition,
    ( c5c7
    = ( next @ c5c6 @ top ) ) ).

thf(c5c8_defin,definition,
    ( c5c8
    = ( next @ c5c7 @ top ) ) ).

thf(c5c9_defin,definition,
    ( c5c9
    = ( next @ c5c8 @ top ) ) ).

thf(c5c10_defin,definition,
    ( c5c10
    = ( next @ c5c9 @ top ) ) ).

thf(c5c11_defin,definition,
    ( c5c11
    = ( next @ c5c10 @ top ) ) ).

thf(c5c12_defin,definition,
    ( c5c12
    = ( next @ c5c11 @ top ) ) ).

thf(c5c13_defin,definition,
    ( c5c13
    = ( next @ c5c12 @ top ) ) ).

thf(c5c14_defin,definition,
    ( c5c14
    = ( next @ c5c13 @ top ) ) ).

thf(c6c1_defin,definition,
    ( c6c1
    = ( next @ c6c0 @ top ) ) ).

thf(c6c2_defin,definition,
    ( c6c2
    = ( next @ c6c1 @ top ) ) ).

thf(c6c3_defin,definition,
    ( c6c3
    = ( next @ c6c2 @ top ) ) ).

thf(c6c4_defin,definition,
    ( c6c4
    = ( next @ c6c3 @ top ) ) ).

thf(c6c5_defin,definition,
    ( c6c5
    = ( next @ c6c4 @ top ) ) ).

thf(c6c6_defin,definition,
    ( c6c6
    = ( next @ c6c5 @ top ) ) ).

thf(c6c7_defin,definition,
    ( c6c7
    = ( next @ c6c6 @ top ) ) ).

thf(c6c8_defin,definition,
    ( c6c8
    = ( next @ c6c7 @ top ) ) ).

thf(c6c9_defin,definition,
    ( c6c9
    = ( next @ c6c8 @ top ) ) ).

thf(c6c10_defin,definition,
    ( c6c10
    = ( next @ c6c9 @ top ) ) ).

thf(c6c11_defin,definition,
    ( c6c11
    = ( next @ c6c10 @ top ) ) ).

thf(c6c12_defin,definition,
    ( c6c12
    = ( next @ c6c11 @ top ) ) ).

thf(c6c13_defin,definition,
    ( c6c13
    = ( next @ c6c12 @ top ) ) ).

thf(c6c14_defin,definition,
    ( c6c14
    = ( next @ c6c13 @ top ) ) ).

thf(c7c1_defin,definition,
    ( c7c1
    = ( next @ c7c0 @ top ) ) ).

thf(c7c2_defin,definition,
    ( c7c2
    = ( next @ c7c1 @ top ) ) ).

thf(c7c3_defin,definition,
    ( c7c3
    = ( next @ c7c2 @ top ) ) ).

thf(c7c4_defin,definition,
    ( c7c4
    = ( next @ c7c3 @ top ) ) ).

thf(c7c5_defin,definition,
    ( c7c5
    = ( next @ c7c4 @ top ) ) ).

thf(c7c6_defin,definition,
    ( c7c6
    = ( next @ c7c5 @ top ) ) ).

thf(c7c7_defin,definition,
    ( c7c7
    = ( next @ c7c6 @ top ) ) ).

thf(c7c8_defin,definition,
    ( c7c8
    = ( next @ c7c7 @ top ) ) ).

thf(c7c9_defin,definition,
    ( c7c9
    = ( next @ c7c8 @ top ) ) ).

thf(c7c10_defin,definition,
    ( c7c10
    = ( next @ c7c9 @ top ) ) ).

thf(c7c11_defin,definition,
    ( c7c11
    = ( next @ c7c10 @ top ) ) ).

thf(c7c12_defin,definition,
    ( c7c12
    = ( next @ c7c11 @ top ) ) ).

thf(c7c13_defin,definition,
    ( c7c13
    = ( next @ c7c12 @ top ) ) ).

thf(c7c14_defin,definition,
    ( c7c14
    = ( next @ c7c13 @ top ) ) ).

thf(c8c1_defin,definition,
    ( c8c1
    = ( next @ c8c0 @ top ) ) ).

thf(c8c2_defin,definition,
    ( c8c2
    = ( next @ c8c1 @ top ) ) ).

thf(c8c3_defin,definition,
    ( c8c3
    = ( next @ c8c2 @ top ) ) ).

thf(c8c4_defin,definition,
    ( c8c4
    = ( next @ c8c3 @ top ) ) ).

thf(c8c5_defin,definition,
    ( c8c5
    = ( next @ c8c4 @ top ) ) ).

thf(c8c6_defin,definition,
    ( c8c6
    = ( next @ c8c5 @ top ) ) ).

thf(c8c7_defin,definition,
    ( c8c7
    = ( next @ c8c6 @ top ) ) ).

thf(c8c8_defin,definition,
    ( c8c8
    = ( next @ c8c7 @ top ) ) ).

thf(c8c9_defin,definition,
    ( c8c9
    = ( next @ c8c8 @ top ) ) ).

thf(c8c10_defin,definition,
    ( c8c10
    = ( next @ c8c9 @ top ) ) ).

thf(c8c11_defin,definition,
    ( c8c11
    = ( next @ c8c10 @ top ) ) ).

thf(c8c12_defin,definition,
    ( c8c12
    = ( next @ c8c11 @ top ) ) ).

thf(c8c13_defin,definition,
    ( c8c13
    = ( next @ c8c12 @ top ) ) ).

thf(c8c14_defin,definition,
    ( c8c14
    = ( next @ c8c13 @ top ) ) ).

thf(c9c1_defin,definition,
    ( c9c1
    = ( next @ c9c0 @ top ) ) ).

thf(c9c2_defin,definition,
    ( c9c2
    = ( next @ c9c1 @ top ) ) ).

thf(c9c3_defin,definition,
    ( c9c3
    = ( next @ c9c2 @ top ) ) ).

thf(c9c4_defin,definition,
    ( c9c4
    = ( next @ c9c3 @ top ) ) ).

thf(c9c5_defin,definition,
    ( c9c5
    = ( next @ c9c4 @ top ) ) ).

thf(c9c6_defin,definition,
    ( c9c6
    = ( next @ c9c5 @ top ) ) ).

thf(c9c7_defin,definition,
    ( c9c7
    = ( next @ c9c6 @ top ) ) ).

thf(c9c8_defin,definition,
    ( c9c8
    = ( next @ c9c7 @ top ) ) ).

thf(c9c9_defin,definition,
    ( c9c9
    = ( next @ c9c8 @ top ) ) ).

thf(c9c10_defin,definition,
    ( c9c10
    = ( next @ c9c9 @ top ) ) ).

thf(c9c11_defin,definition,
    ( c9c11
    = ( next @ c9c10 @ top ) ) ).

thf(c9c12_defin,definition,
    ( c9c12
    = ( next @ c9c11 @ top ) ) ).

thf(c9c13_defin,definition,
    ( c9c13
    = ( next @ c9c12 @ top ) ) ).

thf(c9c14_defin,definition,
    ( c9c14
    = ( next @ c9c13 @ top ) ) ).

thf(c10c1_defin,definition,
    ( c10c1
    = ( next @ c10c0 @ top ) ) ).

thf(c10c2_defin,definition,
    ( c10c2
    = ( next @ c10c1 @ top ) ) ).

thf(c10c3_defin,definition,
    ( c10c3
    = ( next @ c10c2 @ top ) ) ).

thf(c10c4_defin,definition,
    ( c10c4
    = ( next @ c10c3 @ top ) ) ).

thf(c10c5_defin,definition,
    ( c10c5
    = ( next @ c10c4 @ top ) ) ).

thf(c10c6_defin,definition,
    ( c10c6
    = ( next @ c10c5 @ top ) ) ).

thf(c10c7_defin,definition,
    ( c10c7
    = ( next @ c10c6 @ top ) ) ).

thf(c10c8_defin,definition,
    ( c10c8
    = ( next @ c10c7 @ top ) ) ).

thf(c10c9_defin,definition,
    ( c10c9
    = ( next @ c10c8 @ top ) ) ).

thf(c10c10_defin,definition,
    ( c10c10
    = ( next @ c10c9 @ top ) ) ).

thf(c10c11_defin,definition,
    ( c10c11
    = ( next @ c10c10 @ top ) ) ).

thf(c10c12_defin,definition,
    ( c10c12
    = ( next @ c10c11 @ top ) ) ).

thf(c10c13_defin,definition,
    ( c10c13
    = ( next @ c10c12 @ top ) ) ).

thf(c10c14_defin,definition,
    ( c10c14
    = ( next @ c10c13 @ top ) ) ).

thf(c11c1_defin,definition,
    ( c11c1
    = ( next @ c11c0 @ top ) ) ).

thf(c11c2_defin,definition,
    ( c11c2
    = ( next @ c11c1 @ top ) ) ).

thf(c11c3_defin,definition,
    ( c11c3
    = ( next @ c11c2 @ top ) ) ).

thf(c11c4_defin,definition,
    ( c11c4
    = ( next @ c11c3 @ top ) ) ).

thf(c11c5_defin,definition,
    ( c11c5
    = ( next @ c11c4 @ top ) ) ).

thf(c11c6_defin,definition,
    ( c11c6
    = ( next @ c11c5 @ top ) ) ).

thf(c11c7_defin,definition,
    ( c11c7
    = ( next @ c11c6 @ top ) ) ).

thf(c11c8_defin,definition,
    ( c11c8
    = ( next @ c11c7 @ top ) ) ).

thf(c11c9_defin,definition,
    ( c11c9
    = ( next @ c11c8 @ top ) ) ).

thf(c11c10_defin,definition,
    ( c11c10
    = ( next @ c11c9 @ top ) ) ).

thf(c11c11_defin,definition,
    ( c11c11
    = ( next @ c11c10 @ top ) ) ).

thf(c11c12_defin,definition,
    ( c11c12
    = ( next @ c11c11 @ top ) ) ).

thf(c11c13_defin,definition,
    ( c11c13
    = ( next @ c11c12 @ top ) ) ).

thf(c11c14_defin,definition,
    ( c11c14
    = ( next @ c11c13 @ top ) ) ).

thf(c12c1_defin,definition,
    ( c12c1
    = ( next @ c12c0 @ top ) ) ).

thf(c12c2_defin,definition,
    ( c12c2
    = ( next @ c12c1 @ top ) ) ).

thf(c12c3_defin,definition,
    ( c12c3
    = ( next @ c12c2 @ top ) ) ).

thf(c12c4_defin,definition,
    ( c12c4
    = ( next @ c12c3 @ top ) ) ).

thf(c12c5_defin,definition,
    ( c12c5
    = ( next @ c12c4 @ top ) ) ).

thf(c12c6_defin,definition,
    ( c12c6
    = ( next @ c12c5 @ top ) ) ).

thf(c12c7_defin,definition,
    ( c12c7
    = ( next @ c12c6 @ top ) ) ).

thf(c12c8_defin,definition,
    ( c12c8
    = ( next @ c12c7 @ top ) ) ).

thf(c12c9_defin,definition,
    ( c12c9
    = ( next @ c12c8 @ top ) ) ).

thf(c12c10_defin,definition,
    ( c12c10
    = ( next @ c12c9 @ top ) ) ).

thf(c12c11_defin,definition,
    ( c12c11
    = ( next @ c12c10 @ top ) ) ).

thf(c12c12_defin,definition,
    ( c12c12
    = ( next @ c12c11 @ top ) ) ).

thf(c12c13_defin,definition,
    ( c12c13
    = ( next @ c12c12 @ top ) ) ).

thf(c12c14_defin,definition,
    ( c12c14
    = ( next @ c12c13 @ top ) ) ).

thf(c13c1_defin,definition,
    ( c13c1
    = ( next @ c13c0 @ top ) ) ).

thf(c13c2_defin,definition,
    ( c13c2
    = ( next @ c13c1 @ top ) ) ).

thf(c13c3_defin,definition,
    ( c13c3
    = ( next @ c13c2 @ top ) ) ).

thf(c13c4_defin,definition,
    ( c13c4
    = ( next @ c13c3 @ top ) ) ).

thf(c13c5_defin,definition,
    ( c13c5
    = ( next @ c13c4 @ top ) ) ).

thf(c13c6_defin,definition,
    ( c13c6
    = ( next @ c13c5 @ top ) ) ).

thf(c13c7_defin,definition,
    ( c13c7
    = ( next @ c13c6 @ top ) ) ).

thf(c13c8_defin,definition,
    ( c13c8
    = ( next @ c13c7 @ top ) ) ).

thf(c13c9_defin,definition,
    ( c13c9
    = ( next @ c13c8 @ top ) ) ).

thf(c13c10_defin,definition,
    ( c13c10
    = ( next @ c13c9 @ top ) ) ).

thf(c13c11_defin,definition,
    ( c13c11
    = ( next @ c13c10 @ top ) ) ).

thf(c13c12_defin,definition,
    ( c13c12
    = ( next @ c13c11 @ top ) ) ).

thf(c13c13_defin,definition,
    ( c13c13
    = ( next @ c13c12 @ top ) ) ).

thf(c13c14_defin,definition,
    ( c13c14
    = ( next @ c13c13 @ top ) ) ).

thf(c14c1_defin,definition,
    ( c14c1
    = ( next @ c14c0 @ top ) ) ).

thf(c14c2_defin,definition,
    ( c14c2
    = ( next @ c14c1 @ top ) ) ).

thf(c14c3_defin,definition,
    ( c14c3
    = ( next @ c14c2 @ top ) ) ).

thf(c14c4_defin,definition,
    ( c14c4
    = ( next @ c14c3 @ top ) ) ).

thf(c14c5_defin,definition,
    ( c14c5
    = ( next @ c14c4 @ top ) ) ).

thf(c14c6_defin,definition,
    ( c14c6
    = ( next @ c14c5 @ top ) ) ).

thf(c14c7_defin,definition,
    ( c14c7
    = ( next @ c14c6 @ top ) ) ).

thf(c14c8_defin,definition,
    ( c14c8
    = ( next @ c14c7 @ top ) ) ).

thf(c14c9_defin,definition,
    ( c14c9
    = ( next @ c14c8 @ top ) ) ).

thf(c14c10_defin,definition,
    ( c14c10
    = ( next @ c14c9 @ top ) ) ).

thf(c14c11_defin,definition,
    ( c14c11
    = ( next @ c14c10 @ top ) ) ).

thf(c14c12_defin,definition,
    ( c14c12
    = ( next @ c14c11 @ top ) ) ).

thf(c14c13_defin,definition,
    ( c14c13
    = ( next @ c14c12 @ top ) ) ).

thf(c14c14_defin,definition,
    ( c14c14
    = ( next @ c14c13 @ top ) ) ).

thf(c15c1_defin,definition,
    ( c15c1
    = ( next @ c15c0 @ top ) ) ).

thf(c15c2_defin,definition,
    ( c15c2
    = ( next @ c15c1 @ top ) ) ).

thf(c15c3_defin,definition,
    ( c15c3
    = ( next @ c15c2 @ top ) ) ).

thf(c15c4_defin,definition,
    ( c15c4
    = ( next @ c15c3 @ top ) ) ).

thf(c15c5_defin,definition,
    ( c15c5
    = ( next @ c15c4 @ top ) ) ).

thf(c15c6_defin,definition,
    ( c15c6
    = ( next @ c15c5 @ top ) ) ).

thf(c15c7_defin,definition,
    ( c15c7
    = ( next @ c15c6 @ top ) ) ).

thf(c15c8_defin,definition,
    ( c15c8
    = ( next @ c15c7 @ top ) ) ).

thf(c15c9_defin,definition,
    ( c15c9
    = ( next @ c15c8 @ top ) ) ).

thf(c15c10_defin,definition,
    ( c15c10
    = ( next @ c15c9 @ top ) ) ).

thf(c15c11_defin,definition,
    ( c15c11
    = ( next @ c15c10 @ top ) ) ).

thf(c15c12_defin,definition,
    ( c15c12
    = ( next @ c15c11 @ top ) ) ).

thf(c15c13_defin,definition,
    ( c15c13
    = ( next @ c15c12 @ top ) ) ).

thf(c15c14_defin,definition,
    ( c15c14
    = ( next @ c15c13 @ top ) ) ).

thf(c16c1_defin,definition,
    ( c16c1
    = ( next @ c16c0 @ top ) ) ).

thf(c16c2_defin,definition,
    ( c16c2
    = ( next @ c16c1 @ top ) ) ).

thf(c16c3_defin,definition,
    ( c16c3
    = ( next @ c16c2 @ top ) ) ).

thf(c16c4_defin,definition,
    ( c16c4
    = ( next @ c16c3 @ top ) ) ).

thf(c16c5_defin,definition,
    ( c16c5
    = ( next @ c16c4 @ top ) ) ).

thf(c16c6_defin,definition,
    ( c16c6
    = ( next @ c16c5 @ top ) ) ).

thf(c16c7_defin,definition,
    ( c16c7
    = ( next @ c16c6 @ top ) ) ).

thf(c16c8_defin,definition,
    ( c16c8
    = ( next @ c16c7 @ top ) ) ).

thf(c16c9_defin,definition,
    ( c16c9
    = ( next @ c16c8 @ top ) ) ).

thf(c16c10_defin,definition,
    ( c16c10
    = ( next @ c16c9 @ top ) ) ).

thf(c16c11_defin,definition,
    ( c16c11
    = ( next @ c16c10 @ top ) ) ).

thf(c16c12_defin,definition,
    ( c16c12
    = ( next @ c16c11 @ top ) ) ).

thf(c16c13_defin,definition,
    ( c16c13
    = ( next @ c16c12 @ top ) ) ).

thf(c16c14_defin,definition,
    ( c16c14
    = ( next @ c16c13 @ top ) ) ).

thf(c17c1_defin,definition,
    ( c17c1
    = ( next @ c17c0 @ top ) ) ).

thf(c17c2_defin,definition,
    ( c17c2
    = ( next @ c17c1 @ top ) ) ).

thf(c17c3_defin,definition,
    ( c17c3
    = ( next @ c17c2 @ top ) ) ).

thf(c17c4_defin,definition,
    ( c17c4
    = ( next @ c17c3 @ top ) ) ).

thf(c17c5_defin,definition,
    ( c17c5
    = ( next @ c17c4 @ top ) ) ).

thf(c17c6_defin,definition,
    ( c17c6
    = ( next @ c17c5 @ top ) ) ).

thf(c17c7_defin,definition,
    ( c17c7
    = ( next @ c17c6 @ top ) ) ).

thf(c17c8_defin,definition,
    ( c17c8
    = ( next @ c17c7 @ top ) ) ).

thf(c17c9_defin,definition,
    ( c17c9
    = ( next @ c17c8 @ top ) ) ).

thf(c17c10_defin,definition,
    ( c17c10
    = ( next @ c17c9 @ top ) ) ).

thf(c17c11_defin,definition,
    ( c17c11
    = ( next @ c17c10 @ top ) ) ).

thf(c17c12_defin,definition,
    ( c17c12
    = ( next @ c17c11 @ top ) ) ).

thf(c17c13_defin,definition,
    ( c17c13
    = ( next @ c17c12 @ top ) ) ).

thf(c17c14_defin,definition,
    ( c17c14
    = ( next @ c17c13 @ top ) ) ).

thf(c18c1_defin,definition,
    ( c18c1
    = ( next @ c18c0 @ top ) ) ).

thf(c18c2_defin,definition,
    ( c18c2
    = ( next @ c18c1 @ top ) ) ).

thf(c18c3_defin,definition,
    ( c18c3
    = ( next @ c18c2 @ top ) ) ).

thf(c18c4_defin,definition,
    ( c18c4
    = ( next @ c18c3 @ top ) ) ).

thf(c18c5_defin,definition,
    ( c18c5
    = ( next @ c18c4 @ top ) ) ).

thf(c18c6_defin,definition,
    ( c18c6
    = ( next @ c18c5 @ top ) ) ).

thf(c18c7_defin,definition,
    ( c18c7
    = ( next @ c18c6 @ top ) ) ).

thf(c18c8_defin,definition,
    ( c18c8
    = ( next @ c18c7 @ top ) ) ).

thf(c18c9_defin,definition,
    ( c18c9
    = ( next @ c18c8 @ top ) ) ).

thf(c18c10_defin,definition,
    ( c18c10
    = ( next @ c18c9 @ top ) ) ).

thf(c18c11_defin,definition,
    ( c18c11
    = ( next @ c18c10 @ top ) ) ).

thf(c18c12_defin,definition,
    ( c18c12
    = ( next @ c18c11 @ top ) ) ).

thf(c18c13_defin,definition,
    ( c18c13
    = ( next @ c18c12 @ top ) ) ).

thf(c18c14_defin,definition,
    ( c18c14
    = ( next @ c18c13 @ top ) ) ).

thf(c19c1_defin,definition,
    ( c19c1
    = ( next @ c19c0 @ top ) ) ).

thf(c19c2_defin,definition,
    ( c19c2
    = ( next @ c19c1 @ top ) ) ).

thf(c19c3_defin,definition,
    ( c19c3
    = ( next @ c19c2 @ top ) ) ).

thf(c19c4_defin,definition,
    ( c19c4
    = ( next @ c19c3 @ top ) ) ).

thf(c19c5_defin,definition,
    ( c19c5
    = ( next @ c19c4 @ top ) ) ).

thf(c19c6_defin,definition,
    ( c19c6
    = ( next @ c19c5 @ top ) ) ).

thf(c19c7_defin,definition,
    ( c19c7
    = ( next @ c19c6 @ top ) ) ).

thf(c19c8_defin,definition,
    ( c19c8
    = ( next @ c19c7 @ top ) ) ).

thf(c19c9_defin,definition,
    ( c19c9
    = ( next @ c19c8 @ top ) ) ).

thf(c19c10_defin,definition,
    ( c19c10
    = ( next @ c19c9 @ top ) ) ).

thf(c19c11_defin,definition,
    ( c19c11
    = ( next @ c19c10 @ top ) ) ).

thf(c19c12_defin,definition,
    ( c19c12
    = ( next @ c19c11 @ top ) ) ).

thf(c19c13_defin,definition,
    ( c19c13
    = ( next @ c19c12 @ top ) ) ).

thf(c19c14_defin,definition,
    ( c19c14
    = ( next @ c19c13 @ top ) ) ).

thf(c20c1_defin,definition,
    ( c20c1
    = ( next @ c20c0 @ top ) ) ).

thf(c20c2_defin,definition,
    ( c20c2
    = ( next @ c20c1 @ top ) ) ).

thf(c20c3_defin,definition,
    ( c20c3
    = ( next @ c20c2 @ top ) ) ).

thf(c20c4_defin,definition,
    ( c20c4
    = ( next @ c20c3 @ top ) ) ).

thf(c20c5_defin,definition,
    ( c20c5
    = ( next @ c20c4 @ top ) ) ).

thf(c20c6_defin,definition,
    ( c20c6
    = ( next @ c20c5 @ top ) ) ).

thf(c20c7_defin,definition,
    ( c20c7
    = ( next @ c20c6 @ top ) ) ).

thf(c20c8_defin,definition,
    ( c20c8
    = ( next @ c20c7 @ top ) ) ).

thf(c20c9_defin,definition,
    ( c20c9
    = ( next @ c20c8 @ top ) ) ).

thf(c20c10_defin,definition,
    ( c20c10
    = ( next @ c20c9 @ top ) ) ).

thf(c20c11_defin,definition,
    ( c20c11
    = ( next @ c20c10 @ top ) ) ).

thf(c20c12_defin,definition,
    ( c20c12
    = ( next @ c20c11 @ top ) ) ).

thf(c20c13_defin,definition,
    ( c20c13
    = ( next @ c20c12 @ top ) ) ).

thf(c20c14_defin,definition,
    ( c20c14
    = ( next @ c20c13 @ top ) ) ).

%----Exercise 5
%----Go from * to +
%----#####################
%----#   #     #     # # #
%----# # # ### ##### # # #
%----# # #   #     # #   #
%----# ####### # ### # # #
%----#         #     # # #
%----# ### ##### ##### # #
%----# #   #   # #     # #
%----# ##### # # # ### # #
%----#*    # # # #   # #+#
%----##### # # # # # # ###
%----#     # # #   # # # #
%----# ####### ##### # # #
%----#       #       #   #
%----#####################

thf(c0c0_axiom,axiom,
    ( ( wall @ c0c0 )
    = $true ) ).

thf(c1c0_axiom,axiom,
    ( ( wall @ c1c0 )
    = $true ) ).

thf(c2c0_axiom,axiom,
    ( ( wall @ c2c0 )
    = $true ) ).

thf(c3c0_axiom,axiom,
    ( ( wall @ c3c0 )
    = $true ) ).

thf(c4c0_axiom,axiom,
    ( ( wall @ c4c0 )
    = $true ) ).

thf(c5c0_axiom,axiom,
    ( ( wall @ c5c0 )
    = $true ) ).

thf(c6c0_axiom,axiom,
    ( ( wall @ c6c0 )
    = $true ) ).

thf(c7c0_axiom,axiom,
    ( ( wall @ c7c0 )
    = $true ) ).

thf(c8c0_axiom,axiom,
    ( ( wall @ c8c0 )
    = $true ) ).

thf(c9c0_axiom,axiom,
    ( ( wall @ c9c0 )
    = $true ) ).

thf(c10c0_axiom,axiom,
    ( ( wall @ c10c0 )
    = $true ) ).

thf(c11c0_axiom,axiom,
    ( ( wall @ c11c0 )
    = $true ) ).

thf(c12c0_axiom,axiom,
    ( ( wall @ c12c0 )
    = $true ) ).

thf(c13c0_axiom,axiom,
    ( ( wall @ c13c0 )
    = $true ) ).

thf(c14c0_axiom,axiom,
    ( ( wall @ c14c0 )
    = $true ) ).

thf(c15c0_axiom,axiom,
    ( ( wall @ c15c0 )
    = $true ) ).

thf(c16c0_axiom,axiom,
    ( ( wall @ c16c0 )
    = $true ) ).

thf(c17c0_axiom,axiom,
    ( ( wall @ c17c0 )
    = $true ) ).

thf(c18c0_axiom,axiom,
    ( ( wall @ c18c0 )
    = $true ) ).

thf(c19c0_axiom,axiom,
    ( ( wall @ c19c0 )
    = $true ) ).

thf(c20c0_axiom,axiom,
    ( ( wall @ c20c0 )
    = $true ) ).

thf(c0c1_axiom,axiom,
    ( ( wall @ c0c1 )
    = $true ) ).

thf(c1c1_axiom,axiom,
    ( ( wall @ c1c1 )
    = $false ) ).

thf(c2c1_axiom,axiom,
    ( ( wall @ c2c1 )
    = $false ) ).

thf(c3c1_axiom,axiom,
    ( ( wall @ c3c1 )
    = $false ) ).

thf(c4c1_axiom,axiom,
    ( ( wall @ c4c1 )
    = $false ) ).

thf(c5c1_axiom,axiom,
    ( ( wall @ c5c1 )
    = $false ) ).

thf(c6c1_axiom,axiom,
    ( ( wall @ c6c1 )
    = $false ) ).

thf(c7c1_axiom,axiom,
    ( ( wall @ c7c1 )
    = $false ) ).

thf(c8c1_axiom,axiom,
    ( ( wall @ c8c1 )
    = $true ) ).

thf(c9c1_axiom,axiom,
    ( ( wall @ c9c1 )
    = $false ) ).

thf(c10c1_axiom,axiom,
    ( ( wall @ c10c1 )
    = $false ) ).

thf(c11c1_axiom,axiom,
    ( ( wall @ c11c1 )
    = $false ) ).

thf(c12c1_axiom,axiom,
    ( ( wall @ c12c1 )
    = $false ) ).

thf(c13c1_axiom,axiom,
    ( ( wall @ c13c1 )
    = $false ) ).

thf(c14c1_axiom,axiom,
    ( ( wall @ c14c1 )
    = $false ) ).

thf(c15c1_axiom,axiom,
    ( ( wall @ c15c1 )
    = $false ) ).

thf(c16c1_axiom,axiom,
    ( ( wall @ c16c1 )
    = $true ) ).

thf(c17c1_axiom,axiom,
    ( ( wall @ c17c1 )
    = $false ) ).

thf(c18c1_axiom,axiom,
    ( ( wall @ c18c1 )
    = $false ) ).

thf(c19c1_axiom,axiom,
    ( ( wall @ c19c1 )
    = $false ) ).

thf(c20c1_axiom,axiom,
    ( ( wall @ c20c1 )
    = $true ) ).

thf(c0c2_axiom,axiom,
    ( ( wall @ c0c2 )
    = $true ) ).

thf(c1c2_axiom,axiom,
    ( ( wall @ c1c2 )
    = $false ) ).

thf(c2c2_axiom,axiom,
    ( ( wall @ c2c2 )
    = $true ) ).

thf(c3c2_axiom,axiom,
    ( ( wall @ c3c2 )
    = $true ) ).

thf(c4c2_axiom,axiom,
    ( ( wall @ c4c2 )
    = $true ) ).

thf(c5c2_axiom,axiom,
    ( ( wall @ c5c2 )
    = $true ) ).

thf(c6c2_axiom,axiom,
    ( ( wall @ c6c2 )
    = $true ) ).

thf(c7c2_axiom,axiom,
    ( ( wall @ c7c2 )
    = $true ) ).

thf(c8c2_axiom,axiom,
    ( ( wall @ c8c2 )
    = $true ) ).

thf(c9c2_axiom,axiom,
    ( ( wall @ c9c2 )
    = $false ) ).

thf(c10c2_axiom,axiom,
    ( ( wall @ c10c2 )
    = $true ) ).

thf(c11c2_axiom,axiom,
    ( ( wall @ c11c2 )
    = $true ) ).

thf(c12c2_axiom,axiom,
    ( ( wall @ c12c2 )
    = $true ) ).

thf(c13c2_axiom,axiom,
    ( ( wall @ c13c2 )
    = $true ) ).

thf(c14c2_axiom,axiom,
    ( ( wall @ c14c2 )
    = $true ) ).

thf(c15c2_axiom,axiom,
    ( ( wall @ c15c2 )
    = $false ) ).

thf(c16c2_axiom,axiom,
    ( ( wall @ c16c2 )
    = $true ) ).

thf(c17c2_axiom,axiom,
    ( ( wall @ c17c2 )
    = $false ) ).

thf(c18c2_axiom,axiom,
    ( ( wall @ c18c2 )
    = $true ) ).

thf(c19c2_axiom,axiom,
    ( ( wall @ c19c2 )
    = $false ) ).

thf(c20c2_axiom,axiom,
    ( ( wall @ c20c2 )
    = $true ) ).

thf(c0c3_axiom,axiom,
    ( ( wall @ c0c3 )
    = $true ) ).

thf(c1c3_axiom,axiom,
    ( ( wall @ c1c3 )
    = $false ) ).

thf(c2c3_axiom,axiom,
    ( ( wall @ c2c3 )
    = $false ) ).

thf(c3c3_axiom,axiom,
    ( ( wall @ c3c3 )
    = $false ) ).

thf(c4c3_axiom,axiom,
    ( ( wall @ c4c3 )
    = $false ) ).

thf(c5c3_axiom,axiom,
    ( ( wall @ c5c3 )
    = $false ) ).

thf(c6c3_axiom,axiom,
    ( ( wall @ c6c3 )
    = $true ) ).

thf(c7c3_axiom,axiom,
    ( ( wall @ c7c3 )
    = $false ) ).

thf(c8c3_axiom,axiom,
    ( ( wall @ c8c3 )
    = $true ) ).

thf(c9c3_axiom,axiom,
    ( ( wall @ c9c3 )
    = $false ) ).

thf(c10c3_axiom,axiom,
    ( ( wall @ c10c3 )
    = $true ) ).

thf(c11c3_axiom,axiom,
    ( ( wall @ c11c3 )
    = $false ) ).

thf(c12c3_axiom,axiom,
    ( ( wall @ c12c3 )
    = $false ) ).

thf(c13c3_axiom,axiom,
    ( ( wall @ c13c3 )
    = $false ) ).

thf(c14c3_axiom,axiom,
    ( ( wall @ c14c3 )
    = $true ) ).

thf(c15c3_axiom,axiom,
    ( ( wall @ c15c3 )
    = $false ) ).

thf(c16c3_axiom,axiom,
    ( ( wall @ c16c3 )
    = $true ) ).

thf(c17c3_axiom,axiom,
    ( ( wall @ c17c3 )
    = $false ) ).

thf(c18c3_axiom,axiom,
    ( ( wall @ c18c3 )
    = $true ) ).

thf(c19c3_axiom,axiom,
    ( ( wall @ c19c3 )
    = $false ) ).

thf(c20c3_axiom,axiom,
    ( ( wall @ c20c3 )
    = $true ) ).

thf(c0c4_axiom,axiom,
    ( ( wall @ c0c4 )
    = $true ) ).

thf(c1c4_axiom,axiom,
    ( ( wall @ c1c4 )
    = $true ) ).

thf(c2c4_axiom,axiom,
    ( ( wall @ c2c4 )
    = $true ) ).

thf(c3c4_axiom,axiom,
    ( ( wall @ c3c4 )
    = $true ) ).

thf(c4c4_axiom,axiom,
    ( ( wall @ c4c4 )
    = $true ) ).

thf(c5c4_axiom,axiom,
    ( ( wall @ c5c4 )
    = $false ) ).

thf(c6c4_axiom,axiom,
    ( ( wall @ c6c4 )
    = $true ) ).

thf(c7c4_axiom,axiom,
    ( ( wall @ c7c4 )
    = $false ) ).

thf(c8c4_axiom,axiom,
    ( ( wall @ c8c4 )
    = $true ) ).

thf(c9c4_axiom,axiom,
    ( ( wall @ c9c4 )
    = $false ) ).

thf(c10c4_axiom,axiom,
    ( ( wall @ c10c4 )
    = $true ) ).

thf(c11c4_axiom,axiom,
    ( ( wall @ c11c4 )
    = $false ) ).

thf(c12c4_axiom,axiom,
    ( ( wall @ c12c4 )
    = $true ) ).

thf(c13c4_axiom,axiom,
    ( ( wall @ c13c4 )
    = $false ) ).

thf(c14c4_axiom,axiom,
    ( ( wall @ c14c4 )
    = $true ) ).

thf(c15c4_axiom,axiom,
    ( ( wall @ c15c4 )
    = $false ) ).

thf(c16c4_axiom,axiom,
    ( ( wall @ c16c4 )
    = $true ) ).

thf(c17c4_axiom,axiom,
    ( ( wall @ c17c4 )
    = $false ) ).

thf(c18c4_axiom,axiom,
    ( ( wall @ c18c4 )
    = $true ) ).

thf(c19c4_axiom,axiom,
    ( ( wall @ c19c4 )
    = $true ) ).

thf(c20c4_axiom,axiom,
    ( ( wall @ c20c4 )
    = $true ) ).

thf(c0c5_axiom,axiom,
    ( ( wall @ c0c5 )
    = $true ) ).

thf(c1c5_axiom,axiom,
    ( ( wall @ c1c5 )
    = $false ) ).

thf(c2c5_axiom,axiom,
    ( ( wall @ c2c5 )
    = $false ) ).

thf(c3c5_axiom,axiom,
    ( ( wall @ c3c5 )
    = $false ) ).

thf(c4c5_axiom,axiom,
    ( ( wall @ c4c5 )
    = $false ) ).

thf(c5c5_axiom,axiom,
    ( ( wall @ c5c5 )
    = $false ) ).

thf(c6c5_axiom,axiom,
    ( ( wall @ c6c5 )
    = $true ) ).

thf(c7c5_axiom,axiom,
    ( ( wall @ c7c5 )
    = $false ) ).

thf(c8c5_axiom,axiom,
    ( ( wall @ c8c5 )
    = $true ) ).

thf(c9c5_axiom,axiom,
    ( ( wall @ c9c5 )
    = $false ) ).

thf(c10c5_axiom,axiom,
    ( ( wall @ c10c5 )
    = $true ) ).

thf(c11c5_axiom,axiom,
    ( ( wall @ c11c5 )
    = $false ) ).

thf(c12c5_axiom,axiom,
    ( ( wall @ c12c5 )
    = $true ) ).

thf(c13c5_axiom,axiom,
    ( ( wall @ c13c5 )
    = $false ) ).

thf(c14c5_axiom,axiom,
    ( ( wall @ c14c5 )
    = $false ) ).

thf(c15c5_axiom,axiom,
    ( ( wall @ c15c5 )
    = $false ) ).

thf(c16c5_axiom,axiom,
    ( ( wall @ c16c5 )
    = $true ) ).

thf(c17c5_axiom,axiom,
    ( ( wall @ c17c5 )
    = $false ) ).

thf(c18c5_axiom,axiom,
    ( ( wall @ c18c5 )
    = $true ) ).

thf(c19c5_axiom,axiom,
    ( ( wall @ c19c5 )
    = $false ) ).

thf(c20c5_axiom,axiom,
    ( ( wall @ c20c5 )
    = $true ) ).

thf(c0c6_axiom,axiom,
    ( ( wall @ c0c6 )
    = $true ) ).

thf(c1c6_axiom,axiom,
    ( ( wall @ c1c6 )
    = $false ) ).

thf(c2c6_axiom,axiom,
    ( ( wall @ c2c6 )
    = $true ) ).

thf(c3c6_axiom,axiom,
    ( ( wall @ c3c6 )
    = $true ) ).

thf(c4c6_axiom,axiom,
    ( ( wall @ c4c6 )
    = $true ) ).

thf(c5c6_axiom,axiom,
    ( ( wall @ c5c6 )
    = $true ) ).

thf(c6c6_axiom,axiom,
    ( ( wall @ c6c6 )
    = $true ) ).

thf(c7c6_axiom,axiom,
    ( ( wall @ c7c6 )
    = $false ) ).

thf(c8c6_axiom,axiom,
    ( ( wall @ c8c6 )
    = $true ) ).

thf(c9c6_axiom,axiom,
    ( ( wall @ c9c6 )
    = $false ) ).

thf(c10c6_axiom,axiom,
    ( ( wall @ c10c6 )
    = $true ) ).

thf(c11c6_axiom,axiom,
    ( ( wall @ c11c6 )
    = $false ) ).

thf(c12c6_axiom,axiom,
    ( ( wall @ c12c6 )
    = $true ) ).

thf(c13c6_axiom,axiom,
    ( ( wall @ c13c6 )
    = $false ) ).

thf(c14c6_axiom,axiom,
    ( ( wall @ c14c6 )
    = $true ) ).

thf(c15c6_axiom,axiom,
    ( ( wall @ c15c6 )
    = $true ) ).

thf(c16c6_axiom,axiom,
    ( ( wall @ c16c6 )
    = $true ) ).

thf(c17c6_axiom,axiom,
    ( ( wall @ c17c6 )
    = $false ) ).

thf(c18c6_axiom,axiom,
    ( ( wall @ c18c6 )
    = $true ) ).

thf(c19c6_axiom,axiom,
    ( ( wall @ c19c6 )
    = $false ) ).

thf(c20c6_axiom,axiom,
    ( ( wall @ c20c6 )
    = $true ) ).

thf(c0c7_axiom,axiom,
    ( ( wall @ c0c7 )
    = $true ) ).

thf(c1c7_axiom,axiom,
    ( ( wall @ c1c7 )
    = $false ) ).

thf(c2c7_axiom,axiom,
    ( ( wall @ c2c7 )
    = $true ) ).

thf(c3c7_axiom,axiom,
    ( ( wall @ c3c7 )
    = $false ) ).

thf(c4c7_axiom,axiom,
    ( ( wall @ c4c7 )
    = $false ) ).

thf(c5c7_axiom,axiom,
    ( ( wall @ c5c7 )
    = $false ) ).

thf(c6c7_axiom,axiom,
    ( ( wall @ c6c7 )
    = $true ) ).

thf(c7c7_axiom,axiom,
    ( ( wall @ c7c7 )
    = $false ) ).

thf(c8c7_axiom,axiom,
    ( ( wall @ c8c7 )
    = $false ) ).

thf(c9c7_axiom,axiom,
    ( ( wall @ c9c7 )
    = $false ) ).

thf(c10c7_axiom,axiom,
    ( ( wall @ c10c7 )
    = $true ) ).

thf(c11c7_axiom,axiom,
    ( ( wall @ c11c7 )
    = $false ) ).

thf(c12c7_axiom,axiom,
    ( ( wall @ c12c7 )
    = $true ) ).

thf(c13c7_axiom,axiom,
    ( ( wall @ c13c7 )
    = $false ) ).

thf(c14c7_axiom,axiom,
    ( ( wall @ c14c7 )
    = $false ) ).

thf(c15c7_axiom,axiom,
    ( ( wall @ c15c7 )
    = $false ) ).

thf(c16c7_axiom,axiom,
    ( ( wall @ c16c7 )
    = $false ) ).

thf(c17c7_axiom,axiom,
    ( ( wall @ c17c7 )
    = $false ) ).

thf(c18c7_axiom,axiom,
    ( ( wall @ c18c7 )
    = $true ) ).

thf(c19c7_axiom,axiom,
    ( ( wall @ c19c7 )
    = $false ) ).

thf(c20c7_axiom,axiom,
    ( ( wall @ c20c7 )
    = $true ) ).

thf(c0c8_axiom,axiom,
    ( ( wall @ c0c8 )
    = $true ) ).

thf(c1c8_axiom,axiom,
    ( ( wall @ c1c8 )
    = $false ) ).

thf(c2c8_axiom,axiom,
    ( ( wall @ c2c8 )
    = $true ) ).

thf(c3c8_axiom,axiom,
    ( ( wall @ c3c8 )
    = $true ) ).

thf(c4c8_axiom,axiom,
    ( ( wall @ c4c8 )
    = $true ) ).

thf(c5c8_axiom,axiom,
    ( ( wall @ c5c8 )
    = $false ) ).

thf(c6c8_axiom,axiom,
    ( ( wall @ c6c8 )
    = $true ) ).

thf(c7c8_axiom,axiom,
    ( ( wall @ c7c8 )
    = $true ) ).

thf(c8c8_axiom,axiom,
    ( ( wall @ c8c8 )
    = $true ) ).

thf(c9c8_axiom,axiom,
    ( ( wall @ c9c8 )
    = $true ) ).

thf(c10c8_axiom,axiom,
    ( ( wall @ c10c8 )
    = $true ) ).

thf(c11c8_axiom,axiom,
    ( ( wall @ c11c8 )
    = $false ) ).

thf(c12c8_axiom,axiom,
    ( ( wall @ c12c8 )
    = $true ) ).

thf(c13c8_axiom,axiom,
    ( ( wall @ c13c8 )
    = $true ) ).

thf(c14c8_axiom,axiom,
    ( ( wall @ c14c8 )
    = $true ) ).

thf(c15c8_axiom,axiom,
    ( ( wall @ c15c8 )
    = $true ) ).

thf(c16c8_axiom,axiom,
    ( ( wall @ c16c8 )
    = $true ) ).

thf(c17c8_axiom,axiom,
    ( ( wall @ c17c8 )
    = $false ) ).

thf(c18c8_axiom,axiom,
    ( ( wall @ c18c8 )
    = $true ) ).

thf(c19c8_axiom,axiom,
    ( ( wall @ c19c8 )
    = $false ) ).

thf(c20c8_axiom,axiom,
    ( ( wall @ c20c8 )
    = $true ) ).

thf(c0c9_axiom,axiom,
    ( ( wall @ c0c9 )
    = $true ) ).

thf(c1c9_axiom,axiom,
    ( ( wall @ c1c9 )
    = $false ) ).

thf(c2c9_axiom,axiom,
    ( ( wall @ c2c9 )
    = $false ) ).

thf(c3c9_axiom,axiom,
    ( ( wall @ c3c9 )
    = $false ) ).

thf(c4c9_axiom,axiom,
    ( ( wall @ c4c9 )
    = $false ) ).

thf(c5c9_axiom,axiom,
    ( ( wall @ c5c9 )
    = $false ) ).

thf(c6c9_axiom,axiom,
    ( ( wall @ c6c9 )
    = $false ) ).

thf(c7c9_axiom,axiom,
    ( ( wall @ c7c9 )
    = $false ) ).

thf(c8c9_axiom,axiom,
    ( ( wall @ c8c9 )
    = $false ) ).

thf(c9c9_axiom,axiom,
    ( ( wall @ c9c9 )
    = $false ) ).

thf(c10c9_axiom,axiom,
    ( ( wall @ c10c9 )
    = $true ) ).

thf(c11c9_axiom,axiom,
    ( ( wall @ c11c9 )
    = $false ) ).

thf(c12c9_axiom,axiom,
    ( ( wall @ c12c9 )
    = $false ) ).

thf(c13c9_axiom,axiom,
    ( ( wall @ c13c9 )
    = $false ) ).

thf(c14c9_axiom,axiom,
    ( ( wall @ c14c9 )
    = $false ) ).

thf(c15c9_axiom,axiom,
    ( ( wall @ c15c9 )
    = $false ) ).

thf(c16c9_axiom,axiom,
    ( ( wall @ c16c9 )
    = $true ) ).

thf(c17c9_axiom,axiom,
    ( ( wall @ c17c9 )
    = $false ) ).

thf(c18c9_axiom,axiom,
    ( ( wall @ c18c9 )
    = $true ) ).

thf(c19c9_axiom,axiom,
    ( ( wall @ c19c9 )
    = $false ) ).

thf(c20c9_axiom,axiom,
    ( ( wall @ c20c9 )
    = $true ) ).

thf(c0c10_axiom,axiom,
    ( ( wall @ c0c10 )
    = $true ) ).

thf(c1c10_axiom,axiom,
    ( ( wall @ c1c10 )
    = $false ) ).

thf(c2c10_axiom,axiom,
    ( ( wall @ c2c10 )
    = $true ) ).

thf(c3c10_axiom,axiom,
    ( ( wall @ c3c10 )
    = $true ) ).

thf(c4c10_axiom,axiom,
    ( ( wall @ c4c10 )
    = $true ) ).

thf(c5c10_axiom,axiom,
    ( ( wall @ c5c10 )
    = $true ) ).

thf(c6c10_axiom,axiom,
    ( ( wall @ c6c10 )
    = $true ) ).

thf(c7c10_axiom,axiom,
    ( ( wall @ c7c10 )
    = $true ) ).

thf(c8c10_axiom,axiom,
    ( ( wall @ c8c10 )
    = $true ) ).

thf(c9c10_axiom,axiom,
    ( ( wall @ c9c10 )
    = $false ) ).

thf(c10c10_axiom,axiom,
    ( ( wall @ c10c10 )
    = $true ) ).

thf(c11c10_axiom,axiom,
    ( ( wall @ c11c10 )
    = $false ) ).

thf(c12c10_axiom,axiom,
    ( ( wall @ c12c10 )
    = $true ) ).

thf(c13c10_axiom,axiom,
    ( ( wall @ c13c10 )
    = $true ) ).

thf(c14c10_axiom,axiom,
    ( ( wall @ c14c10 )
    = $true ) ).

thf(c15c10_axiom,axiom,
    ( ( wall @ c15c10 )
    = $false ) ).

thf(c16c10_axiom,axiom,
    ( ( wall @ c16c10 )
    = $true ) ).

thf(c17c10_axiom,axiom,
    ( ( wall @ c17c10 )
    = $false ) ).

thf(c18c10_axiom,axiom,
    ( ( wall @ c18c10 )
    = $true ) ).

thf(c19c10_axiom,axiom,
    ( ( wall @ c19c10 )
    = $false ) ).

thf(c20c10_axiom,axiom,
    ( ( wall @ c20c10 )
    = $true ) ).

thf(c0c11_axiom,axiom,
    ( ( wall @ c0c11 )
    = $true ) ).

thf(c1c11_axiom,axiom,
    ( ( wall @ c1c11 )
    = $false ) ).

thf(c2c11_axiom,axiom,
    ( ( wall @ c2c11 )
    = $true ) ).

thf(c3c11_axiom,axiom,
    ( ( wall @ c3c11 )
    = $false ) ).

thf(c4c11_axiom,axiom,
    ( ( wall @ c4c11 )
    = $true ) ).

thf(c5c11_axiom,axiom,
    ( ( wall @ c5c11 )
    = $false ) ).

thf(c6c11_axiom,axiom,
    ( ( wall @ c6c11 )
    = $false ) ).

thf(c7c11_axiom,axiom,
    ( ( wall @ c7c11 )
    = $false ) ).

thf(c8c11_axiom,axiom,
    ( ( wall @ c8c11 )
    = $true ) ).

thf(c9c11_axiom,axiom,
    ( ( wall @ c9c11 )
    = $false ) ).

thf(c10c11_axiom,axiom,
    ( ( wall @ c10c11 )
    = $false ) ).

thf(c11c11_axiom,axiom,
    ( ( wall @ c11c11 )
    = $false ) ).

thf(c12c11_axiom,axiom,
    ( ( wall @ c12c11 )
    = $false ) ).

thf(c13c11_axiom,axiom,
    ( ( wall @ c13c11 )
    = $false ) ).

thf(c14c11_axiom,axiom,
    ( ( wall @ c14c11 )
    = $true ) ).

thf(c15c11_axiom,axiom,
    ( ( wall @ c15c11 )
    = $false ) ).

thf(c16c11_axiom,axiom,
    ( ( wall @ c16c11 )
    = $true ) ).

thf(c17c11_axiom,axiom,
    ( ( wall @ c17c11 )
    = $false ) ).

thf(c18c11_axiom,axiom,
    ( ( wall @ c18c11 )
    = $false ) ).

thf(c19c11_axiom,axiom,
    ( ( wall @ c19c11 )
    = $false ) ).

thf(c20c11_axiom,axiom,
    ( ( wall @ c20c11 )
    = $true ) ).

thf(c0c12_axiom,axiom,
    ( ( wall @ c0c12 )
    = $true ) ).

thf(c1c12_axiom,axiom,
    ( ( wall @ c1c12 )
    = $false ) ).

thf(c2c12_axiom,axiom,
    ( ( wall @ c2c12 )
    = $true ) ).

thf(c3c12_axiom,axiom,
    ( ( wall @ c3c12 )
    = $false ) ).

thf(c4c12_axiom,axiom,
    ( ( wall @ c4c12 )
    = $true ) ).

thf(c5c12_axiom,axiom,
    ( ( wall @ c5c12 )
    = $false ) ).

thf(c6c12_axiom,axiom,
    ( ( wall @ c6c12 )
    = $true ) ).

thf(c7c12_axiom,axiom,
    ( ( wall @ c7c12 )
    = $true ) ).

thf(c8c12_axiom,axiom,
    ( ( wall @ c8c12 )
    = $true ) ).

thf(c9c12_axiom,axiom,
    ( ( wall @ c9c12 )
    = $false ) ).

thf(c10c12_axiom,axiom,
    ( ( wall @ c10c12 )
    = $true ) ).

thf(c11c12_axiom,axiom,
    ( ( wall @ c11c12 )
    = $true ) ).

thf(c12c12_axiom,axiom,
    ( ( wall @ c12c12 )
    = $true ) ).

thf(c13c12_axiom,axiom,
    ( ( wall @ c13c12 )
    = $true ) ).

thf(c14c12_axiom,axiom,
    ( ( wall @ c14c12 )
    = $true ) ).

thf(c15c12_axiom,axiom,
    ( ( wall @ c15c12 )
    = $false ) ).

thf(c16c12_axiom,axiom,
    ( ( wall @ c16c12 )
    = $true ) ).

thf(c17c12_axiom,axiom,
    ( ( wall @ c17c12 )
    = $false ) ).

thf(c18c12_axiom,axiom,
    ( ( wall @ c18c12 )
    = $true ) ).

thf(c19c12_axiom,axiom,
    ( ( wall @ c19c12 )
    = $false ) ).

thf(c20c12_axiom,axiom,
    ( ( wall @ c20c12 )
    = $true ) ).

thf(c0c13_axiom,axiom,
    ( ( wall @ c0c13 )
    = $true ) ).

thf(c1c13_axiom,axiom,
    ( ( wall @ c1c13 )
    = $false ) ).

thf(c2c13_axiom,axiom,
    ( ( wall @ c2c13 )
    = $false ) ).

thf(c3c13_axiom,axiom,
    ( ( wall @ c3c13 )
    = $false ) ).

thf(c4c13_axiom,axiom,
    ( ( wall @ c4c13 )
    = $true ) ).

thf(c5c13_axiom,axiom,
    ( ( wall @ c5c13 )
    = $false ) ).

thf(c6c13_axiom,axiom,
    ( ( wall @ c6c13 )
    = $false ) ).

thf(c7c13_axiom,axiom,
    ( ( wall @ c7c13 )
    = $false ) ).

thf(c8c13_axiom,axiom,
    ( ( wall @ c8c13 )
    = $false ) ).

thf(c9c13_axiom,axiom,
    ( ( wall @ c9c13 )
    = $false ) ).

thf(c10c13_axiom,axiom,
    ( ( wall @ c10c13 )
    = $true ) ).

thf(c11c13_axiom,axiom,
    ( ( wall @ c11c13 )
    = $false ) ).

thf(c12c13_axiom,axiom,
    ( ( wall @ c12c13 )
    = $false ) ).

thf(c13c13_axiom,axiom,
    ( ( wall @ c13c13 )
    = $false ) ).

thf(c14c13_axiom,axiom,
    ( ( wall @ c14c13 )
    = $false ) ).

thf(c15c13_axiom,axiom,
    ( ( wall @ c15c13 )
    = $false ) ).

thf(c16c13_axiom,axiom,
    ( ( wall @ c16c13 )
    = $true ) ).

thf(c17c13_axiom,axiom,
    ( ( wall @ c17c13 )
    = $false ) ).

thf(c18c13_axiom,axiom,
    ( ( wall @ c18c13 )
    = $true ) ).

thf(c19c13_axiom,axiom,
    ( ( wall @ c19c13 )
    = $false ) ).

thf(c20c13_axiom,axiom,
    ( ( wall @ c20c13 )
    = $true ) ).

thf(c0c14_axiom,axiom,
    ( ( wall @ c0c14 )
    = $true ) ).

thf(c1c14_axiom,axiom,
    ( ( wall @ c1c14 )
    = $true ) ).

thf(c2c14_axiom,axiom,
    ( ( wall @ c2c14 )
    = $true ) ).

thf(c3c14_axiom,axiom,
    ( ( wall @ c3c14 )
    = $true ) ).

thf(c4c14_axiom,axiom,
    ( ( wall @ c4c14 )
    = $true ) ).

thf(c5c14_axiom,axiom,
    ( ( wall @ c5c14 )
    = $true ) ).

thf(c6c14_axiom,axiom,
    ( ( wall @ c6c14 )
    = $true ) ).

thf(c7c14_axiom,axiom,
    ( ( wall @ c7c14 )
    = $true ) ).

thf(c8c14_axiom,axiom,
    ( ( wall @ c8c14 )
    = $true ) ).

thf(c9c14_axiom,axiom,
    ( ( wall @ c9c14 )
    = $true ) ).

thf(c10c14_axiom,axiom,
    ( ( wall @ c10c14 )
    = $true ) ).

thf(c11c14_axiom,axiom,
    ( ( wall @ c11c14 )
    = $true ) ).

thf(c12c14_axiom,axiom,
    ( ( wall @ c12c14 )
    = $true ) ).

thf(c13c14_axiom,axiom,
    ( ( wall @ c13c14 )
    = $true ) ).

thf(c14c14_axiom,axiom,
    ( ( wall @ c14c14 )
    = $true ) ).

thf(c15c14_axiom,axiom,
    ( ( wall @ c15c14 )
    = $true ) ).

thf(c16c14_axiom,axiom,
    ( ( wall @ c16c14 )
    = $true ) ).

thf(c17c14_axiom,axiom,
    ( ( wall @ c17c14 )
    = $true ) ).

thf(c18c14_axiom,axiom,
    ( ( wall @ c18c14 )
    = $true ) ).

thf(c19c14_axiom,axiom,
    ( ( wall @ c19c14 )
    = $true ) ).

thf(c20c14_axiom,axiom,
    ( ( wall @ c20c14 )
    = $true ) ).

thf(start_axiom,axiom,
    ( ( playerpos @ nomove )
    = c1c5 ) ).

thf(exercise,conjecture,
    ? [M: movelist] :
      ( ( playerpos @ M )
      = c19c5 ) ).

%------------------------------------------------------------------------------
