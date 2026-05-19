%------------------------------------------------------------------------------
% File     : PUZ133_2 : TPTP v9.2.1. Released v5.0.0.
% Domain   : Puzzles
% Problem  : N queens problem has the variable symmetry property
% Version  : Especial.
% English  : 

% Refs     : [Bau08] Baumgartner (2008), Email to G. Sutcliffe
%          : [BS09]  Baumgartner & Slaney (2009), Constraint Modelling: A C
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.12 v9.1.0, 0.38 v9.0.0, 0.25 v7.5.0, 0.40 v7.4.0, 0.12 v7.3.0, 0.17 v7.1.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.50 v6.1.0, 0.67 v6.0.0, 0.71 v5.5.0, 0.78 v5.4.0, 0.75 v5.3.0, 0.70 v5.2.0, 0.83 v5.1.0, 0.80 v5.0.0
% Syntax   : Number of formulae    :   12 (   2 unt;   6 typ;   0 def)
%            Number of atoms       :   27 (   9 equ)
%            Maximal formula atoms :   10 (   2 avg)
%            Number of connectives :   27 (   6   ~;   0   |;  14   &)
%                                         (   1 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number arithmetic     :   48 (  14 atm;  16 fun;   9 num;   9 var)
%            Number of types       :    2 (   0 usr;   1 ari)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   2 prp; 0-2 aty)
%            Number of functors    :    7 (   4 usr;   2 con; 0-2 aty)
%            Number of variables   :    9 (   9   !;   0   ?;   9   :)
% SPC      : TF0_THM_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
%----queens_p =
%----         forall (i in 1..n, j in i + 1..n) (
%----                 p[i]     != p[j]
%----         /\      p[i] + i != p[j] + j
%----         /\      p[i] - i != p[j] - j
%----         );
%----... in terms of decision variables named p:
tff(queens_q_type,type,
    queens_q: $o ).

tff(queens_p_type,type,
    queens_p: $o ).

tff(q_type,type,
    q: $int > $int ).

tff(p_type,type,
    p: $int > $int ).

tff(n_type,type,
    n: $int ).

tff(perm_type,type,
    perm: $int > $int ).

tff(queens_p,axiom,
    ( queens_p
   => ! [I: $int,J: $int] :
        ( ( $lesseq(1,I)
          & $lesseq(I,n)
          & $lesseq($sum(1,I),J)
          & $lesseq(J,n) )
       => ( ( p(I) != p(J) )
          & ( $sum(p(I),I) != $sum(p(J),J) )
          & ( $difference(p(I),I) != $difference(p(J),J) ) ) ) ) ).

%----The permutation function
tff(permutation,axiom,
    ! [I: $int] : ( perm(I) = $difference($sum(1,n),I) ) ).

%----... in terms of decision variables named q:
tff(queens_q,axiom,
    ( ! [I: $int,J: $int] :
        ( ( $lesseq(1,I)
          & $lesseq(I,n)
          & $lesseq($sum(1,I),J)
          & $lesseq(J,n)
          & ( $lesseq($sum(1,I),J)
          <=> $lesseq($sum(1,perm(J)),perm(I)) ) )
       => ( ( q(I) != q(J) )
          & ( $sum(q(I),I) != $sum(q(J),J) )
          & ( $difference(q(I),I) != $difference(q(J),J) ) ) )
   => queens_q ) ).

%----To prove: "queens_p /\ q is a permutation of p => queens_q"
tff(queens_sym,conjecture,
    ( ( queens_p
      & ! [I: $int] : ( q(I) = p(perm(I)) ) )
   => queens_q ) ).

%----Properties of permutations
%----Permutation stays in range 1..n:
tff(permutation_range,axiom,
    ! [I: $int] :
      ( ( $lesseq(1,I)
        & $lesseq(I,n) )
     => ( $lesseq(1,perm(I))
        & $lesseq(perm(I),n) ) ) ).

%----Lemma
tff(permutation_another_one,axiom,
    ! [J: $int,I: $int] : ( $difference(I,J) = $difference(perm(J),perm(I)) ) ).

%------------------------------------------------------------------------------
