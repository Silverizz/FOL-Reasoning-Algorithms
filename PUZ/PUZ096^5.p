%------------------------------------------------------------------------------
% File     : PUZ096^5 : TPTP v9.2.1. Bugfixed v5.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0581 [Bro09]

% Status   : CounterSatisfiable
% Rating   : 0.67 v9.0.0, 1.00 v8.1.0, 0.80 v7.4.0, 0.75 v7.2.0, 0.67 v5.4.0, 0.33 v5.2.0
% Syntax   : Number of formulae    :   13 (   3 unt;   9 typ;   3 def)
%            Number of atoms       :   23 (  17 equ;   0 cnn)
%            Maximal formula atoms :    2 (   5 avg)
%            Number of connectives :   76 (   0   ~;   3   |;  13   &;  57   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   20 (  20   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   9 usr;   4 con; 0-4 aty)
%            Number of variables   :   16 (   7   ^;   9   !;   0   ?;  16   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
% Bugfixes : v5.2.0 - Added missing type declarations.
%------------------------------------------------------------------------------
thf(c1_type,type,
    c1: $i ).

thf(c2_type,type,
    c2: $i ).

thf(c3_type,type,
    c3: $i ).

thf(c4_type,type,
    c4: $i ).

thf(g_type,type,
    g: $i > $i > $i ).

thf(s_type,type,
    s: $i > $i ).

thf(cCKB6_BLACK_type,type,
    cCKB6_BLACK: $i > $i > $o ).

thf(cCKB6_H_type,type,
    cCKB6_H: $i > $i > $i > $i > $o ).

thf(cCKB_INJ_type,type,
    cCKB_INJ: ( $i > $i > $i > $i > $o ) > $o ).

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

thf(cCKB6_H_def,definition,
    ( cCKB6_H
    = ( ^ [Xx: $i,Xy: $i,Xu: $i,Xv: $i] :
          ( ( cCKB6_BLACK @ Xx @ Xy )
          & ( ( ( ( g @ ( s @ ( s @ Xx ) ) @ ( s @ Xy ) )
                = c1 )
              & ( Xu
                = ( s @ ( s @ ( s @ Xx ) ) ) )
              & ( Xv
                = ( s @ Xy ) ) )
            | ( ( ( g @ ( s @ ( s @ Xx ) ) @ ( s @ Xy ) )
                = c2 )
              & ( Xu
                = ( s @ ( s @ Xx ) ) )
              & ( Xv
                = ( s @ ( s @ Xy ) ) ) )
            | ( ( ( g @ ( s @ ( s @ Xx ) ) @ ( s @ Xy ) )
                = c3 )
              & ( Xu
                = ( s @ Xx ) )
              & ( Xv
                = ( s @ Xy ) ) )
            | ( ( ( g @ ( s @ ( s @ Xx ) ) @ ( s @ Xy ) )
                = c4 )
              & ( Xu
                = ( s @ ( s @ Xx ) ) )
              & ( Xv = Xy ) ) ) ) ) ) ).

thf(cCKB_INJ_def,definition,
    ( cCKB_INJ
    = ( ^ [Xh: $i > $i > $i > $i > $o] :
        ! [Xx1: $i,Xy1: $i,Xx2: $i,Xy2: $i,Xu: $i,Xv: $i] :
          ( ( ( Xh @ Xx1 @ Xy1 @ Xu @ Xv )
            & ( Xh @ Xx2 @ Xy2 @ Xu @ Xv ) )
         => ( ( Xx1 = Xx2 )
            & ( Xy1 = Xy2 ) ) ) ) ) ).

thf(cCKB6_L25000,conjecture,
    cCKB_INJ @ cCKB6_H ).

%------------------------------------------------------------------------------
