%------------------------------------------------------------------------------
% File     : PUZ087^2 : TPTP v9.2.1. Released v5.2.0.
% Domain   : Puzzles
% Problem  : Wise men puzzle
% Version  : [Ben11] axioms.
% English  : Once upon a time, a king wanted to find the wisest out of his
%            three wisest men. He arranged them in a circle and told them that
%            he would put a white or a black spot on their foreheads and that
%            one of the three spots would certainly be white. The three wise
%            men could see and hear each other but, of course, they could not
%            see their faces reflected anywhere. The king, then, asked to each
%            of them to find out the colour of his own spot. After a while, the
%            wisest correctly answered that his spot was white.

% Refs     : [Ben11] Benzmueller (2011), Email to Geoff Sutcliffe
%          : [Ben11] Benzmueller (2011), Combining and Automating Classical
% Source   : [Ben11]
% Names    : Ex_9_2 [Ben11]

% Status   : Theorem
% Rating   : 0.56 v9.1.0, 0.62 v9.0.0, 0.70 v8.2.0, 0.69 v8.1.0, 0.55 v7.5.0, 0.71 v7.4.0, 0.89 v7.3.0, 0.78 v7.2.0, 0.75 v7.1.0, 0.88 v7.0.0, 0.86 v6.4.0, 0.83 v6.3.0, 0.80 v6.2.0, 0.86 v5.5.0, 1.00 v5.4.0, 0.80 v5.3.0, 1.00 v5.2.0
% Syntax   : Number of formulae    :  106 (  32 unt;  39 typ;  32 def)
%            Number of atoms       :  425 (  37 equ;   0 cnn)
%            Maximal formula atoms :   12 (   6 avg)
%            Number of connectives :  456 (   5   ~;   4   |;   8   &; 431   @)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   4 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  204 ( 204   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   47 (  45 usr;   8 con; 0-3 aty)
%            Number of variables   :  103 (  67   ^;  30   !;   6   ?; 103   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include embedding of quantified multimodal logic in simple type theory
include('Axioms/LCL013^0.ax').
%------------------------------------------------------------------------------
thf(a_type,type,
    a: $i > $i > $o ).

thf(b_type,type,
    b: $i > $i > $o ).

thf(c_type,type,
    c: $i > $i > $o ).

thf(fool_type,type,
    fool: $i > $i > $o ).

thf(ws_type,type,
    ws: ( $i > $i > $o ) > $i > $o ).

thf(priorG_type,type,
    priorG: $i > $i > $o ).

thf(irreflexiv_type,type,
    irreflexive: ( $i > $i > $o ) > $o ).

thf(irreflexive_def,definition,
    ( irreflexive
    = ( ^ [R: $i > $i > $o] :
        ! [X: $i] :
          ~ ( R @ X @ X ) ) ) ).

thf(axiom_priorG_irreflexive,axiom,
    irreflexive @ priorG ).

thf(axiom_priorG_transitive,axiom,
    mtransitive @ priorG ).

thf(axiom_1,axiom,
    mvalid @ ( mbox @ fool @ ( mor @ ( ws @ a ) @ ( mor @ ( ws @ b ) @ ( ws @ c ) ) ) ) ).

thf(axiom_2_a_b,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( ws @ a ) @ ( mbox @ b @ ( ws @ a ) ) ) ) ).

thf(axiom_2_a_c,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( ws @ a ) @ ( mbox @ c @ ( ws @ a ) ) ) ) ).

thf(axiom_2_b_a,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( ws @ b ) @ ( mbox @ a @ ( ws @ b ) ) ) ) ).

thf(axiom_2_b_c,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( ws @ b ) @ ( mbox @ c @ ( ws @ b ) ) ) ) ).

thf(axiom_2_c_a,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( ws @ c ) @ ( mbox @ a @ ( ws @ c ) ) ) ) ).

thf(axiom_2_c_b,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( ws @ c ) @ ( mbox @ b @ ( ws @ c ) ) ) ) ).

thf(axiom_3_a_b,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( mnot @ ( ws @ a ) ) @ ( mbox @ b @ ( mnot @ ( ws @ a ) ) ) ) ) ).

thf(axiom_3_a_c,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( mnot @ ( ws @ a ) ) @ ( mbox @ c @ ( mnot @ ( ws @ a ) ) ) ) ) ).

thf(axiom_3_b_a,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( mnot @ ( ws @ b ) ) @ ( mbox @ a @ ( mnot @ ( ws @ b ) ) ) ) ) ).

