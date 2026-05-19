%------------------------------------------------------------------------------
% File     : PUZ097^5 : TPTP v9.2.1. Bugfixed v6.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0582 [Bro09]

% Status   : CounterSatisfiable
% Rating   : 0.33 v9.0.0, 0.25 v8.2.0, 0.50 v8.1.0, 0.60 v7.5.0, 0.40 v7.4.0, 0.50 v7.2.0, 0.33 v6.2.0
% Syntax   : Number of formulae    :   17 (   5 unt;  11 typ;   5 def)
%            Number of atoms       :   39 (  27 equ;   0 cnn)
%            Maximal formula atoms :    2 (   6 avg)
%            Number of connectives :   99 (   0   ~;  10   |;  13   &;  75   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   20 (  20   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (  11 usr;   4 con; 0-4 aty)
%            Number of variables   :   15 (   9   ^;   6   !;   0   ?;  15   :)
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

thf(cCKB_BLACK_type,type,
    cCKB_BLACK: $i > $i > $o ).

thf(cCKB_EVEN_type,type,
    cCKB_EVEN: $i > $o ).

thf(cCKB_H_type,type,
    cCKB_H: $i > $i > $i > $i > $o ).

thf(cCKB_INJ_type,type,
    cCKB_INJ: ( $i > $i > $i > $i > $o ) > $o ).

thf(cCKB_ODD_type,type,
    cCKB_ODD: $i > $o ).

thf(cCKB_INJ_def,definition,
    ( cCKB_INJ
    = ( ^ [Xh: $i > $i > $i > $i > $o] :
        ! [Xx1: $i,Xy1: $i,Xx2: $i,Xy2: $i,Xu: $i,Xv: $i] :
          ( ( ( Xh @ Xx1 @ Xy1 @ Xu @ Xv )
            & ( Xh @ Xx2 @ Xy2 @ Xu @ Xv ) )
         => ( ( Xx1 = Xx2 )
            & ( Xy1 = Xy2 ) ) ) ) ) ).

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

thf(cCKB_H_def,definition,
    ( cCKB_H
    = ( ^ [Xx: $i,Xy: $i,Xu: $i,Xv: $i] :
          ( ( cCKB_BLACK @ Xx @ Xy )
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

thf(cL2500,conjecture,
    cCKB_INJ @ cCKB_H ).

%------------------------------------------------------------------------------
