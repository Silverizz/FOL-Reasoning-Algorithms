%------------------------------------------------------------------------------
% File     : PUZ154^1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles
% Problem  : A mixture of coffee and syrup that is not hot
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v9.1.0
% Syntax   : Number of formulae    :   11 (   3 unt;   7 typ;   0 def)
%            Number of atoms       :    5 (   3 equ;   0 cnn)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :   13 (   1   ~;   0   |;   1   &;  11   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Number of types       :    3 (   2 usr)
%            Number of type conns  :    7 (   7   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :    7 (   2   ^   3   !;   2   ?;   7   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
thf(beverage_decl,type,
    beverage: $tType ).

thf(syrup_decl,type,
    syrup: $tType ).

thf(coffee_type,type,
    coffee: beverage ).

thf(mix_type,type,
    mix: beverage > syrup > beverage ).

thf(heat_type,type,
    heat: beverage > beverage ).

thf(heated_mix_type,type,
    heated_mix: beverage > syrup > beverage ).

thf(hot_type,type,
    hot: beverage > $o ).

thf(heated_mix,axiom,
    ( heated_mix
    = ( ^ [B: beverage,S: syrup] : ( heat @ ( mix @ B @ S ) ) ) ) ).

thf(hot_mixture,axiom,
    ! [B: beverage,S: syrup] : ( hot @ ( heated_mix @ B @ S ) ) ).

thf(heated_coffee_mix,axiom,
    ! [S: syrup] :
      ( ( heated_mix @ coffee @ S )
      = coffee ) ).

thf(hot_coffee,conjecture,
    ? [Mixture: syrup > beverage] :
      ~ ? [S: syrup] :
          ( ( ( Mixture @ S )
            = coffee )
          & ( hot @ ( Mixture @ S ) ) ) ).

%------------------------------------------------------------------------------
