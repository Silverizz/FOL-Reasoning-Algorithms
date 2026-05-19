%------------------------------------------------------------------------------
% File     : PUZ081^2 : TPTP v9.2.1. Bugfixed v7.1.0.
% Domain   : Puzzles
% Problem  : 1 of http://philosophy.hku.hk/think/logic/knight.php
% Version  : Especial.
% English  : A very special island is inhabited only by knights and knaves.
%            Knights always tell the truth, and knaves always lie. You meet two
%            inhabitants: Zoey and Mel. Zoey tells you that Mel is a knave. Mel
%            says, `Neither Zoey nor I are knaves'. Who is a knight and who is
%            a knave?

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.11 v9.1.0, 0.12 v9.0.0, 0.20 v8.2.0, 0.15 v8.1.0, 0.09 v7.5.0, 0.14 v7.4.0, 0.22 v7.2.0, 0.12 v7.1.0
% Syntax   : Number of formulae    :   11 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :   19 (   4 equ;   0 cnn)
%            Maximal formula atoms :    4 (   3 avg)
%            Number of connectives :   31 (   3   ~;   2   |;   6   &;  17   @)
%                                         (   0 <=>;   2  =>;   0  <=;   1 <~>)
%            Maximal formula depth :    7 (   6 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :    7 (   0   ^;   5   !;   2   ?;   7   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : See http://philosophy.hku.hk/think/logic/knight.php
%          : This version finds the types of Zoey and Mel
% Bugfixes : v7.1.0 - Fixed the conjecture.
%------------------------------------------------------------------------------
%----Type declarations
thf(mel_type,type,
    mel: $i ).

thf(zoey_type,type,
    zoey: $i ).

thf(knight_type,type,
    knight: $i > $o ).

thf(knave_type,type,
    knave: $i > $o ).

thf(says_type,type,
    says: $i > $o > $o ).

%----A very special island is inhabited only by knights and knaves.
thf(knights_xor_knaves,axiom,
    ! [P: $i] :
      ( ( knight @ P )
    <~> ( knave @ P ) ) ).

%----Knights always tell the truth
thf(knights_tell_truth,axiom,
    ! [P: $i,S: $o] :
      ( ( ( knight @ P )
        & ( says @ P @ S ) )
     => S ) ).

%----Knaves always lie
thf(knaves_lie,axiom,
    ! [P: $i,S: $o] :
      ( ( ( knave @ P )
        & ( says @ P @ S ) )
     => ~ S ) ).

%----Zoey says 'Mel is a knave'
thf(zoey_speaks,axiom,
    says @ zoey @ ( knave @ mel ) ).

%----Mel says 'Neither Zoey nor I are knaves.'
thf(mel_speaks,axiom,
    ( says @ mel
    @ ( ~ ( knave @ zoey )
      & ~ ( knave @ mel ) ) ) ).

%----What are Zoey and Mel
thf(what_are_zoey_and_mel,conjecture,
    ? [TZ: $i > $o,TM: $i > $o] :
      ( ( ( TZ = knight )
        | ( TZ = knave ) )
      & ( ( TM = knight )
        | ( TM = knave ) )
      & ( TZ @ zoey )
      & ( TM @ mel ) ) ).

%------------------------------------------------------------------------------
