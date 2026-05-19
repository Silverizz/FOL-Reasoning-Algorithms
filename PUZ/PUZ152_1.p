%------------------------------------------------------------------------------
% File     : PUZ152_1 : TPTP v9.2.1. Released v9.1.0.
% Domain   : Puzzles (Truthtellers and Liars)
% Problem  : Exactly one truthteller
% Version  : Especial.
% English  : 

% Refs     : [Smu78] Smullyan (1978), What is the name of this book?
%          : [KK+16] Kotelnikov et al. (2016), The Vampire and the FOOL
%          : [Kot17] Kotelnikov (2017), Email to Geoff Sutcliffe
% Source   : [Kot17]
% Names    :

% Status   : Satisfiable
% Rating   : 0.33 v9.1.0
% Syntax   : Number of formulae    :    9 (   2 unt;   5 typ;   0 def)
%            Number of atoms       :   18 (   1 equ)
%            Maximal formula atoms :    5 (   4 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   2   &)
%                                         (   1 <=>;   1  =>;   0  <=;   1 <~>)
%            Maximal formula depth :    7 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    9 (   9 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   2 usr;   3 prp; 0-2 aty)
%            Number of functors    :    3 (   3 usr;   3 con; 0-0 aty)
%            Number of variables   :    4 (   3   !;   1   ?;   4   :)
% SPC      : TX0_SAT_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $i ).

tff(b_type,type,
    b: $i ).

tff(c_type,type,
    c: $i ).

tff(exactly_one_truthteller_type,type,
    exactly_one_truthteller: $o ).

tff(says,type,
    says: ( $i * $o ) > $o ).

%----Each person is either a truthteller or a liar
tff(island,axiom,
    ! [P: $i] :
      ( says(P,$true)
    <~> says(P,$false) ) ).

tff(exactly_one_truthteller,axiom,
    ( exactly_one_truthteller
  <=> ( ? [P: $i] : says(P,$true)
      & ! [P1: $i,P2: $i] :
          ( ( says(P1,$true)
            & says(P2,$true) )
         => ( P1 = P2 ) ) ) ) ).

%----B said that A said that there is exactly one truthteller on the island
tff(b_says,hypothesis,
    says(b,says(a,exactly_one_truthteller)) ).

%----C said that what B said is false
tff(c_says,hypothesis,
    says(c,says(b,$false)) ).

%------------------------------------------------------------------------------
