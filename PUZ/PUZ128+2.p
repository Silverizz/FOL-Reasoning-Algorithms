%------------------------------------------------------------------------------
% File     : PUZ128+2 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Puzzles
% Problem  : Iokaste patricide triangle
% Version  : Especial.
%            Theorem formulation : Converted from ACE by the APE [FKK08].
% English  : Iokaste is a parent of Oedipus. Iokaste is a parent of Polyneikes.
%            Oedipus is a parent of Polyneikes. Polyneikes is a parent of 
%            Thersandros. Oedipus is a patricide. Thersandros is not a 
%            patricide. Therefore, Iokaste is a parent of a patricide that is 
%            a parent of somebody who is not a patricide.

% Refs     : [FKK08] Fuchs et al. (2008), Attempto Controlled English for K
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.21 v9.1.0, 0.18 v9.0.0, 0.22 v8.2.0, 0.25 v8.1.0, 0.14 v7.5.0, 0.16 v7.4.0, 0.17 v7.3.0, 0.21 v7.1.0, 0.17 v7.0.0, 0.20 v6.4.0, 0.27 v6.3.0, 0.12 v6.2.0, 0.20 v6.0.0, 0.17 v5.5.0, 0.33 v5.4.0, 0.32 v5.3.0, 0.41 v5.2.0, 0.20 v5.1.0, 0.19 v5.0.0, 0.29 v4.1.0, 0.39 v4.0.1, 0.43 v4.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   0 def)
%            Number of atoms       :   26 (   9 equ)
%            Maximal formula atoms :   16 (  13 avg)
%            Number of connectives :   26 (   2   ~;   0   |;  24   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   23 (  18 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   3 usr;   1 prp; 0-3 aty)
%            Number of functors    :    5 (   5 usr;   5 con; 0-0 aty)
%            Number of variables   :   11 (   0   !;  11   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
fof(background,axiom,
    ? [A,B,C,D,E] :
      ( parent(A)
      & relation(A,of,'Oedipus')
      & 'Iokaste' = A
      & parent(B)
      & relation(B,of,'Polyneikes')
      & 'Iokaste' = B
      & parent(C)
      & relation(C,of,'Polyneikes')
      & 'Oedipus' = C
      & parent(D)
      & relation(D,of,'Thersandros')
      & 'Polyneikes' = D
      & patricide(E)
      & 'Oedipus' = E
      & ~ ? [F] :
            ( patricide(F)
            & 'Thersandros' = F ) ) ).

fof(prove,conjecture,
    ? [A,B,C,D] :
      ( parent(A)
      & patricide(B)
      & parent(C)
      & $true
      & ~ ? [E] :
            ( patricide(E)
            & D = E )
      & relation(C,of,D)
      & B = C
      & relation(A,of,B)
      & 'Iokaste' = A ) ).

%------------------------------------------------------------------------------
