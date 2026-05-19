%------------------------------------------------------------------------------
% File     : PUZ031_10 : TPTP v9.2.1. Released v8.2.0.
% Domain   : Puzzles
% Problem  : Schubert's Steamroller
% Version  : PUZ031_1 with the conjecture removed
% English  : Wolves, foxes, birds, caterpillars, and snails are animals, and
%            there are some of each of them. Also there are some grains, and
%            grains are plants. Every animal either likes to eat all plants
%            or all animals much smaller than itself that like to eat some
%            plants. Caterpillars and snails are much smaller than birds,
%            which are much smaller than foxes, which in turn are much
%            smaller than wolves. Wolves do not like to eat foxes or grains,
%            while birds like to eat caterpillars but not snails.
%            Caterpillars and snails like to eat some plants. Therefore
%            there is an animal that likes to eat a grain eating animal.

% Refs     : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
% Source   : [TPTP]
% Names    : 

% Status   : Satisfiable
% Rating   : 0.00 v8.2.0
% Syntax   : Number of formulae    :   30 (  10 unt;  19 typ;   0 def)
%            Number of atoms       :   14 (   0 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :    6 (   3   ~;   1   |;   1   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number of types       :   10 (   9 usr)
%            Number of type conns  :   12 (  10   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   0 con; 1-1 aty)
%            Number of variables   :   24 (  21   !;   3   ?;  24   :)
% SPC      : TF0_SAT_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(animal_type,type,
    animal: $tType ).

tff(wolf_type,type,
    wolf: $tType ).

tff(wolf_is_animal,type,
    wolf_to_animal: wolf > animal ).

tff(fox_type,type,
    fox: $tType ).

tff(fox_is_animal,type,
    fox_to_animal: fox > animal ).

tff(bird_type,type,
    bird: $tType ).

tff(bird_is_animal,type,
    bird_to_animal: bird > animal ).

tff(caterpillar_type,type,
    caterpillar: $tType ).

tff(caterpillar_is_animal,type,
    caterpillar_to_animal: caterpillar > animal ).

tff(snail_type,type,
    snail: $tType ).

tff(snail_is_animal,type,
    snail_to_animal: snail > animal ).

tff(plant_type,type,
    plant: $tType ).

tff(grain_type,type,
    grain: $tType ).

tff(grain_is_plant,type,
    grain_to_plant: grain > plant ).

tff(edible_type,type,
    edible: $tType ).

tff(animal_is_edible,type,
    animal_to_edible: animal > edible ).

tff(plant_is_edible,type,
    plant_to_edible: plant > edible ).

tff(eats_type,type,
    eats: ( animal * edible ) > $o ).

tff(much_smaller_type,type,
    much_smaller: ( animal * animal ) > $o ).

tff(pel47_7,axiom,
    ! [X: animal] :
      ( ! [Y: plant] : eats(X,plant_to_edible(Y))
      | ! [Y1: animal] :
          ( ( much_smaller(Y1,X)
            & ? [Z: plant] : eats(Y1,plant_to_edible(Z)) )
         => eats(X,animal_to_edible(Y1)) ) ) ).

tff(pel47_8,axiom,
    ! [X: snail,Y: bird] : much_smaller(snail_to_animal(X),bird_to_animal(Y)) ).

tff(pel47_8a,axiom,
    ! [X: caterpillar,Y: bird] : much_smaller(caterpillar_to_animal(X),bird_to_animal(Y)) ).

tff(pel47_9,axiom,
    ! [X: bird,Y: fox] : much_smaller(bird_to_animal(X),fox_to_animal(Y)) ).

tff(pel47_10,axiom,
    ! [X: fox,Y: wolf] : much_smaller(fox_to_animal(X),wolf_to_animal(Y)) ).

tff(pel47_11,axiom,
    ! [X: wolf,Y: fox] : ~ eats(wolf_to_animal(X),animal_to_edible(fox_to_animal(Y))) ).

tff(pel47_11a,axiom,
    ! [X: wolf,Y: grain] : ~ eats(wolf_to_animal(X),plant_to_edible(grain_to_plant(Y))) ).

tff(pel47_12,axiom,
    ! [X: bird,Y: caterpillar] : eats(bird_to_animal(X),animal_to_edible(caterpillar_to_animal(Y))) ).

tff(pel47_13,axiom,
    ! [X: bird,Y: snail] : ~ eats(bird_to_animal(X),animal_to_edible(snail_to_animal(Y))) ).

tff(pel47_14,axiom,
    ! [X: caterpillar] :
    ? [Y: plant] : eats(caterpillar_to_animal(X),plant_to_edible(Y)) ).

tff(pel47_14a,axiom,
    ! [X: snail] :
    ? [Y: plant] : eats(snail_to_animal(X),plant_to_edible(Y)) ).

% tff(pel47,conjecture,
%     ? [X: animal,Y: animal,Z: grain] :
%       ( eats(Y,plant_to_edible(grain_to_plant(Z)))
%       & eats(X,animal_to_edible(Y)) ) ).

%------------------------------------------------------------------------------
