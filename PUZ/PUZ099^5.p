%------------------------------------------------------------------------------
% File     : PUZ099^5 : TPTP v9.2.1. Bugfixed v5.2.0.
% Domain   : Puzzles
% Problem  : TPS problem from CHECKERBOARD-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0591 [Bro09]

% Status   : CounterSatisfiable
% Rating   : 0.67 v9.0.0, 1.00 v8.2.0, 0.75 v8.1.0, 0.40 v7.4.0, 0.50 v7.2.0, 0.33 v6.4.0, 0.67 v6.3.0, 0.33 v5.2.0
% Syntax   : Number of formulae    :    6 (   2 unt;   4 typ;   1 def)
%            Number of atoms       :    3 (   1 equ;   0 cnn)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :   12 (   1   ~;   0   |;   1   &;   8   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   4 usr;   2 con; 0-2 aty)
%            Number of variables   :    4 (   2   ^;   2   !;   0   ?;   4   :)
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

thf(cCKB_L38000,conjecture,
    ~ ( cCKB_E2 @ c1 @ c2 ) ).

%------------------------------------------------------------------------------
