%------------------------------------------------------------------------------
% File     : PUZ092^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Puzzles
% Problem  : TPS problem from BASIC-HO-EQ-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_1179 [Bro09]

% Status   : Theorem
% Rating   : 0.00 v9.0.0, 0.10 v8.2.0, 0.08 v8.1.0, 0.09 v7.5.0, 0.14 v7.4.0, 0.22 v7.2.0, 0.12 v7.1.0, 0.25 v7.0.0, 0.29 v6.4.0, 0.33 v6.3.0, 0.40 v6.2.0, 0.29 v6.1.0, 0.43 v5.5.0, 0.33 v5.4.0, 0.40 v5.1.0, 0.60 v5.0.0, 0.40 v4.1.0, 0.67 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :   32 (  32 equ;   0 cnn)
%            Maximal formula atoms :   32 (  32 avg)
%            Number of connectives :   43 (  12   ~;   5   |;  19   &;   0   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (  24 avg)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    1 (   0 usr;   0 con; 2-2 aty)
%            Number of variables   :   12 (   0   ^;  12   !;   0   ?;  12   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%------------------------------------------------------------------------------
thf(cSIXFRIENDS_EASIER,conjecture,
    ! [ACRES: $i,MRSACRES: $i,BARRY: $i,MRSBARRY: $i,COLE: $i,MRSCOLE: $i,DIX: $i,MRSDIX: $i,EDEN: $i,MRSEDEN: $i,HALL: $i,MRSHALL: $i] :
      ( ( ( ( ( ACRES = MRSACRES )
            & ( BARRY = MRSBARRY )
            & ( EDEN = MRSHALL ) )
         => ( COLE = MRSDIX ) )
        & ( ( ( ACRES = MRSACRES )
            & ( HALL = MRSHALL )
            & ( BARRY = MRSCOLE ) )
         => ( DIX != MRSEDEN ) )
        & ( ( ( COLE = MRSCOLE )
            & ( DIX = MRSDIX )
            & ( DIX = COLE )
            & ( ACRES != MRSBARRY ) )
         => ( EDEN != MRSHALL ) )
        & ( ( ( ACRES = MRSACRES )
            & ( DIX = MRSDIX )
            & ( BARRY != MRSCOLE ) )
         => ( EDEN = MRSHALL ) )
        & ( ( ( EDEN = MRSEDEN )
            & ( HALL = MRSHALL )
            & ( COLE = MRSDIX ) )
         => ( ACRES != MRSBARRY ) )
        & ( ( ( BARRY = MRSBARRY )
            & ( COLE = MRSCOLE )
            & ( COLE = BARRY )
            & ( EDEN != MRSHALL ) )
         => ( DIX = MRSEDEN ) ) )
     => ( ( ACRES != MRSACRES )
        | ( BARRY != MRSBARRY )
        | ( COLE != MRSCOLE )
        | ( DIX != MRSDIX )
        | ( EDEN != MRSEDEN )
        | ( HALL != MRSHALL ) ) ) ).

%------------------------------------------------------------------------------
