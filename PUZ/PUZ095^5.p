%------------------------------------------------------------------------------
% File     : PUZ095^5 : TPTP v9.2.1. Bugfixed v6.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0580 [Bro09]

% Status   : CounterSatisfiable
% Rating   : 0.67 v9.0.0, 1.00 v8.1.0, 0.60 v7.5.0, 0.40 v7.4.0, 0.50 v7.2.0, 0.33 v6.4.0, 0.67 v6.3.0, 0.33 v6.2.0
% Syntax   : Number of formulae    :   11 (   4 unt;   6 typ;   4 def)
%            Number of atoms       :   16 (   8 equ;   0 cnn)
%            Maximal formula atoms :    2 (   3 avg)
%            Number of connectives :   52 (   1   ~;   0   |;   9   &;  38   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   39 (  39   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   6 usr;   1 con; 0-4 aty)
%            Number of variables   :   24 (   8   ^;  11   !;   5   ?;  24   :)
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

thf(cCKB6_BLACK_type,type,
    cCKB6_BLACK: $i > $i > $o ).

thf(cCKB_INF_type,type,
    cCKB_INF: ( $i > $i > $o ) > $o ).

thf(cCKB_INJ_type,type,
    cCKB_INJ: ( $i > $i > $i > $i > $o ) > $o ).

thf(cCKB_XPL_type,type,
    cCKB_XPL: ( $i > $i > $i > $i > $o ) > ( $i > $i > $o ) > $i > $i > $o ).

thf(cCKB6_BLACK_def,definition,
    ( cCKB6_BLACK
    = ( ^ [Xu: $i,Xv: $i] :
        ! [Xw: $i > $i > $o] :
          ( ( ( Xw @ c1 @ c1 )
            & ! [Xj: $i,Xk: $i] :
                ( ( Xw @ Xj @ Xk )
               => ( ( Xw @ ( s @ ( s @ Xj ) ) @ Xk )
                  & ( Xw @ ( s @ Xj ) @ ( s @ Xk ) ) ) ) )
         => ( Xw @ Xu @ Xv ) ) ) ) ).

thf(cCKB_INJ_def,definition,
    ( cCKB_INJ
    = ( ^ [Xh: $i > $i > $i > $i > $o] :
        ! [Xx1: $i,Xy1: $i,Xx2: $i,Xy2: $i,Xu: $i,Xv: $i] :
          ( ( ( Xh @ Xx1 @ Xy1 @ Xu @ Xv )
            & ( Xh @ Xx2 @ Xy2 @ Xu @ Xv ) )
         => ( ( Xx1 = Xx2 )
            & ( Xy1 = Xy2 ) ) ) ) ) ).

thf(cCKB_XPL_def,definition,
    ( cCKB_XPL
    = ( ^ [Xh: $i > $i > $i > $i > $o,Xk: $i > $i > $o,Xm: $i,Xn: $i] :
          ( ( Xk @ Xm @ Xn )
          & ! [Xx: $i,Xy: $i] :
              ( ( Xk @ Xx @ Xy )
             => ? [Xu: $i,Xv: $i] :
                  ( ( Xh @ Xx @ Xy @ Xu @ Xv )
                  & ( Xk @ Xu @ Xv )
                  & ~ ( ( Xu = Xm )
                      & ( Xv = Xn ) ) ) ) ) ) ) ).

thf(cCKB_INF_def,definition,
    ( cCKB_INF
    = ( ^ [Xk: $i > $i > $o] :
        ? [Xh: $i > $i > $i > $i > $o,Xm: $i,Xn: $i] :
          ( ( cCKB_INJ @ Xh )
          & ( cCKB_XPL @ Xh @ Xk @ Xm @ Xn ) ) ) ) ).

thf(cCKB6_L50000,conjecture,
    cCKB_INF @ cCKB6_BLACK ).

%------------------------------------------------------------------------------
