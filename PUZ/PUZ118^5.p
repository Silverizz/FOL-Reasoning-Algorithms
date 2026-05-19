%------------------------------------------------------------------------------
% File     : PUZ118^5 : TPTP v9.2.1. Bugfixed v5.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0778 [Bro09]

% Status   : CounterSatisfiable
% Rating   : 0.67 v9.0.0, 1.00 v8.1.0, 0.40 v7.4.0, 0.50 v7.2.0, 0.33 v6.4.0, 0.67 v6.3.0, 0.33 v5.2.0
% Syntax   : Number of formulae    :   12 (   2 unt;   9 typ;   2 def)
%            Number of atoms       :   19 (  15 equ;   0 cnn)
%            Maximal formula atoms :    2 (   6 avg)
%            Number of connectives :   72 (   1   ~;   3   |;  11   &;  54   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   4 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   11 (  11   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   9 usr;   5 con; 0-4 aty)
%            Number of variables   :   13 (   6   ^;   7   !;   0   ?;  13   :)
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

thf(c5_type,type,
    c5: $i ).

thf(g_type,type,
    g: $i > $i > $i ).

thf(s_type,type,
    s: $i > $i ).

thf(cCKB6_BLACK_type,type,
    cCKB6_BLACK: $i > $i > $o ).

thf(cCKB6_H_type,type,
    cCKB6_H: $i > $i > $i > $i > $o ).

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

thf(cCKB6_L31000,conjecture,
    ! [Xx: $i,Xy: $i,Xu: $i,Xv: $i] :
      ( ( cCKB6_H @ Xx @ Xy @ Xu @ Xv )
     => ( ( g @ Xu @ Xv )
       != c5 ) ) ).

%------------------------------------------------------------------------------
