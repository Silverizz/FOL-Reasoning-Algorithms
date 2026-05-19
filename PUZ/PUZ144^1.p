%------------------------------------------------------------------------------
% File     : PUZ144^1 : TPTP v9.2.1. Released v6.2.0.
% Domain   : Puzzles
% Problem  : Labyrinth4
% Version  : Especial.
% English  : Take a pathway.

% Refs     : [Cam14] Camarero (2014), Email to Geoff Sutcliffe
% Source   : [Cam14]
% Names    : labyrinth4 [Cam14]

% Status   : Theorem
% Rating   : 0.78 v9.1.0, 0.75 v9.0.0, 0.90 v8.2.0, 0.69 v8.1.0, 0.73 v7.5.0, 0.86 v7.4.0, 0.78 v7.2.0, 0.62 v7.1.0, 0.75 v7.0.0, 0.71 v6.4.0, 0.83 v6.3.0, 0.80 v6.2.0
% Syntax   : Number of formulae    :  228 ( 144 unt;  82 typ;  69 def)
%            Number of atoms       :  290 ( 148 equ;   0 cnn)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :  247 (   1   ~;   0   |;   0   &; 242   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   1 avg)
%            Number of types       :    4 (   3 usr)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   82 (  79 usr;  77 con; 0-2 aty)
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

thf(c30_type,type,
    c30: position ).

thf(c40_type,type,
    c40: position ).

thf(c50_type,type,
    c50: position ).

thf(c60_type,type,
    c60: position ).

thf(c70_type,type,
    c70: position ).

thf(c80_type,type,
    c80: position ).

thf(c90_type,type,
    c90: position ).

thf(c01_type,type,
    c01: position ).

thf(c11_type,type,
    c11: position ).

thf(c21_type,type,
    c21: position ).

thf(c31_type,type,
    c31: position ).

thf(c41_type,type,
    c41: position ).

thf(c51_type,type,
    c51: position ).

thf(c61_type,type,
    c61: position ).

thf(c71_type,type,
    c71: position ).

thf(c81_type,type,
    c81: position ).

thf(c91_type,type,
    c91: position ).

thf(c02_type,type,
    c02: position ).

thf(c12_type,type,
    c12: position ).

thf(c22_type,type,
    c22: position ).

thf(c32_type,type,
    c32: position ).

thf(c42_type,type,
    c42: position ).

thf(c52_type,type,
    c52: position ).

thf(c62_type,type,
    c62: position ).

thf(c72_type,type,
    c72: position ).

thf(c82_type,type,
    c82: position ).

thf(c92_type,type,
    c92: position ).

thf(c03_type,type,
    c03: position ).

thf(c13_type,type,
    c13: position ).

thf(c23_type,type,
    c23: position ).

thf(c33_type,type,
    c33: position ).

thf(c43_type,type,
    c43: position ).

thf(c53_type,type,
    c53: position ).

thf(c63_type,type,
    c63: position ).

thf(c73_type,type,
    c73: position ).

thf(c83_type,type,
    c83: position ).

thf(c93_type,type,
    c93: position ).

thf(c04_type,type,
    c04: position ).

thf(c14_type,type,
    c14: position ).

thf(c24_type,type,
    c24: position ).

thf(c34_type,type,
    c34: position ).

thf(c44_type,type,
    c44: position ).

thf(c54_type,type,
    c54: position ).

thf(c64_type,type,
    c64: position ).

thf(c74_type,type,
    c74: position ).

thf(c84_type,type,
    c84: position ).

thf(c94_type,type,
    c94: position ).

thf(c05_type,type,
    c05: position ).

thf(c15_type,type,
    c15: position ).

thf(c25_type,type,
    c25: position ).

thf(c35_type,type,
    c35: position ).

thf(c45_type,type,
    c45: position ).

thf(c55_type,type,
    c55: position ).

thf(c65_type,type,
    c65: position ).

thf(c75_type,type,
    c75: position ).

thf(c85_type,type,
    c85: position ).

thf(c95_type,type,
    c95: position ).

thf(c06_type,type,
    c06: position ).

thf(c16_type,type,
    c16: position ).

thf(c26_type,type,
    c26: position ).

thf(c36_type,type,
    c36: position ).

thf(c46_type,type,
    c46: position ).

thf(c56_type,type,
    c56: position ).

thf(c66_type,type,
    c66: position ).

thf(c76_type,type,
    c76: position ).

thf(c86_type,type,
    c86: position ).

thf(c96_type,type,
    c96: position ).

thf(c10_defin,definition,
    ( c10
    = ( next @ c00 @ right ) ) ).

