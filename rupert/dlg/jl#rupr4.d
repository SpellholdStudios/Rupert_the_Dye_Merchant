BEGIN JL#RUPR4

IF ~NumTimesTalkedTo(0)~ THEN BEGIN amkethranhmeeting
SAY @0
=
@1
=
@2
IF ~~ THEN REPLY @3 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",1)~ GOTO ExplainDyes
IF ~~ THEN REPLY @4 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",1)~ GOTO StartShopping
IF ~Global("TalkedToRupertSaradush","GLOBAL",0)~ THEN REPLY @5 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",2)~ GOTO WhoAreYou
IF ~GlobalGT("TalkedToRupertSaradush","GLOBAL",0)~ THEN REPLY @6 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",2)~ GOTO HaveABrother
IF ~GlobalGT("TalkedToRupertSaradush","GLOBAL",0)~ THEN REPLY @7 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",2)~ GOTO AreYouRupert
IF ~~ THEN REPLY @8 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",1)~ GOTO SodOff
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN amkethranreturn
SAY @9
IF ~~ THEN REPLY @10 GOTO StartShopping2
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~Global("TalkedToRupertSaradush","GLOBAL",0) Global("TalkedToRupertAmkethran","GLOBAL",1)~ THEN REPLY @5 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",2)~ GOTO WhoAreYou
IF ~GlobalGT("TalkedToRupertSaradush","GLOBAL",0) Global("TalkedToRupertAmkethran","GLOBAL",1)~ THEN REPLY @18 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",2)~ GOTO HaveABrother
IF ~GlobalGT("TalkedToRupertSaradush","GLOBAL",0) Global("TalkedToRupertAmkethran","GLOBAL",1)~ THEN REPLY @19 DO ~SetGlobal("TalkedToRupertAmkethran","GLOBAL",2)~ GOTO AreYouRupert
IF ~~ THEN REPLY @20 GOTO SodOff
END



IF ~~ THEN BEGIN WhoAreYou
SAY @21
IF ~~ THEN REPLY @22 GOTO ExplainDyes
IF ~~ THEN REPLY @23 GOTO StartShopping
IF ~~ THEN REPLY @24 GOTO SodOff
END


IF ~~ THEN BEGIN HaveABrother
SAY @25
IF ~~ THEN REPLY @26 GOTO AreYouRupert
IF ~~ THEN REPLY @27 GOTO AreYouRupert
IF ~~ THEN REPLY @28 GOTO AreYouRupert
IF ~~ THEN REPLY @29 GOTO NotBelieveThat
IF ~Global("JL#CheckEdwinsGender","GLOBAL",1)~ THEN REPLY @30 GOTO AreYouRupert
END


IF ~~ THEN BEGIN AreYouRupert
SAY @31
IF ~IsValidForPartyDialogue("Edwin")~ THEN EXTERN ~EDWIN25J~ JL#RupertAndEdwin
IF ~!IsValidForPartyDialogue("Edwin")~ THEN EXTERN ~JL#RUPR4~ AreYouRupert2
END

IF ~~ THEN BEGIN AreYouRupert2
SAY @32
IF ~Global("JL#CheckEdwinsGender","GLOBAL",1) IsValidForPartyDialogue("Edwin")~ THEN REPLY @33 EXTERN ~EDWIN25J~ JL#LooksGoodOnYou
IF ~~ THEN REPLY @34 GOTO RupertDoesNotMind
IF ~~ THEN REPLY @35 GOTO RupertDoesNotMind
IF ~~ THEN REPLY @36 GOTO RupertDoesNotMind
END

IF ~~ THEN BEGIN NotBelieveThat
SAY @37
=
@38
IF ~~ THEN REPLY @39 GOTO StartShopping2
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @40 GOTO SodOff
END

IF ~~ THEN BEGIN LooksGoodOnYou2
SAY @41
IF ~~ THEN REPLY @42 GOTO LeaveYouToIt
IF ~~ THEN REPLY @43 GOTO StartShopping
IF ~~ THEN REPLY @44 GOTO SodOff
END


IF ~~ THEN BEGIN RupertAndEdwin2
SAY @45
=
@46
IF ~~ THEN REPLY @35 GOTO RupertDoesNotMind
IF ~Global("JL#CheckEdwinsGender","GLOBAL",1) IsValidForPartyDialogue("Edwin")~ THEN REPLY @33 EXTERN ~EDWIN25J~ JL#LooksGoodOnYou
IF ~~ THEN REPLY @34 GOTO RupertDoesNotMind
IF ~~ THEN REPLY @36 GOTO RupertDoesNotMind
END


IF ~~ THEN BEGIN RupertDoesNotMind
SAY @47
=
@48
IF ~~ THEN REPLY @49 GOTO QuiteFascinating
IF ~~ THEN REPLY @50 GOTO StartShopping
IF ~~ THEN REPLY @51 GOTO SodOff
IF ~~ THEN REPLY @52 GOTO GetAwayYouFreak
END


IF ~~ THEN BEGIN QuiteFascinating
SAY @53
IF ~~ THEN REPLY @39 GOTO StartShopping2
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @8 GOTO SodOff
END



IF ~~ THEN BEGIN ExplainDyes
SAY @54
IF ~Global("OMGWTFHotPink","GLOBAL",0) IsValidForPartyDialogue("Imoen2")~ THEN EXTERN ~IMOEN25J~ JL#HotPink
IF ~~ THEN REPLY @23 GOTO StartShopping
IF ~~ THEN REPLY @8 GOTO SodOff
END


IF ~~ THEN BEGIN StartShopping
SAY @55
IF ~~ THEN REPLY @39 GOTO StartShopping2
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @56 GOTO SodOff
END

IF ~~ THEN BEGIN StartShopping2
SAY @57
=
@58
=
@59
=
@60
=
@61
=
@62
IF ~~ THEN REPLY @11 DO ~StartStore("JL#RUP_A",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 DO ~StartStore("JL#RUP_B",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @13 DO ~StartStore("JL#RUP_C",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @14 DO ~StartStore("JL#RUP_D",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @15 DO ~StartStore("JL#RUP_E",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @16 DO ~StartStore("JL#RUP_F",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @17 DO ~StartStore("JL#RUP_G",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @63 GOTO SodOff
END



IF ~~ THEN BEGIN LeaveYouToIt
SAY @64
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GetAwayYouFreak
SAY @65
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SodOff
SAY @66
IF ~~ THEN EXIT
END



APPEND EDWIN25J

IF ~~ THEN BEGIN JL#RupertAndEdwin
SAY @67
IF ~~ THEN EXTERN ~JL#RUPR4~ RupertAndEdwin2
END

IF ~~ THEN BEGIN JL#LooksGoodOnYou
SAY @68
IF ~~ THEN EXTERN ~JL#RUPR4~ LooksGoodOnYou2
END
END


APPEND IMOEN25J

IF ~~ THEN BEGIN JL#HotPink
SAY @69
IF ~~ THEN REPLY @70 DO ~SetGlobal("OMGWTFHotPink","GLOBAL",1)~ EXTERN ~IMOEN25J~ JL#NoHotPink
IF ~~ THEN REPLY @23 DO ~SetGlobal("OMGWTFHotPink","GLOBAL",1)~ EXTERN ~JL#RUPR4~ StartShopping
IF ~~ THEN REPLY @8 DO ~SetGlobal("OMGWTFHotPink","GLOBAL",1)~ EXTERN ~JL#RUPR4~ SodOff
END

IF ~~ THEN BEGIN JL#NoHotPink
SAY @71
IF ~~ THEN EXIT
END
END
