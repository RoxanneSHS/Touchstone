BEGIN BTOUCHBK   ///SoA banter file

IF ~Global("BKtouchconvo","LOCALS",2)~ talk1
SAY @0
IF ~~ DO ~SetGlobal("BKtouchconvo","LOCALS",3)~ GOTO talk1a
END

IF ~~ talk1a
SAY @1
++ @2 + together
++ @3 + imposs
++ @4 + moonstone
++ @5 + crazy
END

IF ~~ crazy
SAY @6
IF ~~ EXIT
END

IF ~~ imposs
SAY @7
= @8
IF ~~ EXIT
END                         

IF ~~ moonstone
SAY @9
++ @10 + crazy
++ @11 + together
END

IF ~~ together
SAY @12
++ @13 + marriage
++ @14 + nice
++ @15 + flying
END

IF ~~ flying
SAY @16
IF ~~ GOTO marriage
END

IF ~~ nice
SAY @17
IF ~~ GOTO marriage
END

IF ~~ marriage
SAY @18
++ @19 + soap
++ @20 + moveon
++ @21 + workout
END

IF ~~ soap
SAY @22
= @23
++ @24 + moveon
++ @25 + moveon
END

IF ~~ moveon
SAY @26
IF ~~ EXIT
END

IF ~~ workout
SAY @27
IF ~~ EXIT
END

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKedwintouch","LOCALS",0)~ THEN BEDWIN touch1
@28 DO ~SetGlobal("BKedwintouch","LOCALS",1)~
== BTOUCHBK @29
== BEDWIN @30
== BTOUCHBK @31
== BEDWIN @32
== BTOUCHBK @33
== BEDWIN @34
== BTOUCHBK @35
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("BKtouchImoen","LOCALS",0)~ THEN BTOUCHBK imoen1
@36 DO ~SetGlobal("BKtouchImoen","LOCALS",1)~
== IMOEN2J @37
== BTOUCHBK @38
== IMOEN2J @39
== BTOUCHBK @40
== IMOEN2J @41
== BTOUCHBK @42
== IMOEN2J @43
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("BKtouchValygar","LOCALS",0)~ THEN BTOUCHBK valygar1
@44
DO ~SetGlobal("BKtouchValygar","LOCALS",1)~
== BVALYGA @45
== BTOUCHBK @46
== BVALYGA @47
== BTOUCHBK @48
== BVALYGA @49
== BTOUCHBK @50
== BVALYGA @51
EXIT

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouch",CD_STATE_NOTVALID)
Global("BKKorgantouch","LOCALS",0)~ THEN BKORGAN touch1
@52 DO ~SetGlobal("BKKorgantouch","LOCALS",1)~
== BTOUCHBK @53
== BKORGAN @54
== BTOUCHBK @55
= @56
== BKORGAN @57 DO ~DisplayStringHead(Myself,16233)~
== BTOUCHBK @58 DO ~DisplayStringHead(Myself,16233)~
== BKORGAN @59 DO ~ApplySpellRES("BKINTOX",Myself)ApplySpellRES("BKINTOX","BKtouchx")~ // Intoxication
EXIT

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKKeldorntouch","LOCALS",0)~ THEN BKELDOR touch1
@60 DO ~SetGlobal("BKKeldorntouch","LOCALS",1)~
== BTOUCHBK @61
== BKELDOR @62
== BTOUCHBK @63
== BKELDOR @64
== BTOUCHBK @65
== BKELDOR @66
== BTOUCHBK @67
== BKELDOR @68
== BTOUCHBK @69
== BKELDOR @70
== BTOUCHBK @71
== BKELDOR @72
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("BKtouchNalia","LOCALS",0)~ THEN BTOUCHBK nalia1
@73 DO ~SetGlobal("BKtouchNalia","LOCALS",1)~
== BNALIA @74
== BTOUCHBK @75
== BNALIA @76
== BTOUCHBK @77
== BNALIA @78
= @79
== BTOUCHBK @80
== BNALIA @81
== BTOUCHBK @82
== BNALIA @83
EXIT


CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
Global("BKtouchHD","LOCALS",0)~ THEN BTOUCHBK hairy1
@84 DO ~SetGlobal("BKtouchHD","LOCALS",1)~
== BHAERDA @85
== BTOUCHBK @86
== BHAERDA @87
== BTOUCHBK @88
== BHAERDA @89
== BTOUCHBK @90
== BHAERDA @91
== BTOUCHBK @92
== BHAERDA @93
= @94
== BTOUCHBK @95
== BHAERDA @96
EXIT

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKAerietouch","LOCALS",0)~ THEN BAERIE touch1
@97 DO ~SetGlobal("BKAerietouch","LOCALS",1)~
== BTOUCHBK @98
== BAERIE @99
== BTOUCHBK @100
== BAERIE @101
= @102
== BTOUCHBK @103
== BAERIE @104
EXIT


CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKJaheiratouch","LOCALS",0)~ THEN BJAHEIR touch1
@105 DO ~SetGlobal("BKJaheiratouch","LOCALS",1)~
== BTOUCHBK @106
== BJAHEIR @107
== BTOUCHBK @108
== BJAHEIR @109
== BTOUCHBK @110
= @111
== BJAHEIR @112
== BTOUCHBK @113
== BJAHEIR @114
== BTOUCHBK @115
EXIT       

CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("BKtouchJan","LOCALS",0)~ THEN BTOUCHBK jan1
@116 DO ~SetGlobal("BKtouchJan","LOCALS",1)~
== BJAN @117
== BTOUCHBK @118
== BJAN @119
== BTOUCHBK @120
== BJAN @121
== BTOUCHBK @122
== BJAN @123
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BKtouchvic","LOCALS",0)~ THEN BTOUCHBK vicscar
@124 DO ~SetGlobal("BKtouchvic","LOCALS",1)~
== BVICONI @125
== BTOUCHBK @126
== BVICONI @127
== BTOUCHBK @128
== BVICONI @129
== BTOUCHBK @130
== BVICONI @131
EXIT

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("BKtouchMazzy","LOCALS",0)
AreaType(FOREST)~ THEN BTOUCHBK mazlady
@132 DO ~SetGlobal("BKtouchMazzy","LOCALS",1)~
== BMAZZY @133
== BTOUCHBK @134
== BMAZZY @135
== BTOUCHBK @136
== BMAZZY @137
== BTOUCHBK @138
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("BKtouchMinsc","LOCALS",0)~ THEN BTOUCHBK minsc1
@139 DO ~SetGlobal("BKtouchMinsc","LOCALS",1)~
== BMINSC @140
== BTOUCHBK @141
== BMINSC @142
== BTOUCHBK @143
== BMINSC @144
== BTOUCHBK @145
EXIT
///////////////////
/////Round Two/////
///////////////////
CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKedwintouch2","LOCALS",0)~ THEN BEDWIN touch2
@146 DO ~SetGlobal("BKedwintouch2","LOCALS",1)~
== BTOUCHBK @147
== BEDWIN @148
== BTOUCHBK @149
== BEDWIN @150
== BTOUCHBK @151
== BEDWIN @152
== BTOUCHBK @153
== BEDWIN @154
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("BKtouchImoen2","LOCALS",0)~ THEN BTOUCHBK imoen2
@155 DO ~SetGlobal("BKtouchImoen2","LOCALS",1)~
== IMOEN2J @156
== BTOUCHBK @157
== IMOEN2J @158
== BTOUCHBK @159
== IMOEN2J @160
== BTOUCHBK @161
== IMOEN2J @162
== BTOUCHBK @163
== IMOEN2J @164
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("BKtouchValygar2","LOCALS",0)~ THEN BTOUCHBK valygar2
@165
DO ~SetGlobal("BKtouchValygar2","LOCALS",1)~
== BVALYGA @166
== BTOUCHBK @167
== BVALYGA @168
== BTOUCHBK @169
== BVALYGA @170
== BTOUCHBK @171
== BVALYGA @172
EXIT

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouch",CD_STATE_NOTVALID)
Global("BKKorgantouch2","LOCALS",0)~ THEN BKORGAN touch2
@173 DO ~SetGlobal("BKKorgantouch2","LOCALS",1)~
== BTOUCHBK @174
== BKORGAN @175
== BTOUCHBK @176
== BKORGAN @177
== BTOUCHBK @178
== BKORGAN @179
EXIT

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKKeldorntouch2","LOCALS",0)~ THEN BKELDOR touch2
@180 DO ~SetGlobal("BKKeldorntouch2","LOCALS",1)~
== BTOUCHBK @181
== BKELDOR @182
== BTOUCHBK @183
== BKELDOR @184
== BTOUCHBK @185
== BKELDOR @186
== BTOUCHBK @187
== BKELDOR @188
== BTOUCHBK @189
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("BKtouchNalia2","LOCALS",0)~ THEN BTOUCHBK nalia2
@190 DO ~SetGlobal("BKtouchNalia2","LOCALS",1)~
== BNALIA @191
== BTOUCHBK @192
== BNALIA @193
== BTOUCHBK @194
== BNALIA @195
== BTOUCHBK @196
== BNALIA @197
== BTOUCHBK @198
== BNALIA @199
EXIT
////////incomplete
/*

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
Global("BKtouchHD2","LOCALS",0)~ THEN BTOUCHBK hairy2
@84 DO ~SetGlobal("BKtouchHD2","LOCALS",1)~
== BHAERDA @85
== BTOUCHBK @86
== BHAERDA @87
== BTOUCHBK @88
== BHAERDA @89
== BTOUCHBK @90
== BHAERDA @91
== BTOUCHBK @92
== BHAERDA @93
= @94
== BTOUCHBK @95
== BHAERDA @96
EXIT

CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKAerietouch2","LOCALS",0)~ THEN BAERIE touch2
@97 DO ~SetGlobal("BKAerietouch2","LOCALS",1)~
== BTOUCHBK @98
== BAERIE @99
== BTOUCHBK @100
== BAERIE @101
= @102
== BTOUCHBK @103
== BAERIE @104
EXIT


CHAIN IF ~InParty("BKtouchx")
See("BKtouchx")
!StateCheck("BKtouchx",CD_STATE_NOTVALID)
Global("BKJaheiratouch2","LOCALS",0)~ THEN BJAHEIR touch2
@105 DO ~SetGlobal("BKJaheiratouch2","LOCALS",1)~
== BTOUCHBK @106
== BJAHEIR @107
== BTOUCHBK @108
== BJAHEIR @109
== BTOUCHBK @110
= @111
== BJAHEIR @112
== BTOUCHBK @113
== BJAHEIR @114
== BTOUCHBK @115
EXIT       

CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("BKtouchJan2","LOCALS",0)~ THEN BTOUCHBK jan2
@116 DO ~SetGlobal("BKtouchJan2","LOCALS",1)~
== BJAN @117
== BTOUCHBK @118
== BJAN @119
== BTOUCHBK @120
== BJAN @121
== BTOUCHBK @122
== BJAN @123
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BKtouchvic2","LOCALS",0)~ THEN BTOUCHBK vicscar2
@124 DO ~SetGlobal("BKtouchvic2","LOCALS",1)~
== BVICONI @125
== BTOUCHBK @126
== BVICONI @127
== BTOUCHBK @128
== BVICONI @129
== BTOUCHBK @130
== BVICONI @131
EXIT

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("BKtouchMazzy2","LOCALS",0)
AreaType(FOREST)~ THEN BTOUCHBK mazlady2
@132 DO ~SetGlobal("BKtouchMazzy2","LOCALS",1)~
== BMAZZY @133
== BTOUCHBK @134
== BMAZZY @135
== BTOUCHBK @136
== BMAZZY @137
== BTOUCHBK @138
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("BKtouchMinsc2","LOCALS",0)~ THEN BTOUCHBK minsc2
@139 DO ~SetGlobal("BKtouchMinsc2","LOCALS",1)~
== BMINSC @140
== BTOUCHBK @141
== BMINSC @142
== BTOUCHBK @143
== BMINSC ~Minsc and Boo kick evils butt all the way from here to Great Forest (not hit any trees though, tree's good).~
== BTOUCHBK @145
EXIT 

DO JOURNAL ~Touching the Moon

I have met an odd elf called Touch-the-Moon or Touchstone to his friends. He is on a quest to touch the moon. I seem to be picking up all sorts of strangeness on my journies.~

 */

