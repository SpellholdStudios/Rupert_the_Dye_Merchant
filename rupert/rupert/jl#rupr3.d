BEGIN JL#RUPR3

IF ~NumTimesTalkedTo(0)~ THEN BEGIN saradushmeeting
SAY @0
=
@1
IF ~~ THEN REPLY @2 DO ~SetGlobal("TalkedToRupertSaradush","GLOBAL",1)~ GOTO ExplainDyes
IF ~~ THEN REPLY @3 DO ~SetGlobal("TalkedToRupertSaradush","GLOBAL",1)~ GOTO StartShopping
IF ~Global("TalkedToRupertAthkatla","GLOBAL",0)~ THEN REPLY @4 DO ~SetGlobal("TalkedToRupertSaradush","GLOBAL",2)~ GOTO WhoAreYou
IF ~GlobalGT("TalkedToRupertAthkatla","GLOBAL",0)~ THEN REPLY @5 DO ~SetGlobal("TalkedToRupertSaradush","GLOBAL",2)~ GOTO WeMeetAgain
IF ~~ THEN REPLY @6 DO ~SetGlobal("TalkedToRupertSaradush","GLOBAL",1)~ GOTO SodOff
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN return
SAY @7
IF ~~ THEN REPLY @8 GOTO StartShopping2
IF ~~ THEN REPLY @9 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @10 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~Global("TalkedToRupertAthkatla","GLOBAL",0) Global("TalkedToRupertSaradush","GLOBAL",1)~ THEN REPLY @4 DO ~SetGlobal("TalkedToRupertSaradush","GLOBAL",2)~ GOTO WhoAreYou
IF ~GlobalGT("TalkedToRupertAthkatla","GLOBAL",0) Global("TalkedToRupertSaradush","GLOBAL",1)~ THEN REPLY @16 DO ~SetGlobal("TalkedToRupertSaradush","GLOBAL",2)~ GOTO WeMeetAgain
IF ~~ THEN REPLY @17 GOTO SodOff
END

IF ~~ THEN BEGIN ExplainDyes
SAY @18
IF ~~ THEN REPLY @19 GOTO StartShopping
IF ~~ THEN REPLY @20 GOTO SodOff
END

IF ~~ THEN BEGIN StartShopping
SAY @21
IF ~~ THEN REPLY @22 GOTO StartShopping2
IF ~~ THEN REPLY @9 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @10 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
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
IF ~~ THEN REPLY @9 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @10 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @30 GOTO SodOff
END


IF ~~ THEN BEGIN WhoAreYou
SAY @31
=
@32
IF ~~ THEN REPLY @33 GOTO ExplainDyes
IF ~~ THEN REPLY @34 GOTO StartShopping
IF ~~ THEN REPLY @35 GOTO SodOff
END

IF ~~ THEN BEGIN WeMeetAgain
SAY @36
=
@32
IF ~~ THEN REPLY @37 GOTO ExplainDyes
IF ~~ THEN REPLY @34 GOTO StartShopping
IF ~~ THEN REPLY @38 GOTO SodOff
END




IF ~~ THEN BEGIN SodOff
SAY @39
=
@40
IF ~~ THEN EXIT
END
