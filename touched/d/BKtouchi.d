I_C_T MURCRAG 0 BKtouchcragmoon
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx") Global("BKmoontouch","GLOBAL",0)~ THEN @0
== MURCRAG @1
== BKTOUCHJ @2
== MURCRAG @3
== BKTOUCHJ @4
== MURCRAG @5
== BKTOUCHJ @6
== MURCRAG @7
== BKTOUCHJ @8
== MURCRAG @9
END

APPEND DOGHMA
IF WEIGHT #-1
~~ THEN touch2
SAY @10
= @11
IF ~~ THEN EXTERN BKTOUCHJ doghma3
END
END

EXTEND_BOTTOM DOGHMA 0
IF ~InParty("BKtouchx")Global("BKdoghmatouch","LOCALS",0)Global("BKmoontouch","GLOBAL",0)~ THEN REPLY @12 DO ~SetGlobal("BKdoghmatouch","LOCALS",1)~ GOTO touch2
END

CHAIN IF WEIGHT #-1
~IsValidForPartyDialog("BKtouchx")Global("BKmoontouch","GLOBAL",0)Global("BKbuytouch","GLOBAL",0)~ THEN
DADROW18 touchwin @13
== BKTOUCHJ @14
== DADROW18 @15
== BKTOUCHJ @16
== DADROW18 @17
== BKTOUCHJ @18
== DADROW18 @19 DO ~SetGlobal("BKbuytouch","GLOBAL",1)~ EXTERN BKTOUCHJ touchxmoon



APPEND BKTOUCHJ
IF ~~ touchxmoon
SAY @20
IF ~PartyGoldGT(9999)~ THEN REPLY @21 GOTO doit
IF ~GlobalLT("BKtouchnopay","GLOBAL",4)PartyGoldLT(10000)~ THEN REPLY @22 GOTO nomoney
IF ~GlobalLT("BKtouchnopay","GLOBAL",4)~ THEN REPLY @23 GOTO notpaying
END

IF ~~ doit
SAY @24
IF ~~ THEN DO ~TakePartyGold(10000)SetGlobal("BKmoontouch","GLOBAL",1)SetGlobal("BKtouchnopay","GLOBAL",5)
StartCutScene("BKtoucut")
StartCutSceneMode()~ EXIT
END

IF ~~ nomoney
SAY @25
IF ~~ THEN EXTERN DADROW18 nomoney
END

IF ~~ notpaying
SAY @26
IF ~~ THEN REPLY @27 DO ~SetGlobal("BKtouchnopay","GLOBAL",1)~ GOTO mychance
IF ~PartyGoldGT(9999)~ THEN REPLY @28 GOTO doit
IF ~PartyGoldLT(10000)~ THEN REPLY @28 GOTO nomoney
END

IF ~~ mychance
SAY @29
IF ~~ THEN REPLY @30 DO ~LeaveParty()~ EXIT
IF ~PartyGoldGT(9999)~ THEN REPLY @31 GOTO doit
IF ~PartyGoldLT(10000)~ THEN REPLY @31 GOTO nomoney
END

IF ~~ doghma3
SAY @32 
IF ~~ THEN EXTERN DOGHMA 17
END
END

APPEND DADROW18
IF ~~ nomoney
SAY @33
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~InParty("BKtouchx") Global("BKbuytouch","GLOBAL",1)~ nomoneyreturn
SAY @34
IF ~~ THEN EXTERN BKTOUCHJ touchxmoon
END

IF WEIGHT #-2 ~InParty("BKtouchx") GlobalGT("BKmoontouch","GLOBAL",1)~ paidreturn
SAY @35
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~!InParty("BKtouchx") Global("BKbuytouch","GLOBAL",1)~ paidreturn2
SAY @36
IF ~~ THEN EXIT
END
END
///////////////            Global("BKmoontouch","GLOBAL",0)

A_T_T LYROS 11 ~OR(4)
!InParty("BKtouchx") StateCheck("BKtouchx",CD_STATE_NOTVALID) Dead("BKtouchx") !Global("BKmoontouch","GLOBAL",0)~


I_C_T LYROS 11 BKtouchlyros
== BKTOUCHJ IF ~InParty("BKtouchx") !StateCheck("BKtouchx",CD_STATE_NOTVALID) !Dead("BKtouchx") Global("BKmoontouch","GLOBAL",0)~ THEN @37
== LYROS @38
== BKTOUCHJ @39
== LYROS @40
END

EXTEND_BOTTOM TRGENI01 0
IF ~IsValidForPartyDialog("BKtouchx")
Global("BKmoontouch","GLOBAL",0)~ THEN REPLY @41 GOTO BKtouch1
END