thf(c20_defin,definition,
    ( c20
    = ( next @ c10 @ right ) ) ).

thf(c30_defin,definition,
    ( c30
    = ( next @ c20 @ right ) ) ).

thf(c40_defin,definition,
    ( c40
    = ( next @ c30 @ right ) ) ).

thf(c50_defin,definition,
    ( c50
    = ( next @ c40 @ right ) ) ).

thf(c60_defin,definition,
    ( c60
    = ( next @ c50 @ right ) ) ).

thf(c70_defin,definition,
    ( c70
    = ( next @ c60 @ right ) ) ).

thf(c80_defin,definition,
    ( c80
    = ( next @ c70 @ right ) ) ).

thf(c90_defin,definition,
    ( c90
    = ( next @ c80 @ right ) ) ).

thf(c01_defin,definition,
    ( c01
    = ( next @ c00 @ top ) ) ).

thf(c02_defin,definition,
    ( c02
    = ( next @ c01 @ top ) ) ).

thf(c03_defin,definition,
    ( c03
    = ( next @ c02 @ top ) ) ).

thf(c04_defin,definition,
    ( c04
    = ( next @ c03 @ top ) ) ).

thf(c05_defin,definition,
    ( c05
    = ( next @ c04 @ top ) ) ).

thf(c06_defin,definition,
    ( c06
    = ( next @ c05 @ top ) ) ).

thf(c11_defin,definition,
    ( c11
    = ( next @ c10 @ top ) ) ).

thf(c12_defin,definition,
    ( c12
    = ( next @ c11 @ top ) ) ).

thf(c13_defin,definition,
    ( c13
    = ( next @ c12 @ top ) ) ).

thf(c14_defin,definition,
    ( c14
    = ( next @ c13 @ top ) ) ).

thf(c15_defin,definition,
    ( c15
    = ( next @ c14 @ top ) ) ).

thf(c16_defin,definition,
    ( c16
    = ( next @ c15 @ top ) ) ).

thf(c21_defin,definition,
    ( c21
    = ( next @ c20 @ top ) ) ).

thf(c22_defin,definition,
    ( c22
    = ( next @ c21 @ top ) ) ).

thf(c23_defin,definition,
    ( c23
    = ( next @ c22 @ top ) ) ).

thf(c24_defin,definition,
    ( c24
    = ( next @ c23 @ top ) ) ).

thf(c25_defin,definition,
    ( c25
    = ( next @ c24 @ top ) ) ).

thf(c26_defin,definition,
    ( c26
    = ( next @ c25 @ top ) ) ).

thf(c31_defin,definition,
    ( c31
    = ( next @ c30 @ top ) ) ).

thf(c32_defin,definition,
    ( c32
    = ( next @ c31 @ top ) ) ).

thf(c33_defin,definition,
    ( c33
    = ( next @ c32 @ top ) ) ).

thf(c34_defin,definition,
    ( c34
    = ( next @ c33 @ top ) ) ).

thf(c35_defin,definition,
    ( c35
    = ( next @ c34 @ top ) ) ).

thf(c36_defin,definition,
    ( c36
    = ( next @ c35 @ top ) ) ).

thf(c41_defin,definition,
    ( c41
    = ( next @ c40 @ top ) ) ).

thf(c42_defin,definition,
    ( c42
    = ( next @ c41 @ top ) ) ).

thf(c43_defin,definition,
    ( c43
    = ( next @ c42 @ top ) ) ).

thf(c44_defin,definition,
    ( c44
    = ( next @ c43 @ top ) ) ).

thf(c45_defin,definition,
    ( c45
    = ( next @ c44 @ top ) ) ).

thf(c46_defin,definition,
    ( c46
    = ( next @ c45 @ top ) ) ).

thf(c51_defin,definition,
    ( c51
    = ( next @ c50 @ top ) ) ).

thf(c52_defin,definition,
    ( c52
    = ( next @ c51 @ top ) ) ).

thf(c53_defin,definition,
    ( c53
    = ( next @ c52 @ top ) ) ).

thf(c54_defin,definition,
    ( c54
    = ( next @ c53 @ top ) ) ).

thf(c55_defin,definition,
    ( c55
    = ( next @ c54 @ top ) ) ).

thf(c56_defin,definition,
    ( c56
    = ( next @ c55 @ top ) ) ).

thf(c61_defin,definition,
    ( c61
    = ( next @ c60 @ top ) ) ).

thf(c62_defin,definition,
    ( c62
    = ( next @ c61 @ top ) ) ).

thf(c63_defin,definition,
    ( c63
    = ( next @ c62 @ top ) ) ).

