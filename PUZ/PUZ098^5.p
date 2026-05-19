%------------------------------------------------------------------------------
% File     : PUZ098^5 : TPTP v9.2.1. Bugfixed v6.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0583 [Bro09]

% Status   : Unknown
% Rating   : 1.00 v6.2.0
% Syntax   : Number of formulae    :   17 (   7 unt;   9 typ;   7 def)
%            Number of atoms       :   35 (  19 equ;   0 cnn)
%            Maximal formula atoms :    2 (   4 avg)
%            Number of connectives :   77 (   2   ~;   7   |;   9   &;  57   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   44 (  44   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   9 usr;   1 con; 0-4 aty)
%            Number of variables   :   24 (  11   ^;   8   !;   5   ?;  24   :)
% SPC      : TH0_UNK_EQU_NAR

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

thf(cCKB_FIN_type,type,
    cCKB_FIN: ( $i > $i > $o ) > $o ).

thf(cCKB_INF_type,type,
    cCKB_INF: ( $i > $i > $o ) > $o ).

thf(cCKB_INJ_type,type,
    cCKB_INJ: ( $i > $i > $i > $i > $o ) > $o ).

thf(cCKB_ODD_type,type,
    cCKB_ODD: $i > $o ).

thf(cCKB_XPL_type,type,
    cCKB_XPL: ( $i > $i > $i > $i > $o ) > ( $i > $i > $o ) > $i > $i > $o ).

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

thf(cCKB_FIN_def,definition,
    ( cCKB_FIN
    = ( ^ [Xk: $i > $i > $o] :
          ~ ( cCKB_INF @ Xk ) ) ) ).

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

thf(cCKB_BLACK_def,definition,
    ( cCKB_BLACK
    = ( ^ [Xu: $i,Xv: $i] :
          ( ( ( cCKB_ODD @ Xu )
            & ( cCKB_ODD @ Xv ) )
          | ( ( cCKB_EVEN @ Xu )
            & ( cCKB_EVEN @ Xv ) ) ) ) ) ).

thf(cL7000,conjecture,
    cCKB_FIN @ cCKB_BLACK ).

%------------------------------------------------------------------------------
