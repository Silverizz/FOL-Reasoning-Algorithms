%------------------------------------------------------------------------------
% File     : PUZ136^1 : TPTP v9.2.1. Released v5.2.0.
% Domain   : Puzzles
% Problem  : Under two assumptions there are at least two individuals.
% Version  : Especial.
% English  :

% Refs     : [Bro11] Brown (2011), Email to Geoff Sutcliffe
% Source   : [Bro11]
% Names    : 

% Status   : Theorem
% Rating   : 0.08 v9.1.0, 0.12 v9.0.0, 0.08 v8.2.0, 0.09 v8.1.0, 0.17 v7.4.0, 0.11 v7.3.0, 0.10 v7.2.0, 0.12 v7.1.0, 0.14 v7.0.0, 0.12 v6.4.0, 0.14 v6.3.0, 0.17 v6.0.0, 0.00 v5.2.0
% Syntax   : Number of formulae    :    8 (   2 unt;   5 typ;   0 def)
%            Number of atoms       :    2 (   0 equ;   0 cnn)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    9 (   2   ~;   0   |;   1   &;   6   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   5 usr;   4 con; 0-2 aty)
%            Number of variables   :    3 (   0   ^;   0   !;   3   ?;   3   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : The conclusion is given using a higher order quantifier.
%            Satallax tends to find solutions by instantiating for P twice.
%            A solution instantiating it once is to take P x := (x = horus), 
%            X := horus. Instantiating Y three times gives you that everyone 
%            is the same as horus, so the two axioms conflict. This problem 
%            is a simplification of CSR138^1.
%------------------------------------------------------------------------------
thf(parent,type,
    parent: $i > $i > $o ).

thf(kronus,type,
    kronus: $i ).

thf(zeus,type,
    zeus: $i ).

thf(ax1,axiom,
    parent @ kronus @ zeus ).

thf(sutekh,type,
    sutekh: $i ).

thf(horus,type,
    horus: $i ).

thf(ax2,axiom,
    ~ ( parent @ sutekh @ horus ) ).

thf(hotwo,conjecture,
    ? [P: $i > $o,X: $i,Y: $i] :
      ( ( P @ X )
      & ~ ( P @ Y ) ) ).

%------------------------------------------------------------------------------
