%------------------------------------------------------------------------------
% File     : PUZ140^1 : TPTP v9.2.1. Released v6.1.0.
% Domain   : Puzzles
% Problem  : A mixture of coffee and syrup that is hot
% Version  : Especial.
% English  : 

% Refs     : [Arh14] Arhami (2010), Email to Geoff Sutcliffe
% Source   : [Arh14]
% Names    :

% Status   : Theorem
% Rating   : 0.22 v9.1.0, 0.12 v9.0.0, 0.20 v8.2.0, 0.31 v8.1.0, 0.27 v7.5.0, 0.14 v7.4.0, 0.22 v7.2.0, 0.12 v7.0.0, 0.14 v6.4.0, 0.17 v6.3.0, 0.20 v6.2.0, 0.43 v6.1.0
% Syntax   : Number of formulae    :   12 (   3 unt;   8 typ;   2 def)
%            Number of atoms       :    5 (   3 equ;   0 cnn)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   1   &;  10   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Number of types       :    3 (   2 usr)
%            Number of type conns  :   10 (  10   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   6 usr;   1 con; 0-2 aty)
%            Number of variables   :    8 (   4   ^;   2   !;   2   ?;   8   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
thf(syrup_type,type,
    syrup: $tType ).

thf(beverage_type,type,
    beverage: $tType ).

%----Coffee is a beverage
thf(coffee_type,type,
    coffee: beverage ).

thf(heat_type,type,
    heat: beverage > beverage ).

thf(hot_type,type,
    hot: beverage > $o ).

thf(mix_type,type,
    mix: beverage > syrup > beverage ).

%----The mixture of a beverage and a syrup is a beverage
thf(hot_mixture_type,type,
    hot_mixture: beverage > syrup > beverage ).

thf(cold_mixture_type,type,
    cold_mixture: beverage > syrup > beverage ).

%----Heating a beverage makes the beverage hot
thf(its_hot,axiom,
    ! [B: beverage] : ( hot @ ( heat @ B ) ) ).

%----The cold mixture of a beverage and a syrup is a mixture of the beverage 
%----and the syrup
thf(cold_mixture_definition,definition,
    ( cold_mixture
    = ( ^ [B: beverage,S: syrup] : ( mix @ B @ S ) ) ) ).

%----The hot mixture of a beverage and a syrup is a mixture of the beverage 
%----and the syrup, which is heated
thf(hot_mixture_definition,definition,
    ( hot_mixture
    = ( ^ [B: beverage,S: syrup] : ( heat @ ( mix @ B @ S ) ) ) ) ).

%----There is some mixture of coffee and any syrup which is hot
thf(hot_coffee,conjecture,
    ? [Mixture: beverage > syrup > beverage] :
    ! [S: syrup] :
    ? [B: beverage] :
      ( ( ( Mixture @ coffee @ S )
        = B )
      & ( hot @ B ) ) ).

%------------------------------------------------------------------------------
