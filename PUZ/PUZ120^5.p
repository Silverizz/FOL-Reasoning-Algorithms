%------------------------------------------------------------------------------
% File     : PUZ120^5 : TPTP v9.2.1. Bugfixed v5.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0801 [Bro09]

% Status   : CounterSatisfiable
% Rating   : 0.67 v9.0.0, 1.00 v8.1.0, 0.40 v7.4.0, 0.50 v7.2.0, 0.33 v6.4.0, 0.67 v6.3.0, 0.33 v5.2.0
% Syntax   : Number of formulae    :    5 (   1 unt;   3 typ;   1 def)
%            Number of atoms       :    6 (   3 equ;   0 cnn)
%            Maximal formula atoms :    4 (   3 avg)
%            Number of connectives :   19 (   0   ~;   0   |;   3   &;  13   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :    5 (   1   ^;   4   !;   0   ?;   5   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
% Bugfixes : v5.2.0 - Added missing type declarations.
%------------------------------------------------------------------------------
thf(c1_type,type,
    c1: $i ).

thf(s_type,type,
    s: $i > $i ).

thf(cCKB6_NUM_type,type,
    cCKB6_NUM: $i > $o ).

thf(cCKB6_NUM_def,definition,
    ( cCKB6_NUM
    = ( ^ [Xx: $i] :
        ! [Xp: $i > $o] :
          ( ( ( Xp @ c1 )
            & ! [Xw: $i] :
                ( ( Xp @ Xw )
               => ( Xp @ ( s @ Xw ) ) ) )
         => ( Xp @ Xx ) ) ) ) ).

thf(cCKB6_L26000,conjecture,
    ! [Xx: $i,Xy: $i] :
      ( ( ( cCKB6_NUM @ Xx )
        & ( cCKB6_NUM @ Xy )
        & ( ( s @ ( s @ ( s @ Xx ) ) )
          = ( s @ ( s @ ( s @ Xy ) ) ) ) )
     => ( Xx = Xy ) ) ).

%------------------------------------------------------------------------------
