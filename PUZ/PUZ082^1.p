%------------------------------------------------------------------------------
% File     : PUZ082^1 : TPTP v9.2.1. Released v3.6.0.
% Domain   : Puzzles
% Problem  : Peter the liar
% Version  : Especial.
% English  : Peter says that everything he says is false. Show that not
%            everything Peter says is false.

% Refs     : [Ben08] Benzmueller (2008), Email to G. Sutcliffe
% Source   : [Ben08]
% Names    :

% Status   : Theorem
% Rating   : 0.08 v9.1.0, 0.00 v9.0.0, 0.08 v8.2.0, 0.09 v8.1.0, 0.00 v5.4.0, 0.25 v5.3.0, 0.50 v5.2.0, 0.25 v4.1.0, 0.33 v3.7.0
% Syntax   : Number of formulae    :    4 (   1 unt;   2 typ;   0 def)
%            Number of atoms       :    3 (   0 equ;   0 cnn)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :   11 (   3   ~;   0   |;   0   &;   6   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   6 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   2 usr;   1 con; 0-2 aty)
%            Number of variables   :    2 (   0   ^;   2   !;   0   ?;   2   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Signature
thf(peter,type,
    peter: $i ).

thf(says,type,
    says: $i > $o > $o ).

%----Axioms
thf(ax1,axiom,
    ( says @ peter
    @ ! [X: $o] :
        ( ( says @ peter @ X )
       => ~ X ) ) ).

thf(thm,conjecture,
    ~ ! [X: $o] :
        ( ( says @ peter @ X )
       => ~ X ) ).

%------------------------------------------------------------------------------
