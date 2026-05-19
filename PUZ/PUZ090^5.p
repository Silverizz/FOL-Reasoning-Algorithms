%------------------------------------------------------------------------------
% File     : PUZ090^5 : TPTP v9.2.1. Released v4.0.0.
% Domain   : Puzzles
% Problem  : TPS problem THM210
% Version  : Especial.
% English  : Lewis Carroll's problem of the winds and windows; from the Ninth 
%            Paper on Logic, November 1892.

% Refs     : [Bro09] Brown (2009), Email to Geoff Sutcliffe
% Source   : [Bro09]
% Names    : tps_0336 [Bro09]
%          : THM210 [TPS]

% Status   : Theorem
% Rating   : 0.17 v9.1.0, 0.12 v9.0.0, 0.17 v8.2.0, 0.18 v8.1.0, 0.08 v7.4.0, 0.11 v7.3.0, 0.10 v7.2.0, 0.12 v7.1.0, 0.14 v7.0.0, 0.12 v6.4.0, 0.14 v6.3.0, 0.17 v6.2.0, 0.00 v6.1.0, 0.17 v6.0.0, 0.00 v5.3.0, 0.25 v5.2.0, 0.00 v4.0.0
% Syntax   : Number of formulae    :   14 (   0 unt;  13 typ;   0 def)
%            Number of atoms       :   31 (   0 equ;   0 cnn)
%            Maximal formula atoms :   31 (  31 avg)
%            Number of connectives :   37 (   7   ~;   0   |;  17   &;   0   @)
%                                         (   0 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (  14 avg)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (  13 usr;  13 con; 0-0 aty)
%            Number of variables   :    0 (   0   ^;   0   !;   0   ?;   0   :)
% SPC      : TH0_THM_NEQ_NAR

% Comments : This problem is from the TPS library. Copyright (c) 2009 The TPS
%            project in the Department of Mathematical Sciences at Carnegie
%            Mellon University. Distributed under the Creative Commons copyleft
%            license: http://creativecommons.org/licenses/by-sa/3.0/
%------------------------------------------------------------------------------
thf(cOPEN_WINDOW,type,
    cOPEN_WINDOW: $o ).

thf(cEAST,type,
    cEAST: $o ).

thf(cRHEUMATIC,type,
    cRHEUMATIC: $o ).

thf(cFOGGY,type,
    cFOGGY: $o ).

thf(cOPEN_DOOR,type,
    cOPEN_DOOR: $o ).

thf(cFLUTE,type,
    cFLUTE: $o ).

thf(cSUNSHINE,type,
    cSUNSHINE: $o ).

thf(cFIRE,type,
    cFIRE: $o ).

thf(cGUSTY,type,
    cGUSTY: $o ).

thf(cHEADACHE,type,
    cHEADACHE: $o ).

thf(cSMOKES,type,
    cSMOKES: $o ).

thf(cCOLD,type,
    cCOLD: $o ).

thf(cSMOKE,type,
    cSMOKE: $o ).

thf(cTHM210,conjecture,
    ( ( ( cEAST
       => cSUNSHINE )
      & ( ( cCOLD
          & cFOGGY )
       => cFLUTE )
      & ( ( cFIRE
          & cSMOKE )
       => cOPEN_DOOR )
      & ( ( cCOLD
          & cRHEUMATIC )
       => cFIRE )
      & ( ( cEAST
          & cGUSTY )
       => cSMOKES )
      & ( cOPEN_DOOR
       => ~ cHEADACHE )
      & ( cFOGGY
       => ~ cOPEN_WINDOW )
      & ( ( ~ cGUSTY
          & cFIRE
          & ~ cOPEN_DOOR )
       => ~ cRHEUMATIC )
      & ( cSUNSHINE
       => cFOGGY )
      & ( cFLUTE
       => ~ cOPEN_DOOR )
      & ( ( cFOGGY
          & cEAST )
       => cRHEUMATIC ) )
   => ( cEAST
     => ~ cOPEN_WINDOW ) ) ).

%------------------------------------------------------------------------------
