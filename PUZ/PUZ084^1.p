%------------------------------------------------------------------------------
% File     : PUZ084^1 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Logic Calculi (Espistemic logic)
% Problem  : The friends puzzle - reflexivity for Peter's wife
% Version  : [Ben09] axioms.
% English  : (i) Peter is a friend of John, so if Peter knows that John knows
%            something then John knows that Peter knows the same thing. 
%            (ii) Peter is married, so if Peter's wife knows something, then
%            Peter knows the same thing. John and Peter have an appointment,
%            let us consider the following situation: (a) Peter knows the time
%            of their appointment. (b) Peter also knows that John knows the
%            place of their appointment. Moreover, (c) Peter's wife knows that
%            if Peter knows the time of their appointment, then John knows
%            that too (since John and Peter are friends). Finally, (d) Peter
%            knows that if John knows the place and the time of their
%            appointment, then John knows that he has an appointment. From
%            this situation we want to prove (e) that each of the two friends
%            knows that the other one knows that he has an appointment.

% Refs     : [Gol92] Goldblatt (1992), Logics of Time and Computation
%          : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : mmex1.p [Ben09]

% Status   : Theorem
% Rating   : 0.11 v9.1.0, 0.12 v9.0.0, 0.10 v8.2.0, 0.23 v8.1.0, 0.18 v7.5.0, 0.14 v7.4.0, 0.11 v7.2.0, 0.00 v7.1.0, 0.25 v7.0.0, 0.14 v6.4.0, 0.17 v6.3.0, 0.20 v6.2.0, 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.33 v4.0.0
% Syntax   : Number of formulae    :   73 (  31 unt;  35 typ;  31 def)
%            Number of atoms       :  112 (  36 equ;   0 cnn)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :  138 (   4   ~;   4   |;   8   &; 114   @)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   1 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  178 ( 178   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   42 (  40 usr;   7 con; 0-3 aty)
%            Number of variables   :   85 (  50   ^;  29   !;   6   ?;  85   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : 
%------------------------------------------------------------------------------
%----Include embedding of quantified multimodal logic in simple type theory
include('Axioms/LCL013^0.ax').
%------------------------------------------------------------------------------
thf(peter,type,
    peter: $i > $i > $o ).

thf(john,type,
    john: $i > $i > $o ).

thf(wife,type,
    wife: ( $i > $i > $o ) > $i > $i > $o ).

thf(refl_peter,axiom,
    mreflexive @ peter ).

thf(refl_john,axiom,
    mreflexive @ john ).

thf(refl_wife_peter,axiom,
    mreflexive @ ( wife @ peter ) ).

thf(trans_peter,axiom,
    mtransitive @ peter ).

thf(trans_john,axiom,
    mtransitive @ john ).

thf(trans_wife_peter,axiom,
    mtransitive @ ( wife @ peter ) ).

thf(conj,conjecture,
    ( mvalid
    @ ( mforall_prop
      @ ^ [A: $i > $o] : ( mimplies @ ( mbox @ ( wife @ peter ) @ A ) @ A ) ) ) ).

%------------------------------------------------------------------------------
