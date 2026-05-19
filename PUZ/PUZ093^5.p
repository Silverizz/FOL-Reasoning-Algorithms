%------------------------------------------------------------------------------
% File     : PUZ093^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Puzzles
% Problem  : TPS problem from BASIC-HO-EQ-THMS
% Version  : Especial.
% English  :

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_1207 [Bro09]

% Status   : Theorem
% Rating   : 0.00 v7.4.0, 0.22 v7.2.0, 0.12 v7.0.0, 0.14 v6.4.0, 0.17 v6.3.0, 0.20 v6.2.0, 0.00 v6.1.0, 0.14 v5.5.0, 0.17 v5.4.0, 0.20 v5.3.0, 0.40 v5.2.0, 0.20 v4.1.0, 0.00 v4.0.1, 0.33 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :   32 (  32 equ;   0 cnn)
%            Maximal formula atoms :   32 (  32 avg)
%            Number of connectives :  107 (  12   ~;   5   |;  19   &;  64   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (  25 avg)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    1 (   0 usr;   0 con; 2-2 aty)
%            Number of variables   :   13 (   0   ^;   1   !;  12   ?;  13   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%------------------------------------------------------------------------------
thf(cSIXFRIENDS_PTH,conjecture,
    ? [Xa: $i,Xaa: $i,Xb: $i,Xbb: $i,Xc: $i,Xcc: $i,Xd: $i,Xdd: $i,Xe: $i,Xee: $i,Xh: $i,Xhh: $i] :
    ! [P: $i > $i] :
      ( ( ( ( ( ( P @ Xa )
              = ( P @ Xaa ) )
            & ( ( P @ Xb )
              = ( P @ Xbb ) )
            & ( ( P @ Xe )
              = ( P @ Xhh ) ) )
         => ( ( P @ Xc )
            = ( P @ Xdd ) ) )
        & ( ( ( ( P @ Xa )
              = ( P @ Xaa ) )
            & ( ( P @ Xh )
              = ( P @ Xhh ) )
            & ( ( P @ Xb )
              = ( P @ Xcc ) ) )
         => ( ( P @ Xd )
           != ( P @ Xee ) ) )
        & ( ( ( ( P @ Xc )
              = ( P @ Xcc ) )
            & ( ( P @ Xcc )
              = ( P @ Xd ) )
            & ( ( P @ Xd )
              = ( P @ Xdd ) )
            & ( ( P @ Xa )
             != ( P @ Xbb ) ) )
         => ( ( P @ Xe )
           != ( P @ Xhh ) ) )
        & ( ( ( ( P @ Xa )
              = ( P @ Xaa ) )
            & ( ( P @ Xd )
              = ( P @ Xdd ) )
            & ( ( P @ Xb )
             != ( P @ Xcc ) ) )
         => ( ( P @ Xe )
            = ( P @ Xhh ) ) )
        & ( ( ( ( P @ Xe )
              = ( P @ Xee ) )
            & ( ( P @ Xh )
              = ( P @ Xhh ) )
            & ( ( P @ Xc )
              = ( P @ Xdd ) ) )
         => ( ( P @ Xa )
           != ( P @ Xbb ) ) )
        & ( ( ( ( P @ Xb )
              = ( P @ Xbb ) )
            & ( ( P @ Xbb )
              = ( P @ Xc ) )
            & ( ( P @ Xc )
              = ( P @ Xcc ) )
            & ( ( P @ Xe )
             != ( P @ Xhh ) ) )
         => ( ( P @ Xd )
            = ( P @ Xee ) ) ) )
     => ( ( ( P @ Xa )
         != ( P @ Xaa ) )
        | ( ( P @ Xb )
         != ( P @ Xbb ) )
        | ( ( P @ Xc )
         != ( P @ Xcc ) )
        | ( ( P @ Xd )
         != ( P @ Xdd ) )
        | ( ( P @ Xe )
         != ( P @ Xee ) )
        | ( ( P @ Xh )
         != ( P @ Xhh ) ) ) ) ).

%------------------------------------------------------------------------------
