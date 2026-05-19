%------------------------------------------------------------------------------
% File     : PUZ100^5 : TPTP v9.2.1. Bugfixed v5.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0596 [Bro09]

% Status   : Theorem
% Rating   : 0.00 v8.2.0, 0.08 v8.1.0, 0.00 v6.0.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.2.0
% Syntax   : Number of formulae    :    4 (   2 unt;   2 typ;   1 def)
%            Number of atoms       :    3 (   1 equ;   0 cnn)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   1   &;   8   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    3 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :    5 (   2   ^;   3   !;   0   ?;   5   :)
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

thf(cCKB_L32000,conjecture,
    ! [Xx: $i] : ( cCKB_E2 @ Xx @ Xx ) ).

%------------------------------------------------------------------------------
