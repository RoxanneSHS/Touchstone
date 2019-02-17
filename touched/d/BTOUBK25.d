BEGIN BTOUBK25

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
CombatCounter(0)
Global("BKkorga25touch","LOCALS",0)~ THEN BKORGA25 touch251
@0 DO ~SetGlobal("BKkorga25touch","LOCALS",1)~
== BTOUBK25 @1
== BKORGA25 @2
== BTOUBK25 @3
== BKORGA25 @4
== BTOUBK25 @5
== BKORGA25 @6 DO ~DisplayStringHead(Myself,16233)~
== BTOUBK25 @7 DO ~DisplayStringHead(Myself,16233)~
= @8 DO ~ApplySpellRES("BKINTOX",Myself)~ // Intoxication
== BTOUBK25 @9 DO ~ApplySpellRES("BKINTOX",Myself)~ // Intoxication
EXIT

CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
Global("BKtou25Cernd","LOCALS",0)~
THEN BTOUBK25 cernd251
@10  DO ~SetGlobal("BKtou25Cernd","LOCALS",1)~
== BCERND25 @11
== BTOUBK25 @12
== BCERND25 @13
== BTOUBK25 @14
== BCERND25 @15
== BTOUBK25 @16
EXIT


CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKMazzy25touch","LOCALS",0)~ THEN BMAZZY25 mazz251
@17 DO ~SetGlobal("BKMazzy25touch","LOCALS",1)~
== BTOUBK25 @18 
== BMAZZY25 @19
== BTOUBK25 @20
== BMAZZY25 @21
= @22
== BTOUBK25 @23
EXIT

CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("BKtou25Anomen","LOCALS",0)~ THEN BTOUBK25 ano251
@24  DO ~SetGlobal("BKtou25Anomen","LOCALS",1)~
== BANOME25 @25
= @26
== BTOUBK25 @27
== BANOME25 @28
== BTOUBK25 @29
EXIT

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKMinsc25touch","LOCALS",0)~ THEN BMINSC25 touch251
@30 DO ~SetGlobal("BKMinsc25touch","LOCALS",1)~
== BTOUBK25 @31 
== BMINSC25 @32
== BTOUBK25 @33
== BMINSC25 @34
== BTOUBK25 @35
== BMINSC25 @36
== BTOUBK25 @37
== BMINSC25 @38
== BTOUBK25 @39
EXIT
////////////////////////
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("BKtouchImoen","LOCALS",0)~ THEN BTOUBK25 imoen1
@40 DO ~SetGlobal("BKtouchImoen","LOCALS",1)~
== BIMOEN25 @41
== BTOUBK25 @42
== BIMOEN25 @43
== BTOUBK25 @44
== BIMOEN25 @45
== BTOUBK25 @46
== BIMOEN25 @47
== BTOUBK25 @48
== BIMOEN25 @49
== BTOUBK25 @50
EXIT
////////////////////////
CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKKeldorntouch","LOCALS",0)~ THEN BKELDO25 touch1
@51 DO ~SetGlobal("BKKeldorntouch","LOCALS",1)~
== BTOUBK25 @52
== BKELDO25 @53
== BTOUBK25 @54
== BKELDO25 @55
== BTOUBK25 @56
== BKELDO25 @57
== BTOUBK25 @58
== BKELDO25 @59
== BTOUBK25 @60
== BKELDO25 @61
EXIT
////////////////////////
/* CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKAerietouch","LOCALS",0)~ THEN BAERIE touch1
~Hello Touchstone, have you ever met an Avariel?~ DO ~SetGlobal("BKAerietouch","LOCALS",1)~
== BTOUBK25 ~Ah pretty lady elf, no Avariel in Great Forest. Did see flying monkey once though!~
== BAERIE25 ~A-Are you comparing me to a flying monkey...I don't know quite what to say to that...~
== BTOUBK25 ~No No No, you not like flying monkey, I just like flying things. Must be pretty bad man cut your wings off, we ever meet that man you tell me and I stick good with my best arrow here!~
== BAERIE25 ~Thank you Touchstone. I do not like to think much on what happened, it hurts too much but I am learning more every day that I spend with <CHARNAME> and you.~
= ~Sometimes I wish I could just go back to those days before I was captured. Flying free among the mountains and trees, almost touching the clouds but I guess that is only foolish dreaming.~
== BTOUBK25 ~Pretty Aerie you no worry, dream good dreams while can is what I say.  Make new dreams with new friends, no more thinking of bad things.~
== BAERIE25 ~That is so nice Touchstone, thank you.~
EXIT      


CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKJaheiratouch","LOCALS",0)~ THEN BJAHEIR touch1
~Teskiira, lle karn Tel`Quessir ma amada. (Touchstone you are making all elves look foolish)~ DO ~SetGlobal("BKJaheiratouch","LOCALS",1)~
== BTOUBK25 ~Jaheira I say no lie, I say no wrong, I say no bad, how I make the People look fools?~
== BJAHEI25 ~This childish prattle you speak, it is almost incomprehensible as Common. I have no doubt that if you tried you could learn Common in a matter of days, why this charade?~
== BTOUBK25 ~Heh, you think I interested in learning Common, I know plenty Common say what I want. I return to Great Forest when I touch the moon, what need for Common?~
== BJAHEI25 ~Do you not care that you look like a brainless dolt to your companions?~
== BTOUBK25 ~Always I not care what other people think, that their problem. I be true in what I say, no matter what others think. <CHARNAME> know this or <PRO_HESHE> tell me!~
= ~You know this true too, you know <CHARNAME> care for you no matter what you look like, only what you *do* matter!~
== BJAHEI25 ~My relationship with <CHARNAME> is not the point here. You seem like a child to the others, why don't you...~
== BTOUBK25 ~To others or to you? Why don't you judge by actions not worry how I speak. I like you Jaheira, we be friends, why you so serious about everything?~
== BJAHEI25 ~We cannot always laugh and have not a care in the world, as things are we must be constantly aware to danger and attack.~
== BTOUBK25 ~You be aware then for both of us, I be over here enjoying myself, not be worrying all the time about someone else.~
EXIT   */

 /////sarevok
CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKSarevoktouch","LOCALS",0)~ THEN BSAREV25 touch1
@62 DO ~SetGlobal("BKSarevoktouch","LOCALS",1)~
== BTOUBK25 @63
== BSAREV25 @64
== BTOUBK25 @65
== BSAREV25 @66
== BTOUBK25 @67
== BSAREV25 @68
== BTOUBK25 @69
== BSAREV25 @70
EXIT

