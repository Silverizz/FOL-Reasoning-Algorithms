%------------------------------------------------------------------------------
% File     : PUZ151_1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles
% Problem  : Jon owns Garfield's lovers
% Version  : Especial.
% English  : Jon is the only human. Garfield, Arlene, and Nermal are the only
%            cats. Jon owns Garfield and does not own Arlene. All cats love
%            Garfield. Therefore Jon owns every cat that is not Arlene and
%            loves Garfield.

% Refs     : 
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.33 v9.1.0
% Syntax   : Number of formulae    :   14 (   2 unt;   8 typ;   0 def)
%            Number of atoms       :   13 (  10 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   12 (   5   ~;   2   |;   4   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    3 (   2 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   5 usr;   4 con; 0-1 aty)
%            Number of variables   :    4 (   4   !;   0   ?;   4   :)
% SPC      : TF0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(human_type,type,
    human: $tType ).

tff(cat_type,type,
    cat: $tType ).

tff(jon_decl,type,
    jon: human ).

tff(garfield_decl,type,
    garfield: cat ).

tff(arlene_decl,type,
    arlene: cat ).

tff(nermal_decl,type,
    nermal: cat ).

tff(loves_decl,type,
    loves: cat > cat ).

tff(owns_decl,type,
    owns: ( human * cat ) > $o ).

tff(only_jon,axiom,
    ! [H: human] : ( H = jon ) ).

tff(only_garfield_and_arlene_and_nermal,axiom,
    ! [C: cat] :
      ( ( C = garfield )
      | ( C = arlene )
      | ( C = nermal ) ) ).

tff(distinct_cats,axiom,
    ( ( garfield != arlene )
    & ( arlene != nermal )
    & ( nermal != garfield ) ) ).

tff(jon_owns_garfield_not_arlene,axiom,
    ( owns(jon,garfield)
    & ~ owns(jon,arlene) ) ).

tff(all_cats_love_garfield,axiom,
    ! [C: cat] : ( loves(C) = garfield ) ).

tff(jon_owns_garfields_lovers,conjecture,
    ! [C: cat] :
      ( ( ( loves(C) = garfield )
        & ( C != arlene ) )
     => owns(jon,C) ) ).

%------------------------------------------------------------------------------
