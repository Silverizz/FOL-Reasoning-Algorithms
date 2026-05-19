%------------------------------------------------------------------------------
% File     : PUZ062-1 : TPTP v9.2.1. Released v3.2.0.
% Domain   : Puzzles
% Problem  : Problem about mutilated chessboard problem
% Version  : [Pau06] axioms : Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    : Mutil__tiling_domino_0_1 [Pau06]

% Status   : Unsatisfiable
% Rating   : 0.86 v9.1.0, 0.90 v9.0.0, 0.80 v8.2.0, 0.90 v8.1.0, 0.84 v7.5.0, 0.89 v7.4.0, 0.88 v7.3.0, 0.83 v7.1.0, 0.75 v7.0.0, 0.80 v6.3.0, 0.73 v6.2.0, 0.90 v6.1.0, 1.00 v6.0.0, 0.90 v5.5.0, 0.95 v5.3.0, 1.00 v5.2.0, 0.94 v5.0.0, 0.93 v4.1.0, 1.00 v3.2.0
% Syntax   : Number of clauses     : 2744 ( 656 unt; 249 nHn;1968 RR)
%            Number of literals    : 6014 (1289 equ;3080 neg)
%            Maximal clause size   :    7 (   2 avg)
%            Maximal term depth    :    8 (   1 avg)
%            Number of predicates  :   87 (  86 usr;   0 prp; 1-3 aty)
%            Number of functors    :  241 ( 241 usr;  51 con; 0-18 aty)
%            Number of variables   : 5702 (1154 sgn)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found.
%------------------------------------------------------------------------------
include('Axioms/MSC001-1.ax').
include('Axioms/MSC001-0.ax').
%------------------------------------------------------------------------------
cnf(cls_Mutil_Ocoloured__insert_0,axiom,
    c_inter(c_Mutil_Ocoloured(c_Divides_Oop_Amod(c_plus(V_i,V_j,tc_nat),c_Numeral_Onumber__of(c_Numeral_OBit(c_Numeral_OBit(c_Numeral_OPls,c_Numeral_Obit_OB1),c_Numeral_Obit_OB0),tc_nat),tc_nat)),c_insert(c_Pair(V_i,V_j,tc_nat,tc_nat),V_t,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)) = c_insert(c_Pair(V_i,V_j,tc_nat,tc_nat),c_inter(c_Mutil_Ocoloured(c_Divides_Oop_Amod(c_plus(V_i,V_j,tc_nat),c_Numeral_Onumber__of(c_Numeral_OBit(c_Numeral_OBit(c_Numeral_OPls,c_Numeral_Obit_OB1),c_Numeral_Obit_OB0),tc_nat),tc_nat)),V_t,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)) ).

cnf(cls_Mutil_Ocoloured__insert_1,axiom,
    ( c_Divides_Oop_Amod(c_plus(V_i,V_j,tc_nat),c_Numeral_Onumber__of(c_Numeral_OBit(c_Numeral_OBit(c_Numeral_OPls,c_Numeral_Obit_OB1),c_Numeral_Obit_OB0),tc_nat),tc_nat) = V_b
    | c_inter(c_Mutil_Ocoloured(V_b),c_insert(c_Pair(V_i,V_j,tc_nat,tc_nat),V_t,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)) = c_inter(c_Mutil_Ocoloured(V_b),V_t,tc_prod(tc_nat,tc_nat)) ) ).

cnf(cls_Mutil_Odomino_Ohoriz_0,axiom,
    c_in(c_insert(c_Pair(V_i,V_j,tc_nat,tc_nat),c_insert(c_Pair(V_i,c_Suc(V_j),tc_nat,tc_nat),c_emptyset,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)),c_Mutil_Odomino,tc_set(tc_prod(tc_nat,tc_nat))) ).

cnf(cls_Mutil_Odomino_Overtl_0,axiom,
    c_in(c_insert(c_Pair(V_i,V_j,tc_nat,tc_nat),c_insert(c_Pair(c_Suc(V_i),V_j,tc_nat,tc_nat),c_emptyset,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)),c_Mutil_Odomino,tc_set(tc_prod(tc_nat,tc_nat))) ).

