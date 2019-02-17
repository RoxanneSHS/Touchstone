I_C_T FINSOL01 27 BKtouchxascenddecide
== BKTOU25J IF ~InParty("BKtouchx")~ THEN @0
== BKTOU25J IF ~InParty("BKtouchx")~ THEN @1 
END

EXTEND_TOP SARVOLO 9 #7
IF ~InParty("BKtouchx")~ THEN REPLY @2 GOTO vologhar
END

CHAIN SARVOLO vologhar
@3
== BKTOU25J IF ~IsValidForPartyDialog("BKtouchx")~ THEN @4
EXTERN SARVOLO 9


