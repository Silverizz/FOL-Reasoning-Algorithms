%------------------------------------------------------------------------------
% File     : PUZ108^5 : TPTP v9.2.1. Bugfixed v5.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0679 [Bro09]

% Status   : Theorem
% Rating   : 0.44 v9.1.0, 0.38 v9.0.0, 0.50 v8.2.0, 0.69 v8.1.0, 0.55 v7.5.0, 0.29 v7.4.0, 0.22 v7.3.0, 0.33 v7.2.0, 0.38 v7.1.0, 0.25 v7.0.0, 0.14 v6.4.0, 0.17 v6.3.0, 0.20 v6.2.0, 0.29 v6.1.0, 0.14 v6.0.0, 0.29 v5.5.0, 0.33 v5.4.0, 0.40 v5.2.0
% Syntax   : Number of formulae    :    4 (   1 unt;   2 typ;   1 def)
%            Number of atoms       :    4 (   1 equ;   0 cnn)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :   16 (   0   ~;   0   |;   1   &;  12   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    3 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :    6 (   2   ^;   4   !;   0   ?;   6   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
% Bugfixes : v5.2.0 - Added missing type declarations.
%------------------------------------------------------------------------------
thf(s_type,type,
    s: $i > $i ).

thf(cCKB_E2_type,type,
    cCKB_E2: $i > $i > $o ).

thf(cCKB_E2_def,definition,
    ( cCKB_E2
    = ( ^ [Xx: $i,Xy: $i] :
        ! [Xp: $i > $o] :
          ( ( ( Xp @ Xx )
            & ! [Xu: $i] :
                ( ( Xp @ Xu )
               => ( Xp @ ( s @ ( s @ Xu ) ) ) ) )
         => ( Xp @ Xy ) ) ) ) ).

thf(cCKB_L35000,conjecture,
    ! [Xx: $i,Xy: $i] :
      ( ( cCKB_E2 @ Xx @ Xy )
     => ( cCKB_E2 @ ( s @ Xx ) @ ( s @ Xy ) ) ) ).

%------------------------------------------------------------------------------
