%------------------------------------------------------------------------------
% File     : PUZ087^1 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Logic Calculi (Espistemic logic)
% Problem  : Wise men puzzle
% Version  : [Ben09] axioms.
% English  : Once upon a time, a king wanted to find the wisest out of his
%            three wisest men. He arranged them in a circle and told them that
%            he would put a white or a black spot on their foreheads and that
%            one of the three spots would certainly be white. The three wise
%            men could see and hear each other but, of course, they could not
%            see their faces reflected anywhere. The king, then, asked to each
%            of them to find out the colour of his own spot. After a while, the
%            wisest correctly answered that his spot was white.

% Refs     : [Gol92] Goldblatt (1992), Logics of Time and Computation
%          : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : mmex4.p [Ben09]

% Status   : Theorem
% Rating   : 0.44 v9.1.0, 0.38 v9.0.0, 0.50 v8.2.0, 0.54 v8.1.0, 0.45 v7.5.0, 0.43 v7.4.0, 0.56 v7.3.0, 0.67 v7.2.0, 0.62 v7.0.0, 0.71 v6.4.0, 0.67 v6.3.0, 0.60 v6.2.0, 0.71 v6.1.0, 0.86 v5.5.0, 0.83 v5.4.0, 0.80 v5.1.0, 1.00 v5.0.0, 0.80 v4.1.0, 0.67 v4.0.0
% Syntax   : Number of formulae    :  101 (  31 unt;  37 typ;  31 def)
%            Number of atoms       :  407 (  36 equ;   0 cnn)
%            Maximal formula atoms :   12 (   6 avg)
%            Number of connectives :  439 (   4   ~;   4   |;   8   &; 415   @)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   4 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  197 ( 197   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   44 (  42 usr;   7 con; 0-3 aty)
%            Number of variables   :  101 (  66   ^;  29   !;   6   ?; 101   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include embedding of quantified multimodal logic in simple type theory
include('Axioms/LCL013^0.ax').
%------------------------------------------------------------------------------
thf(a,type,
    a: $i > $i > $o ).

thf(b,type,
    b: $i > $i > $o ).

thf(c,type,
    c: $i > $i > $o ).

thf(fool,type,
    fool: $i > $i > $o ).

thf(ws,type,
    ws: ( $i > $i > $o ) > $i > $o ).

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
    mvalid @ ( mnot @ ( mbox @ a @ ( ws @ a ) ) ) ).

thf(axiom_5,axiom,
    mvalid @ ( mnot @ ( mbox @ b @ ( ws @ b ) ) ) ).

thf(conj,conjecture,
    mvalid @ ( mbox @ c @ ( ws @ c ) ) ).

%------------------------------------------------------------------------------