thf(c64_defin,definition,
    ( c64
    = ( next @ c63 @ top ) ) ).

thf(c65_defin,definition,
    ( c65
    = ( next @ c64 @ top ) ) ).

thf(c66_defin,definition,
    ( c66
    = ( next @ c65 @ top ) ) ).

thf(c71_defin,definition,
    ( c71
    = ( next @ c70 @ top ) ) ).

thf(c72_defin,definition,
    ( c72
    = ( next @ c71 @ top ) ) ).

thf(c73_defin,definition,
    ( c73
    = ( next @ c72 @ top ) ) ).

thf(c74_defin,definition,
    ( c74
    = ( next @ c73 @ top ) ) ).

thf(c75_defin,definition,
    ( c75
    = ( next @ c74 @ top ) ) ).

thf(c76_defin,definition,
    ( c76
    = ( next @ c75 @ top ) ) ).

thf(c81_defin,definition,
    ( c81
    = ( next @ c80 @ top ) ) ).

thf(c82_defin,definition,
    ( c82
    = ( next @ c81 @ top ) ) ).

thf(c83_defin,definition,
    ( c83
    = ( next @ c82 @ top ) ) ).

thf(c84_defin,definition,
    ( c84
    = ( next @ c83 @ top ) ) ).

thf(c85_defin,definition,
    ( c85
    = ( next @ c84 @ top ) ) ).

thf(c86_defin,definition,
    ( c86
    = ( next @ c85 @ top ) ) ).

thf(c91_defin,definition,
    ( c91
    = ( next @ c90 @ top ) ) ).

thf(c92_defin,definition,
    ( c92
    = ( next @ c91 @ top ) ) ).

thf(c93_defin,definition,
    ( c93
    = ( next @ c92 @ top ) ) ).

thf(c94_defin,definition,
    ( c94
    = ( next @ c93 @ top ) ) ).

thf(c95_defin,definition,
    ( c95
    = ( next @ c94 @ top ) ) ).

thf(c96_defin,definition,
    ( c96
    = ( next @ c95 @ top ) ) ).

%----Exercise 4
%----Go from * to +
%----##########
%----#  #     #
%----# ## ###+#
%----#    # ###
%----### ## # #
%----  #*     #
%----  ########
thf(c00_axiom,axiom,
    ( ( wall @ c00 )
    = $false ) ).

thf(c10_axiom,axiom,
    ( ( wall @ c10 )
    = $false ) ).

thf(c20_axiom,axiom,
    ( ( wall @ c20 )
    = $true ) ).

thf(c30_axiom,axiom,
    ( ( wall @ c30 )
    = $true ) ).

thf(c40_axiom,axiom,
    ( ( wall @ c40 )
    = $true ) ).

thf(c50_axiom,axiom,
    ( ( wall @ c50 )
    = $true ) ).

thf(c60_axiom,axiom,
    ( ( wall @ c60 )
    = $true ) ).

thf(c70_axiom,axiom,
    ( ( wall @ c70 )
    = $true ) ).

thf(c80_axiom,axiom,
    ( ( wall @ c80 )
    = $true ) ).

thf(c90_axiom,axiom,
    ( ( wall @ c90 )
    = $true ) ).

thf(c01_axiom,axiom,
    ( ( wall @ c01 )
    = $false ) ).

thf(c11_axiom,axiom,
    ( ( wall @ c11 )
    = $false ) ).

thf(c21_axiom,axiom,
    ( ( wall @ c21 )
    = $true ) ).

thf(c31_axiom,axiom,
    ( ( wall @ c31 )
    = $false ) ).

thf(c41_axiom,axiom,
    ( ( wall @ c41 )
    = $false ) ).

thf(c51_axiom,axiom,
    ( ( wall @ c51 )
    = $false ) ).

thf(c61_axiom,axiom,
    ( ( wall @ c61 )
    = $false ) ).

thf(c71_axiom,axiom,
    ( ( wall @ c71 )
    = $false ) ).

thf(c81_axiom,axiom,
    ( ( wall @ c81 )
    = $false ) ).

thf(c91_axiom,axiom,
    ( ( wall @ c91 )
    = $true ) ).

thf(c02_axiom,axiom,
    ( ( wall @ c02 )
    = $true ) ).

thf(c12_axiom,axiom,
    ( ( wall @ c12 )
    = $true ) ).

thf(c22_axiom,axiom,
    ( ( wall @ c22 )
    = $true ) ).

thf(c32_axiom,axiom,
    ( ( wall @ c32 )
    = $false ) ).

thf(c42_axiom,axiom,
    ( ( wall @ c42 )
    = $true ) ).

