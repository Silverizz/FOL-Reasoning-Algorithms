%------------------------------------------------------------------------------
% File     : PUZ137^1 : TPTP v9.2.1. Released v5.3.0.
% Domain   : Puzzles
% Problem  : Peter the liar says everything
% Version  : Especial.
% English  : Peter says that everything he says is false. Show that Peter says
%            everything.

% Refs     : [Bro11] Brown (2011), Email to G. Sutcliffe
% Source   : [Bro11]
% Names    :

% Status   : Theorem
% Rating   : 0.17 v9.1.0, 0.12 v9.0.0, 0.17 v8.2.0, 0.18 v8.1.0, 0.08 v7.4.0, 0.11 v7.3.0, 0.10 v7.2.0, 0.12 v7.1.0, 0.14 v7.0.0, 0.12 v6.4.0, 0.14 v6.3.0, 0.17 v6.1.0, 0.33 v5.5.0, 0.40 v5.4.0, 0.25 v5.3.0
% Syntax   : Number of formulae    :    4 (   1 unt;   2 typ;   0 def)
%            Number of atoms       :    3 (   0 equ;   0 cnn)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    8 (   1   ~;   0   |;   0   &;   6   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   2 usr;   1 con; 0-2 aty)
%            Number of variables   :    2 (   0   ^;   2   !;   0   ?;   2   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : This is PUZ082^1 with a different conjecture. The idea of using 
%            truth values ($o) to interpret statements seems to go back to 
%            Frege. One criticism of this idea is that it can lead to 
%            unexpected consequences, often due to extensionality. In addition 
%            to being a theorem of extensional simple type theory, it's also 
%            an example of why assigning a type ($i > $o > $o) to a relation 
%            like 'says' may be dangerous.
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
    ! [X: $o] : ( says @ peter @ X ) ).

%------------------------------------------------------------------------------
