%------------------------------------------------------------------------------
% File     : PUZ147^1 : TPTP v9.2.1. Released v7.0.0.
% Domain   : Puzzles (Combinatorics)
% Problem  : International Mathematical Olympiad, 1972, Problem 3
% Version  : [Mat16] axioms : Especial.
% English  : Let m and n be arbitrary non-negative integers. Prove that
%            (2m)! (2n)!/m! n! (m+n)! is an integer. (0! = 1.)

% Refs     : [Mat16] Matsuzaki (2016), Email to Geoff Sutcliffe
%          : [MI+16] Matsuzaki et al. (2016), Race against the Teens - Benc
% Source   : [Mat16]
% Names    : IMO-1972-3.p [Mat16]

% Status   : Theorem
% Rating   : ? v7.0.0
% Syntax   : Number of formulae    : 3485 ( 728 unt;1199 typ;   0 def)
%            Number of atoms       : 6397 (2208 equ;   0 cnn)
%            Maximal formula atoms :   20 (   2 avg)
%            Number of connectives : 39617 ( 104   ~; 233   |;1173   &;35980   @)
%                                         (1095 <=>;1032  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   33 (   8 avg)
%            Number arithmetic     : 4475 ( 373 atm;1209 fun; 955 num;1938 var)
%            Number of types       :   40 (  36 usr;   3 ari)
%            Number of type conns  : 2408 (2408   >;   0   *;   0   +;   0  <<)
%            Number of symbols     : 1208 (1165 usr;  62 con; 0-9 aty)
%            Number of variables   : 8057 ( 405   ^;7087   !; 429   ?;8057   :)
%                                         ( 136  !>;   0  ?*;   0  @-;   0  @+)
% SPC      : TH1_THM_EQU_ARI

% Comments : Theory: PA; Score: 7; Author: Jumma Kudo;
%            Generated: 2014-11-27
%------------------------------------------------------------------------------
include('Axioms/MAT001^0.ax').
%------------------------------------------------------------------------------
thf(p,conjecture,
    ! [V_m: $int,V_n: $int] :
      ( ( ( $greatereq @ V_m @ 0 )
        & ( $greatereq @ V_n @ 0 ) )
     => ( 'int.is-divisible-by/2' @ ( $product @ ( 'int.factorial/1' @ ( $product @ 2 @ V_m ) ) @ ( 'int.factorial/1' @ ( $product @ 2 @ V_n ) ) ) @ ( $product @ ( 'int.factorial/1' @ V_n ) @ ( $product @ ( 'int.factorial/1' @ V_m ) @ ( 'int.factorial/1' @ ( $sum @ V_n @ V_m ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
