%------------------------------------------------------------------------------
% File     : PUZ081^3 : TPTP v9.2.1. Released v3.6.0.
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
% Rating   : 0.17 v9.1.0, 0.12 v9.0.0, 0.17 v8.2.0, 0.18 v8.1.0, 0.17 v7.4.0, 0.22 v7.3.0, 0.20 v7.2.0, 0.25 v7.1.0, 0.29 v7.0.0, 0.25 v6.4.0, 0.29 v6.3.0, 0.33 v6.2.0, 0.17 v6.1.0, 0.33 v5.5.0, 0.00 v5.3.0, 0.50 v5.2.0, 0.25 v5.1.0, 0.00 v3.7.0
% Syntax   : Number of formulae    :   11 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :   13 (   0 equ;   0 cnn)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   27 (   3   ~;   0   |;   4   &;  17   @)
%                                         (   0 <=>;   2  =>;   0  <=;   1 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :    7 (   0   ^;   5   !;   2   ?;   7   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : See http://philosophy.hku.hk/think/logic/knight.php
%          : This version finds a knight and a knave
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

%----Mel says `Neither Zoey nor I are knaves.'
thf(mel_speaks,axiom,
    ( says @ mel
    @ ( ~ ( knave @ zoey )
      & ~ ( knave @ mel ) ) ) ).

%----What are Zoey and Mel
thf(who_is_knight_and_knave,conjecture,
    ? [Knight: $i,Knave: $i] :
      ( ( knight @ Knight )
      & ( knave @ Knave ) ) ).

%------------------------------------------------------------------------------