thf(axiom_3_b_c,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( mnot @ ( ws @ b ) ) @ ( mbox @ c @ ( mnot @ ( ws @ b ) ) ) ) ) ).

thf(axiom_3_c_a,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( mnot @ ( ws @ c ) ) @ ( mbox @ a @ ( mnot @ ( ws @ c ) ) ) ) ) ).

thf(axiom_3_c_b,axiom,
    mvalid @ ( mbox @ fool @ ( mimplies @ ( mnot @ ( ws @ c ) ) @ ( mbox @ b @ ( mnot @ ( ws @ c ) ) ) ) ) ).

thf(t_axiom_for_fool,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [A: $i > $o] : ( mimplies @ ( mbox @ fool @ A ) @ A ) ) ) ).

thf(k_axiom_for_fool,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [A: $i > $o] : ( mimplies @ ( mbox @ fool @ A ) @ ( mbox @ fool @ ( mbox @ fool @ A ) ) ) ) ) ).

thf(i_axiom_for_fool_a,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ fool @ Phi ) @ ( mbox @ a @ Phi ) ) ) ) ).

thf(i_axiom_for_fool_b,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ fool @ Phi ) @ ( mbox @ b @ Phi ) ) ) ) ).

thf(i_axiom_for_fool_c,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ fool @ Phi ) @ ( mbox @ c @ Phi ) ) ) ) ).

thf(a7_axiom_for_fool_a_b,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ a @ Phi ) @ ( mbox @ b @ ( mbox @ a @ Phi ) ) ) ) ) ).

thf(a7_axiom_for_fool_a_c,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ a @ Phi ) @ ( mbox @ c @ ( mbox @ a @ Phi ) ) ) ) ) ).

thf(a7_axiom_for_fool_b_a,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ b @ Phi ) @ ( mbox @ a @ ( mbox @ b @ Phi ) ) ) ) ) ).

thf(a7_axiom_for_fool_b_c,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ b @ Phi ) @ ( mbox @ c @ ( mbox @ b @ Phi ) ) ) ) ) ).

thf(a7_axiom_for_fool_c_a,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ c @ Phi ) @ ( mbox @ a @ ( mbox @ c @ Phi ) ) ) ) ) ).

thf(a7_axiom_for_fool_c_b,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mbox @ c @ Phi ) @ ( mbox @ b @ ( mbox @ c @ Phi ) ) ) ) ) ).

thf(a6_axiom_for_fool_a_b,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mnot @ ( mbox @ a @ Phi ) ) @ ( mbox @ b @ ( mnot @ ( mbox @ a @ Phi ) ) ) ) ) ) ).

thf(a6_axiom_for_fool_a_c,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mnot @ ( mbox @ a @ Phi ) ) @ ( mbox @ c @ ( mnot @ ( mbox @ a @ Phi ) ) ) ) ) ) ).

thf(a6_axiom_for_fool_b_a,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mnot @ ( mbox @ b @ Phi ) ) @ ( mbox @ a @ ( mnot @ ( mbox @ b @ Phi ) ) ) ) ) ) ).

thf(a6_axiom_for_fool_b_c,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mnot @ ( mbox @ b @ Phi ) ) @ ( mbox @ c @ ( mnot @ ( mbox @ b @ Phi ) ) ) ) ) ) ).

thf(a6_axiom_for_fool_c_a,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mnot @ ( mbox @ c @ Phi ) ) @ ( mbox @ a @ ( mnot @ ( mbox @ c @ Phi ) ) ) ) ) ) ).

thf(a6_axiom_for_fool_c_b,axiom,
    ( mvalid
    @ ( mforall_prop
      @ ^ [Phi: $i > $o] : ( mimplies @ ( mnot @ ( mbox @ c @ Phi ) ) @ ( mbox @ b @ ( mnot @ ( mbox @ c @ Phi ) ) ) ) ) ) ).

thf(axiom_4,axiom,
    mvalid @ ( mbox @ priorG @ ( mnot @ ( mbox @ a @ ( ws @ a ) ) ) ) ).

thf(axiom_5,axiom,
    mvalid @ ( mbox @ priorG @ ( mbox @ priorG @ ( mnot @ ( mbox @ b @ ( ws @ b ) ) ) ) ) ).

thf(conj,conjecture,
    mvalid @ ( mbox @ priorG @ ( mbox @ priorG @ ( mbox @ priorG @ ( mbox @ c @ ( ws @ c ) ) ) ) ) ).

%------------------------------------------------------------------------------
