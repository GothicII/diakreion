


Aeternitas's Script Packet v 1.0
================================

Using this Packet you understand to put the following note in the credits of your modification:

Aeternitas's Script Packet (made by Aeternitas, http://darkforests.info/)


Contact:
--------

You may contact me at http://darkforests.info/forum/, where my nick is Aeternitas. Or at http://worldofgothic.de, where my nick is Atmus.

Homepage of Packet:
http://darkforests.info/pages/web/projects/aspacket.html

New version announce topic:
http://darkforests.info/forum/viewtopic.php?f=8&t=1279

Bug tracker:
http://darkforests.info/forum/viewtopic.php?f=8&t=1281

Discussion topic:
http://darkforests.info/forum/viewtopic.php?f=8&t=1280

Suggestion topic:
http://darkforests.info/forum/viewtopic.php?f=8&t=1282


Functionality:
--------------

- effective spawning of items and NPCs.
- algorithms for creation of teachers (normally you need cca 30 lines of code to create one teacher; with my packet you need just one line).


Installation (already made by Diakreion!!!):
-------------

1) Copy Myfunctions.d into the _WORK\DATA\SCRIPTS\CONTENT\STORY folder.

2) Copy myspawn.d into _WORK\DATA\SCRIPTS\CONTENT\STORY\NPC folder.

3) Into Gothic.scr (_WORK\DATA\SCRIPTS\CONTENT) between line STORY\B_Content\C_ADDON_KNOWS_SCHNAPS.d and STORY\DIALOGE\DIA*.d put the line STORY\MyFunctions.d.

4) Into Text.d (_WORK\DATA\SCRIPTS\CONTENT\STORY) at line cca 888 add the following two lines:

const string PRINT_LearnHP1 = "HP + 1";
const string PRINT_LearnHP5 = "HP + 5";

5) Into B_GetLearnCostAttribute.d (_WORK\DATA\SCRIPTS\CONTENT\STORY\B_STORY) before the text "return kosten" add the following code:

// ------ Kosten für HITPOINTS MAX ------
  if (attribut == ATR_HITPOINTS_MAX)
  {		
    if (oth.attribute[ATR_HITPOINTS] >= 120)       { kosten = (5); }
      else if (oth.attribute[ATR_HITPOINTS] >= 90) { kosten = (4); }
      else if (oth.attribute[ATR_HITPOINTS] >= 60) { kosten = (3); }
      else if (oth.attribute[ATR_HITPOINTS] >= 30) { kosten = (2); }
      else                                         { kosten = (1); };
   };
   
6) Into B_TeachAttributePoints.d (_WORK\DATA\SCRIPTS\CONTENT\STORY\B_STORY) replace the following:

// ------ falscher Parameter ------
  if (attrib!=ATR_STRENGTH) && (attrib!=ATR_DEXTERITY) 
    && (attrib!=ATR_MANA_MAX)

by the following:

// ------ falscher Parameter ------
  if (attrib!=ATR_STRENGTH) && (attrib!=ATR_DEXTERITY) 
    && (attrib!=ATR_MANA_MAX) && (attrib!=ATR_HITPOINTS_MAX)

and replace the following:

// ------ Lernen NICHT über teacherMax ------
  var int realAttribute;
  if (attrib == ATR_STRENGTH) {	realAttribute = oth.attribute[ATR_STRENGTH]; } // Umwandeln von const-Parameter in VAR für folgende If-Abfrage
  else if (attrib == ATR_DEXTERITY) { realAttribute = oth.attribute[ATR_DEXTERITY]; }
  else if (attrib == ATR_MANA_MAX) { realAttribute = oth.attribute[ATR_MANA_MAX]; };

by the following:

// ------ Lernen NICHT über teacherMax ------
  var int realAttribute;
  if (attrib == ATR_STRENGTH) {	realAttribute = oth.attribute[ATR_STRENGTH]; } // Umwandeln von const-Parameter in VAR für folgende If-Abfrage
  else if (attrib == ATR_DEXTERITY) { realAttribute = oth.attribute[ATR_DEXTERITY]; }
  else if (attrib == ATR_MANA_MAX) { realAttribute = oth.attribute[ATR_MANA_MAX]; }
  else if (attrib == ATR_HITPOINTS_MAX) { realAttribute = oth.attribute[ATR_HITPOINTS_MAX]; };  

  
Links:
------

Gothic Modding Wiki (examples of use of Packet - the teacher's):
- http://darkforests.info/pages/web/mw_cz/d20.html
- http://darkforests.info/pages/web/mw_cz/d24.html
- http://darkforests.info/pages/web/mw_cz/d25.html
- http://darkforests.info/pages/web/mw_cz/d26.html

Another examples of use (the spawning):
---------------------------------------

SpawnCreatureA3(Giant_Rat,YGiant_Rat,YGiant_Rat,"FP_ROAM_006",1);

spawns one big rat and two small rats at freepoint FP_ROAM_006.

SpawnCreatureA3(Giant_Rat,YGiant_Rat,YGiant_Rat,"FP_ROAM_006",3);

spawms three big rats and six small rats.

You can use the following functions:

SpawnCreatureA1
SpawnCreatureA2
SpawnCreatureA3
SpawnCreatureA4
SpawnCreatureA5

and 

SpawnItemA1
SpawnItemA2
SpawnItemA3
SpawnItemA4
SpawnItemA5

The number by the letter A means how many names of creatures you may write.

Examples:

SpawnCreatureA2(YGiant_Rat,Giant_Rat,"FP_ROAM_021",2);
SpawnCreatureA1(Giant_Rat,"FP_ROAM_025",4);
SpawnItemA3(ItMw_HolzAxt,ItMw_HolzAxt_h,ItLsTorch,"T1A",1);
SpawnCreatureA2(Giant_Rat,YGiant_Rat,"0058A5",3);