EXTEND_BOTTOM TRGENI01 28
IF ~IsValidForPartyDialog("BKtouchx")
Global("BKmoontouch","GLOBAL",0)~ THEN REPLY @41 GOTO BKtouch1
END

APPEND TRGENI01
IF ~~ BKtouch1
SAY @42 COPY_TRANS TRGENI01 0
END
END

EXTEND_BOTTOM WARSAGE 0
IF ~IsValidForPartyDialog("BKtouchx")
Global("BKmoontouch","GLOBAL",0)~ THEN REPLY @41 GOTO BKtouch1
END

APPEND WARSAGE
IF ~~ BKtouch1
SAY @43
= @44 
IF ~~ THEN EXTERN BKTOUCHJ warsageaid
END
END

APPEND BKTOUCHJ
IF ~~ warsageaid
SAY @45
IF ~~ THEN EXTERN WARSAGE 9
END
END

EXTEND_BOTTOM TOLGER 1
IF ~IsValidForPartyDialog("BKtouchx")
Global("BKmoontouch","GLOBAL",0)~ THEN REPLY @41 GOTO BKtouch1
END

APPEND TOLGER
IF ~~ BKtouch1
SAY @46
IF ~~ THEN EXTERN BKTOUCHJ tolgeraid
END

IF ~~ touchreply
SAY @47
  IF ~~ THEN REPLY #18280 /* ~I'm here now, so you may as well tell me what you would have me do.~ */ GOTO 75
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY #18281 /* ~First I would like to know where Imoen is.~ */ GOTO 3
  IF ~~ THEN REPLY #18282 /* ~Actually, I've changed my mind.  I'll be going.~ */ GOTO 4
END
END

APPEND BKTOUCHJ
IF ~~ tolgeraid
SAY @48
IF ~~ THEN EXTERN TOLGER touchreply
END

IF WEIGHT #-1 ~Global("BKmoontouch","GLOBAL",2)~ touchedmoon
SAY @49
IF ~~ THEN REPLY @50 DO ~SetGlobal("BKmoontouch","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY @51 DO ~SetGlobal("BKmoontouch","GLOBAL",3)~ EXIT
END
END


///////////////
////////////////

//A_T_T UDSILVER 8 ~OR(4)
//!InParty("BKtouchx") StateCheck("BKtouchx",CD_STATE_NOTVALID) Dead("BKtouchx") //!Global("BKmoontouch","GLOBAL",0)~

I_C_T UDSILVER 9 BKtouchsilver
== BKTOUCHJ IF ~InParty("BKtouchx") !StateCheck("BKtouchx",CD_STATE_NOTVALID) !Dead("BKtouchx") Global("BKmoontouch","GLOBAL",0)~ THEN @52
== UDSILVER @53
== BKTOUCHJ @54
== UDSILVER @55
= @56
END

I_C_T HELLJON 7 BKtouchirenicus
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @57 
END

I_C_T HELLJON 8 BKtouchirenicus
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @57 
END

I_C_T HELLJON 9 BKtouchirenicus
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @57 
END

I_C_T HELLJON 10 BKtouchirenicus
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @57 
END

I_C_T BODHI 0 BKtouchbodhi
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @58
END


I_C_T YOSHJ 113 BKtouchsayyoshimo
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @59
END

I_C_T IMOEN2 22 BKtouchleaveimoen
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @60
END

I_C_T UDPHAE01 61 BKtouchphae
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @61
END

I_C_T PLAYER1 5 BKtouchirenicussoul
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @62
END

I_C_T PLAYER1 16 BKtouchirenicusdead
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @63
END

I_C_T PLAYER1 25 BKtouchhell
== BKTOUCHJ IF ~IsValidForPartyDialog("BKtouchx")~ THEN @64
END

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("BKtouchx")
Global("BKtouchtree","GLOBAL",0)~ THEN DO ~SetGlobal("BKtouchtree","GLOBAL",1)~ GOTO P133touch
END

APPEND PLAYER1
IF ~~ P133touch
SAY @65
++ @66 EXTERN BKTOUCHJ bestshot
++ @67 EXTERN BKTOUCHJ notyou
++ @68 EXTERN BKTOUCHJ thanks
END
END

APPEND BKTOUCHJ
IF ~~ bestshot
SAY @69
IF ~~ GOTO treeending
END

IF ~~ treeending
SAY @70
COPY_TRANS PLAYER1 33
END

IF ~~ notyou
SAY @71
IF ~~ GOTO treeending
END

IF ~~ thanks
SAY @72
IF ~~ GOTO treeending
END

IF ~Dead("udbeho01")
Global("PhaereJob","GLOBAL",5)~ jammerseen
SAY @73
IF ~~ THEN EXIT
END

END