cnf(cls_Mutil_Odomino__finite_0,axiom,
    ( ~ c_in(V_d,c_Mutil_Odomino,tc_set(tc_prod(tc_nat,tc_nat)))
    | c_in(V_d,c_Finite__Set_OFinites,tc_set(tc_prod(tc_nat,tc_nat))) ) ).

cnf(cls_Mutil_Otiling_OUn_0,axiom,
    ( ~ c_in(V_a,V_A,tc_set(T_a))
    | ~ c_in(V_t,c_Mutil_Otiling(V_A,T_a),tc_set(T_a))
    | c_inter(V_a,V_t,T_a) != c_emptyset
    | c_in(c_union(V_a,V_t,T_a),c_Mutil_Otiling(V_A,T_a),tc_set(T_a)) ) ).

cnf(cls_Mutil_Otiling_Oempty_0,axiom,
    c_in(c_emptyset,c_Mutil_Otiling(V_A,T_a),tc_set(T_a)) ).

cnf(cls_Mutil_Otiling__UnI_0,axiom,
    ( ~ c_in(V_u,c_Mutil_Otiling(V_A,T_a),tc_set(T_a))
    | ~ c_in(V_t,c_Mutil_Otiling(V_A,T_a),tc_set(T_a))
    | c_inter(V_t,V_u,T_a) != c_emptyset
    | c_in(c_union(V_t,V_u,T_a),c_Mutil_Otiling(V_A,T_a),tc_set(T_a)) ) ).

cnf(cls_Mutil_Otiling__domino__finite_0,axiom,
    ( ~ c_in(V_t,c_Mutil_Otiling(c_Mutil_Odomino,tc_prod(tc_nat,tc_nat)),tc_set(tc_prod(tc_nat,tc_nat)))
    | c_in(V_t,c_Finite__Set_OFinites,tc_set(tc_prod(tc_nat,tc_nat))) ) ).

cnf(cls_Set_ODiff__Int__distrib_0,axiom,
    c_inter(V_C,c_minus(V_A,V_B,tc_set(T_a)),T_a) = c_minus(c_inter(V_C,V_A,T_a),c_inter(V_C,V_B,T_a),tc_set(T_a)) ).

cnf(cls_Set_OInt__Un__distrib_0,axiom,
    c_inter(V_A,c_union(V_B,V_C,T_a),T_a) = c_union(c_inter(V_A,V_B,T_a),c_inter(V_A,V_C,T_a),T_a) ).

cnf(cls_conjecture_0,negated_conjecture,
    c_in(v_t,c_Mutil_Otiling(c_Mutil_Odomino,tc_prod(tc_nat,tc_nat)),tc_set(tc_prod(tc_nat,tc_nat))) ).

cnf(cls_conjecture_1,negated_conjecture,
    c_Finite__Set_Ocard(c_inter(c_Mutil_Ocoloured(c_0),v_t,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)) = c_Finite__Set_Ocard(c_inter(c_Mutil_Ocoloured(c_Suc(c_0)),v_t,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)) ).

cnf(cls_conjecture_2,negated_conjecture,
    c_inter(v_a,v_t,tc_prod(tc_nat,tc_nat)) = c_emptyset ).

cnf(cls_conjecture_3,negated_conjecture,
    c_inter(c_Mutil_Ocoloured(c_0),v_a,tc_prod(tc_nat,tc_nat)) = c_insert(c_Pair(v_i,v_j,tc_nat,tc_nat),c_emptyset,tc_prod(tc_nat,tc_nat)) ).

cnf(cls_conjecture_4,negated_conjecture,
    c_inter(c_Mutil_Ocoloured(c_Suc(c_0)),v_a,tc_prod(tc_nat,tc_nat)) = c_insert(c_Pair(v_m,v_n,tc_nat,tc_nat),c_emptyset,tc_prod(tc_nat,tc_nat)) ).

cnf(cls_conjecture_5,negated_conjecture,
    c_Finite__Set_Ocard(c_insert(c_Pair(v_i,v_j,tc_nat,tc_nat),c_inter(c_Mutil_Ocoloured(c_0),v_t,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)) != c_Finite__Set_Ocard(c_insert(c_Pair(v_m,v_n,tc_nat,tc_nat),c_inter(c_Mutil_Ocoloured(c_Suc(c_0)),v_t,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)) ).

%------------------------------------------------------------------------------
