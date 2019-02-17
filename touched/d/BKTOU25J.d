EXTEND_TOP FATESP 6 #4
  IF ~!Dead("BKtouchx")
!InMyArea("BKtouchx")
Global("BKtouchxsummon","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("BKTOUCH2",[1999.1228],0)
SetGlobal("BKtouchxsummon","GLOBAL",1)~ GOTO 8
END

BEGIN BKTOU25P
BEGIN BKTOU25J
BEGIN BKTOU25D

IF ~Global("BKtouchxsummon","GLOBAL",1)~ THEN summon
SAY @1 
++ @2 DO ~SetGlobal("BKtouchxsummon","GLOBAL",2)~ + aid
++ @3 DO ~SetGlobal("BKtouchxsummon","GLOBAL",2)~ + soapy
++ @4 DO ~SetGlobal("BKtouchxsummon","GLOBAL",2)~ + guesswho
END

IF ~~ soapy
SAY @5
IF ~~ GOTO aid
END

IF ~~ guesswho
SAY @6
IF ~~ GOTO soapy
END

IF ~~ aid
SAY @7
= @8
++ @9 + abyssal
++ @10 + abyssal
END

IF ~~ abyssal
SAY @11
++ @12 DO ~JoinParty()~ EXIT
++ @13 DO ~MoveToPointNoInterrupt([2200.1400])~ EXIT
END

IF ~Global("BKtouchxsummon","GLOBAL",2)~ touch2
SAY @14
++ @15 DO ~JoinParty()~ EXIT
++ @16 EXIT
END

APPEND BKTOU25P

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN kickout
  SAY @17 
  IF ~~ THEN REPLY @18 DO ~JoinParty()~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @19 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT

  IF ~AreaCheck("AR4500")~ THEN REPLY @19 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([2200.1400])
Face(0)~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @20 DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2200.1400],0)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN rejoin
SAY @21 
++ @22 EXIT
++ @23 DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

END

APPEND BKTOU25J
IF ~IsGabber(Player1)
CombatCounter(0)~ THEN BEGIN randomwisdom
SAY @24
+ ~RandomNum(30,1)~ + @25  + touchwiz1
+ ~RandomNum(30,2)~ + @25  + touchwiz2
+ ~RandomNum(30,3)~ + @25  + touchwiz3
+ ~RandomNum(30,4)~ + @25  + touchwiz4
+ ~RandomNum(30,5)~ + @25  + touchwiz5
+ ~RandomNum(30,6)~ + @25  + touchwiz6
+ ~RandomNum(30,7)~ + @25  + touchwiz7
+ ~RandomNum(30,8)~ + @25  + touchwiz8
+ ~RandomNum(30,9)~ + @25  + touchwiz9
+ ~RandomNum(30,10)~ + @25  + touchwiz10
+ ~RandomNum(30,11)~ + @25  + touchwiz11
+ ~RandomNum(30,12)~ + @25  + touchwiz12
+ ~RandomNum(30,13)~ + @25  + touchwiz13
+ ~RandomNum(30,14)~ + @25  + touchwiz14
+ ~RandomNum(30,15)~ + @25  + touchwiz15
+ ~RandomNum(30,16)~ + @25  + touchwiz16
+ ~RandomNum(30,17)~ + @25  + touchwiz17
+ ~RandomNum(30,18)~ + @25  + touchwiz18
+ ~RandomNum(30,19)~ + @25  + touchwiz19
+ ~RandomNum(30,20)~ + @25  + touchwiz20
+ ~RandomNum(30,21)~ + @25  + touchwiz21
+ ~RandomNum(30,22)~ + @25  + touchwiz22
+ ~RandomNum(30,23)~ + @25  + touchwiz23
+ ~RandomNum(30,24)~ + @25  + touchwiz24
+ ~RandomNum(30,25)~ + @25  + touchwiz25
+ ~RandomNum(30,26)~ + @25  + touchwiz26
+ ~RandomNum(30,27)~ + @25  + touchwiz27
+ ~RandomNum(30,28)~ + @25  + touchwiz28
+ ~RandomNum(30,29)~ + @25  + touchwiz29
+ ~RandomNum(30,30)~ + @25  + touchwiz30
++ @26 EXIT
END

IF ~~ THEN BEGIN touchwiz1
SAY @27
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz2
SAY @28
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz3
SAY @29
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz4
SAY @30
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz5
SAY @31
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz6
SAY @32
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz7
SAY @33
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz8
SAY @34
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz9
SAY @35
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz10
SAY @36
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz11
SAY @37
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz12
SAY @38
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz13
SAY @39
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz14
SAY @40
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz15
SAY @41
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz16
SAY @42
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz17
SAY @43
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz18
SAY @44
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz19
SAY @45
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz20
SAY @46
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz21
SAY @47
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz22
SAY @48
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz23
SAY @49
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz24
SAY @50
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz25
SAY @51
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz26
SAY @52
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz27
SAY @53
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz28
SAY @54
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz29
SAY @55
IF ~~ GOTO randomwisdom
END

IF ~~ THEN BEGIN touchwiz30
SAY @56
IF ~~ GOTO randomwisdom
END
END

