BEGIN JL#RUPRT

IF ~NumTimesTalkedTo(0) Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN firstimpressionf
SAY @0
IF ~~ THEN REPLY @1 GOTO ExplainDyes
IF ~~ THEN REPLY @2 GOTO StartShopping
IF ~~ THEN REPLY @3 GOTO SodOff
IF ~~ THEN REPLY @4 DO ~SetGlobal("TalkedToRupertFAI","GLOBAL",1)~ GOTO WhoAreYou
END

IF ~NumTimesTalkedTo(0) Gender(LastTalkedToBy,MALE)~ THEN BEGIN firstimpressionm
SAY @5
=
@6
IF ~~ THEN REPLY @7 GOTO ExplainDyes
IF ~~ THEN REPLY @2 GOTO StartShopping
IF ~~ THEN REPLY @3 GOTO SodOff
IF ~~ THEN REPLY @4 DO ~SetGlobal("TalkedToRupertFAI","GLOBAL",1)~ GOTO WhoAreYou
IF ~~ THEN REPLY @8 GOTO HittingOnMe
END

IF ~NumTimesTalkedToGT(0) Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN returnf
SAY @9
IF ~~ THEN REPLY @10 GOTO StartShopping2
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~Global("TalkedToRupertFAI","GLOBAL",0)~ THEN REPLY @4 DO ~SetGlobal("TalkedToRupertFAI","GLOBAL",1)~ GOTO WhoAreYou
IF ~~ THEN REPLY @18 GOTO SodOff
END

IF ~NumTimesTalkedToGT(0) Gender(LastTalkedToBy,MALE)~ THEN BEGIN returnm
SAY @19
IF ~~ THEN REPLY @10 GOTO StartShopping2
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~Global("TalkedToRupertFAI","GLOBAL",0)~ THEN REPLY @4 DO ~SetGlobal("TalkedToRupertFAI","GLOBAL",1)~ GOTO WhoAreYou
IF ~~ THEN REPLY @18 GOTO SodOff
END

IF ~~ THEN BEGIN ExplainDyes
SAY @20
IF ~~ THEN REPLY @2 GOTO StartShopping
IF ~~ THEN REPLY @3 GOTO SodOff
END

IF ~~ THEN BEGIN StartShopping
SAY @21
IF ~~ THEN REPLY @22 GOTO StartShopping2
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @23 GOTO SodOff
END

IF ~~ THEN BEGIN StartShopping2
SAY @24
=
@25
=
@26
=
@27
=
@28
=
@29
=
@30
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @31 GOTO SodOff
END


IF ~~ THEN BEGIN WhoAreYou
SAY @32
=
@33
IF ~~ THEN REPLY @7 GOTO ExplainDyes
IF ~~ THEN REPLY @2 GOTO StartShopping
IF ~~ THEN REPLY @3 GOTO SodOff
END

IF ~~ THEN BEGIN HittingOnMe
SAY @34
=
@35
=
@36
IF ~~ THEN REPLY @37 GOTO SodOff
IF ~~ THEN REPLY @38 GOTO ExplainDyes
IF ~~ THEN REPLY @2 GOTO StartShopping
IF ~~ THEN REPLY @3 GOTO SodOff
IF ~~ THEN REPLY @39 GOTO SodOff
END




IF ~~ THEN BEGIN SodOff
SAY @40
IF ~~ THEN EXIT
END
