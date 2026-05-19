%------------------------------------------------------------------------------
% File     : PUZ083_8 : TPTP v9.2.1. Released v8.0.0.
% Domain   : Puzzles
% Problem  : Peter the untrutfxul
% Version  : Especial.
% English  : Peter says that everything he says is false. Show that not
%            everything Peter says is true.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v8.1.0
% Syntax   : Number of formulae    :    4 (   2 unt;   2 typ;   0 def)
%            Number of atoms       :    3 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    4 (   2   ~;   0   |;   0   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    5 (   1 fml;   4 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    2 (   2   !;   0   ?;   2   :)
% SPC      : TX0_THM_NEQ_NAR

% Comments : Translated to TXF from the THF version.
%------------------------------------------------------------------------------
%----Signature
tff(peter,type,
    peter: $i ).

tff(says,type,
    says: ( $i * $o ) > $o ).

%----Axioms
tff(ax1,axiom,
    says(peter,
      ! [X: $o] :
        ( says(peter,(X))
       => ~ (X) )) ).

tff(thm,conjecture,
    ~ ! [X: $o] :
        ( says(peter,(X))
       => (X) ) ).

%------------------------------------------------------------------------------
