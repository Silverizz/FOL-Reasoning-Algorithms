%------------------------------------------------------------------------------
% File     : PUZ121^5 : TPTP v9.2.1. Bugfixed v6.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0815 [Bro09]

% Status   : CounterSatisfiable
% Rating   : 0.33 v9.0.0, 0.25 v8.1.0, 0.40 v7.4.0, 0.50 v7.2.0, 0.33 v6.2.0
% Syntax   : Number of formulae    :    9 (   3 unt;   5 typ;   3 def)
%            Number of atoms       :   22 (  11 equ;   0 cnn)
%            Maximal formula atoms :    4 (   5 avg)
%            Number of connectives :   58 (   0   ~;   7   |;   4   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   3 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   5   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :    6 (   4   ^;   2   !;   0   ?;   6   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
% Bugfixes : v5.2.0 - Added missing type declarations.
%          : v6.2.0 - Reordered definitions.
%------------------------------------------------------------------------------
thf(c1_type,type,
    c1: $i ).

thf(s_type,type,
    s: $i > $i ).

thf(cCKB_BLACK_type,type,
    cCKB_BLACK: $i > $i > $o ).

thf(cCKB_EVEN_type,type,
    cCKB_EVEN: $i > $o ).

thf(cCKB_ODD_type,type,
    cCKB_ODD: $i > $o ).

thf(cCKB_EVEN_def,definition,
    ( cCKB_EVEN
    = ( ^ [Xx: $i] :
          ( ( Xx
            = ( s @ c1 ) )
          | ( Xx
            = ( s @ ( s @ ( s @ c1 ) ) ) )
          | ( Xx
            = ( s @ ( s @ ( s @ ( s @ ( s @ c1 ) ) ) ) ) )
          | ( Xx
            = ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ c1 ) ) ) ) ) ) ) ) ) ) ) ).

thf(cCKB_ODD_def,definition,
    ( cCKB_ODD
    = ( ^ [Xx: $i] :
          ( ( Xx = c1 )
          | ( Xx
            = ( s @ ( s @ c1 ) ) )
          | ( Xx
            = ( s @ ( s @ ( s @ ( s @ c1 ) ) ) ) )
          | ( Xx
            = ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ c1 ) ) ) ) ) ) ) ) ) ) ).

thf(cCKB_BLACK_def,definition,
    ( cCKB_BLACK
    = ( ^ [Xu: $i,Xv: $i] :
          ( ( ( cCKB_ODD @ Xu )
            & ( cCKB_ODD @ Xv ) )
          | ( ( cCKB_EVEN @ Xu )
            & ( cCKB_EVEN @ Xv ) ) ) ) ) ).

thf(cCKB_L11000,conjecture,
    ! [Xu: $i,Xv: $i] :
      ( ( cCKB_BLACK @ Xu @ Xv )
     => ( ( cCKB_BLACK @ ( s @ Xu ) @ ( s @ Xv ) )
        & ( cCKB_BLACK @ Xu @ ( s @ ( s @ Xv ) ) )
        & ( cCKB_BLACK @ ( s @ ( s @ Xu ) ) @ Xv ) ) ) ).

%------------------------------------------------------------------------------
