%------------------------------------------------------------------------------
% File     : PUZ146^1 : TPTP v9.2.1. Released v6.4.0.
% Domain   : Puzzles
% Problem  : Peter and Mary have different hobbies
% Version  : Especial.
% English  : 

% Refs     : [Ben16] Benzmueller (2011), Email to Geoff Sutcliffe
% Source   : [Ben16]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v6.4.0
% Syntax   : Number of formulae    :   19 (   8 unt;  10 typ;   2 def)
%            Number of atoms       :   17 (   7 equ;   0 cnn)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :   14 (   6   ~;   0   |;   2   &;   6   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   2 avg)
%            Number of types       :    3 (   2 usr)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   8 usr;   5 con; 0-2 aty)
%            Number of variables   :    0 (   0   ^;   0   !;   0   ?;   0   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
thf(hobby_type,type,
    hobby: $tType ).

thf(earthling_type,type,
    earthling: $tType ).

thf(peter,type,
    peter: earthling ).

thf(mary,type,
    mary: earthling ).

thf(beer_drinking,type,
    beer_drinking: hobby ).

thf(belly_dancing,type,
    belly_dancing: hobby ).

thf(weight_lifting,type,
    weight_lifting: hobby ).

thf(has_hobby,type,
    has_hobby: earthling > hobby > $o ).

thf(peters_hobbies,type,
    peters_hobbies: hobby > $o ).

thf(marys_hobbies,type,
    marys_hobbies: hobby > $o ).

thf(not_the_same_1,axiom,
    peter != mary ).

thf(not_the_same_2,axiom,
    ( ( beer_drinking != belly_dancing )
    & ( belly_dancing != weight_lifting )
    & ( beer_drinking != weight_lifting ) ) ).

thf(peters_hobbies_001,definition,
    ( peters_hobbies
    = ( has_hobby @ peter ) ) ).

thf(marys_hobbies_002,definition,
    ( marys_hobbies
    = ( has_hobby @ mary ) ) ).

thf(mary_does_belly_dancing,axiom,
    marys_hobbies @ belly_dancing ).

thf(mary_does_not_do_beer_drinking,axiom,
    ~ ( marys_hobbies @ beer_drinking ) ).

thf(peter_does_beer_drinking,axiom,
    peters_hobbies @ beer_drinking ).

thf(peter_does_weight_lifting,axiom,
    peters_hobbies @ weight_lifting ).

thf(peter_and_mary_have_different_hobbies,conjecture,
    peters_hobbies != marys_hobbies ).

%------------------------------------------------------------------------------