thf(c52_axiom,axiom,
    ( ( wall @ c52 )
    = $true ) ).

thf(c62_axiom,axiom,
    ( ( wall @ c62 )
    = $false ) ).

thf(c72_axiom,axiom,
    ( ( wall @ c72 )
    = $true ) ).

thf(c82_axiom,axiom,
    ( ( wall @ c82 )
    = $false ) ).

thf(c92_axiom,axiom,
    ( ( wall @ c92 )
    = $true ) ).

thf(c03_axiom,axiom,
    ( ( wall @ c03 )
    = $true ) ).

thf(c13_axiom,axiom,
    ( ( wall @ c13 )
    = $false ) ).

thf(c23_axiom,axiom,
    ( ( wall @ c23 )
    = $false ) ).

thf(c33_axiom,axiom,
    ( ( wall @ c33 )
    = $false ) ).

thf(c43_axiom,axiom,
    ( ( wall @ c43 )
    = $false ) ).

thf(c53_axiom,axiom,
    ( ( wall @ c53 )
    = $true ) ).

thf(c63_axiom,axiom,
    ( ( wall @ c63 )
    = $false ) ).

thf(c73_axiom,axiom,
    ( ( wall @ c73 )
    = $true ) ).

thf(c83_axiom,axiom,
    ( ( wall @ c83 )
    = $true ) ).

thf(c93_axiom,axiom,
    ( ( wall @ c93 )
    = $true ) ).

thf(c04_axiom,axiom,
    ( ( wall @ c04 )
    = $true ) ).

thf(c14_axiom,axiom,
    ( ( wall @ c14 )
    = $false ) ).

thf(c24_axiom,axiom,
    ( ( wall @ c24 )
    = $true ) ).

thf(c34_axiom,axiom,
    ( ( wall @ c34 )
    = $true ) ).

thf(c44_axiom,axiom,
    ( ( wall @ c44 )
    = $false ) ).

thf(c54_axiom,axiom,
    ( ( wall @ c54 )
    = $true ) ).

thf(c64_axiom,axiom,
    ( ( wall @ c64 )
    = $true ) ).

thf(c74_axiom,axiom,
    ( ( wall @ c74 )
    = $true ) ).

thf(c84_axiom,axiom,
    ( ( wall @ c84 )
    = $false ) ).

thf(c94_axiom,axiom,
    ( ( wall @ c94 )
    = $true ) ).

thf(c05_axiom,axiom,
    ( ( wall @ c05 )
    = $true ) ).

thf(c15_axiom,axiom,
    ( ( wall @ c15 )
    = $false ) ).

thf(c25_axiom,axiom,
    ( ( wall @ c25 )
    = $false ) ).

thf(c35_axiom,axiom,
    ( ( wall @ c35 )
    = $true ) ).

thf(c45_axiom,axiom,
    ( ( wall @ c45 )
    = $false ) ).

thf(c55_axiom,axiom,
    ( ( wall @ c55 )
    = $false ) ).

thf(c65_axiom,axiom,
    ( ( wall @ c65 )
    = $false ) ).

thf(c75_axiom,axiom,
    ( ( wall @ c75 )
    = $false ) ).

thf(c85_axiom,axiom,
    ( ( wall @ c85 )
    = $false ) ).

thf(c95_axiom,axiom,
    ( ( wall @ c95 )
    = $true ) ).

thf(c06_axiom,axiom,
    ( ( wall @ c06 )
    = $true ) ).

thf(c16_axiom,axiom,
    ( ( wall @ c16 )
    = $true ) ).

thf(c26_axiom,axiom,
    ( ( wall @ c26 )
    = $true ) ).

thf(c36_axiom,axiom,
    ( ( wall @ c36 )
    = $true ) ).

thf(c46_axiom,axiom,
    ( ( wall @ c46 )
    = $true ) ).

thf(c56_axiom,axiom,
    ( ( wall @ c56 )
    = $true ) ).

thf(c66_axiom,axiom,
    ( ( wall @ c66 )
    = $true ) ).

thf(c76_axiom,axiom,
    ( ( wall @ c76 )
    = $true ) ).

thf(c86_axiom,axiom,
    ( ( wall @ c86 )
    = $true ) ).

thf(c96_axiom,axiom,
    ( ( wall @ c96 )
    = $true ) ).

thf(start_axiom,axiom,
    ( ( playerpos @ nomove )
    = c31 ) ).

thf(exercise,conjecture,
    ? [M: movelist] :
      ( ( playerpos @ M )
      = c84 ) ).

%------------------------------------------------------------------------------
