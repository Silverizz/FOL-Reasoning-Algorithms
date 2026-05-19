%------------------------------------------------------------------------------
% File     : PUZ148^1 : TPTP v9.2.1. Released v7.0.0.
% Domain   : Puzzles (Combinatorics)
% Problem  : International Mathematical Olympiad, 1974, Problem 3
% Version  : [Mat16] axioms : Especial.
% English  : Prove that the number sum_{k=0}^n binom{2n+1}{2k+1} 2^{3k} is 
%            not divisible by 5 for any integer n geq 0.

% Refs     : [Mat16] Matsuzaki (2016), Email to Geoff Sutcliffe
%          : [MI+16] Matsuzaki et al. (2016), Race against the Teens - Benc
% Source   : [Mat16]
% Names    : IMO-1974-3.p [Mat16]

% Status   : Theorem
% Rating   : ? v7.0.0
% Syntax   : Number of formulae    : 3485 ( 728 unt;1199 typ;   0 def)
%            Number of atoms       : 6408 (2208 equ;   0 cnn)
%            Maximal formula atoms :   20 (   2 avg)
%            Number of connectives : 39618 ( 105   ~; 233   |;1172   &;35981   @)
%                                         (1095 <=>;1032  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   33 (   8 avg)
%            Number arithmetic     : 4479 ( 372 atm;1209 fun; 960 num;1938 var)
%            Number of types       :   40 (  36 usr;   3 ari)
%            Number of type conns  : 2408 (2408   >;   0   *;   0   +;   0  <<)
%            Number of symbols     : 1211 (1168 usr;  65 con; 0-9 aty)
%            Number of variables   : 8057 ( 406   ^;7086   !; 429   ?;8057   :)
%                                         ( 136  !>;   0  ?*;   0  @-;   0  @+)
% SPC      : TH1_THM_EQU_ARI

% Comments : Theory: PA; Score: 8; Author: Jumma Kudo;
%            Generated: 2014-11-27
%------------------------------------------------------------------------------
include('Axioms/MAT001^0.ax').
%------------------------------------------------------------------------------
thf(p,conjecture,
    ! [V_n: $int] :
      ( ( $lesseq @ 0 @ V_n )
     => ~ ( 'int.is-divisible-by/2'
          @ ( 'int.sum/1'
            @ ( 'int.finseq/3'
              @ ^ [V_k: $int] : ( $product @ ( 'int.combination/2' @ ( $sum @ ( $product @ 2 @ V_n ) @ 1 ) @ ( $sum @ ( $product @ 2 @ V_k ) @ 1 ) ) @ ( 'int.^/2' @ 2 @ ( $product @ 3 @ V_k ) ) )
              @ 0
              @ V_n ) )
          @ 5 ) ) ).

%------------------------------------------------------------------------------
