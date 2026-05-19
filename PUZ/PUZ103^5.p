%------------------------------------------------------------------------------
% File     : PUZ103^5 : TPTP v9.2.1. Bugfixed v5.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0623 [Bro09]

% Status   : Theorem
% Rating   : 0.00 v8.2.0, 0.15 v8.1.0, 0.09 v7.5.0, 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.2.0
% Syntax   : Number of formulae    :    5 (   1 unt;   3 typ;   1 def)
%            Number of atoms       :    4 (   1 equ;   0 cnn)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :   12 (   0   ~;   0   |;   1   &;   8   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    4 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :    4 (   1   ^;   3   !;   0   ?;   4   :)
% SPC      : TH0_THM_EQU_NAR

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

thf(cCKB6_L3000,conjecture,
    ! [Xx: $i] :
      ( ( cCKB6_NUM @ Xx )
     => ( cCKB6_NUM @ ( s @ Xx ) ) ) ).

%------------------------------------------------------------------------------
