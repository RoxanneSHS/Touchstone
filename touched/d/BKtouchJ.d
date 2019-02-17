BEGIN BKTOUCHP
BEGIN BKTOUCHJ
BEGIN BKTOUCHD

IF ~NumTimesTalkedTo(0)~ heya
SAY @0
++ @1 + lead
++ @2 + who
++ @3 + getlost
++ @4 + hurry
END

IF ~~ who
SAY @5
IF ~~ GOTO leadon
END

IF ~~ getlost
SAY @6
IF ~~ GOTO leadon
END

IF ~~ hurry
SAY @7
IF ~~ GOTO leadon
END

IF ~~ lead
SAY @8
IF ~~ GOTO leadon
END

IF ~~ leadon
SAY @9
++ @10 + visiting
++ @11 + visiting
++ @12 + runnowrun
END

IF ~~ runnowrun
SAY @13
IF ~~ GOTO visiting
END

IF ~~ visiting
SAY @14
= @15 
= @16 
++ @17 + sense
++ @18 + join
++ @19 + truth
++ @20 + noway
END

IF ~~ sense
SAY @21
++ @22 + name
++ @23 + join
++ @24 + noway
END

IF ~~ join
SAY @25
IF ~~ DO ~SetGlobal("BKtouchconvo","LOCALS",2) JoinParty()~ EXIT
END

IF ~~ name
SAY @26
++ @27 DO ~JoinParty()~ EXIT
++ @28 + noway
END

IF ~~ truth
SAY @29
= @30
IF ~~ GOTO sense
END

IF ~~ noway
SAY @31
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ uglystick2
SAY @32 
++ @33 DO ~SetGlobal("BKtouchconvo","LOCALS",2) JoinParty()~ EXIT
++ @34 EXIT
END

APPEND BKTOUCHP

IF ~Global("BKtouchnopay","GLOBAL",1)~ nopay                                                            //4340,683
SAY @35
IF ~~ DO ~SetGlobal("BKtouchnopay","GLOBAL",2) SetGlobalTimer("BKtouchnopayt","GLOBAL",14400) MoveToPoint([4340.683]) EscapeAreaMove("AR2202",1280,888,15)~ EXIT
END

IF ~Global("BKtouchnopay","GLOBAL",2)GlobalTimerExpired("BKtouchnopayt","GLOBAL")~ earnedindrow
SAY @36
IF ~~ DO ~SetGlobal("BKtouchnopay","GLOBAL",3) SetGlobal("BKtouchfly","GLOBAL",1) ChangeAIScript("BKTOUCH",OVERRIDE) EscapeAreaMove("AR2200",4649,1122,15)~ EXIT
END

IF ~Global("BKtouchnopay","GLOBAL",2)!GlobalTimerExpired("BKtouchnopayt","GLOBAL")~ notearnedindrow
SAY @37
+ ~PartyGoldGT(9999)~ + @38 DO ~SetGlobal("BKtouchnopay","GLOBAL",3)
 SetGlobal("BKbuytouch","GLOBAL",1) SetGlobal("kickout","LOCALS",0) ChangeAIScript("BKTOUCH",OVERRIDE) JoinParty()~ EXIT
+ ~PartyGoldLT(10000)~ + @39 EXIT
++ @40 EXIT
END


IF ~HappinessLT(Myself,-290)~ unhappy
SAY @41 
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("kickout","LOCALS",1)~ join2
SAY @42 
++ @43 DO ~SetGlobal("kickout","LOCALS",0) JoinParty()~ EXIT
++ @44 EXIT
END

IF ~Global("kickout","LOCALS",0)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)~ chap4kick
SAY @45
++ @46 DO ~SetGlobal("kickout","LOCALS",1)~ + leave
++ @47 DO ~JoinParty()~ EXIT
END

IF ~Global("kickout","LOCALS",0)
!GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)OR(2)GlobalLT("BKtouchnopay","GLOBAL",1)GlobalGT("BKtouchnopay","GLOBAL",4)~ pre4kick
SAY @48
++ @49 DO ~SetGlobal("kickout","LOCALS",1)~ + leave
++ @50 DO ~JoinParty()~ EXIT
END

IF ~~ leave
SAY @51
IF ~~ THEN REPLY @52 DO ~EscapeAreaMove("AR0300",2345,495,0)~ EXIT
IF ~~ THEN REPLY @53 EXIT
END

END

I_C_T BKtouchd heya jaheiraelfcomment
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @54
END




APPEND BKTOUCHJ
IF ~IsGabber(Player1)
CombatCounter(0)~ THEN BEGIN randomwisdom
SAY @55 
+ ~RandomNum(30,1)~ + @56  + touchwiz1
+ ~RandomNum(30,2)~ + @56  + touchwiz2
+ ~RandomNum(30,3)~ + @56  + touchwiz3
+ ~RandomNum(30,4)~ + @56  + touchwiz4
+ ~RandomNum(30,5)~ + @56  + touchwiz5
+ ~RandomNum(30,6)~ + @56  + touchwiz6
+ ~RandomNum(30,7)~ + @56  + touchwiz7
+ ~RandomNum(30,8)~ + @56  + touchwiz8
+ ~RandomNum(30,9)~ + @56  + touchwiz9
+ ~RandomNum(30,10)~ + @56  + touchwiz10
+ ~RandomNum(30,11)~ + @56  + touchwiz11
+ ~RandomNum(30,12)~ + @56  + touchwiz12
+ ~RandomNum(30,13)~ + @56  + touchwiz13
+ ~RandomNum(30,14)~ + @56  + touchwiz14
+ ~RandomNum(30,15)~ + @56  + touchwiz15
+ ~RandomNum(30,16)~ + @56  + touchwiz16
+ ~RandomNum(30,17)~ + @56  + touchwiz17
+ ~RandomNum(30,18)~ + @56  + touchwiz18
+ ~RandomNum(30,19)~ + @56  + touchwiz19
+ ~RandomNum(30,20)~ + @56  + touchwiz20
+ ~RandomNum(30,21)~ + @56  + touchwiz21
+ ~RandomNum(30,22)~ + @56  + touchwiz22
+ ~RandomNum(30,23)~ + @56  + touchwiz23
+ ~RandomNum(30,24)~ + @56  + touchwiz24
+ ~RandomNum(30,25)~ + @56  + touchwiz25
+ ~RandomNum(30,26)~ + @56  + touchwiz26
+ ~RandomNum(30,27)~ + @56  + touchwiz27
+ ~RandomNum(30,28)~ + @56  + touchwiz28
+ ~RandomNum(30,29)~ + @56  + touchwiz29
+ ~RandomNum(30,30)~ + @56  + touchwiz30
++ @57 EXIT
END

IF ~~ THEN BEGIN touchwiz1
SAY @58 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz2
SAY @59 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz3
SAY @60 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz4
SAY @61 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz5
SAY @62 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz6
SAY @63 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz7
SAY @64 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz8
SAY @65 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz9
SAY @66 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz10
SAY @67 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz11
SAY @68 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz12
SAY @69 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz13
SAY @70 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz14
SAY @71 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz15
SAY @72 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz16
SAY @73 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz17
SAY @74 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz18
SAY @75 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz19
SAY @76 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz20
SAY @77 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz21
SAY @78 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz22
SAY @79 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz23
SAY @80 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz24
SAY @81 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz25
SAY @82 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz26
SAY @83 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz27
SAY @84 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz28
SAY @85 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz29
SAY @86 
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz30
SAY @87 
IF ~~ GOTO randomwisdom
END
END

