////////////////////////////////////////////////
///
///  AETERNITAS'S SCRIPT PACKET
///
///  CREATED BY AETERNITAS
///
///  http://darkforests.info
///
/////////////////////////////////////////////////

////////////////////////////////////////////////////////
////// Notes

func void WriteTeacherNote(var string what, var int type)
{
  /*if (type==placeGORGES)
  {
    if (TeacherGorgesMet==FALSE)
    { 
	  TeacherGorgesMet=TRUE;
	  Log_CreateTopic(TeachersGorges,LOG_NOTE);
	};
	B_LogEntry(TeachersGorges,what);
  }
  else if (type==placeSouth)
  {
    if (TeacherSouthMet==FALSE)
    { 
	  TeacherSouthMet=TRUE;
	  Log_CreateTopic(TeachersSouth,LOG_NOTE);
	};
	B_LogEntry(TeachersSouth,what);
  };*/
};

func void WriteTraderNote(var string what, var int type)
{
  /*if (type==placeSouth)
  {
    if (TraderSouthMet==FALSE)
    {
	  TraderSouthMet=TRUE;
	  Log_CreateTopic(TradersSouth,LOG_NOTE);
	};
	B_LogEntry(TradersSouth,what);
  };*/
};

///////////////////////////////////////////////////////////
///////  Teachers' dialogs

var int ___dialog;
var int ___attr;
var int ___max;

func void _TeachMeBack()
{
  Info_ClearChoices(___dialog);
};

//*******************************************************
// strength, dexterity, life, mana

func void TeachMe()
{
  var string str1;
  var string str5;
  
  if (___attr==ATR_STRENGTH)
  {
    str1=PRINT_LearnSTR1;
	str5=PRINT_LearnSTR5;
  }
  else if (___attr==ATR_DEXTERITY)
  {
    str1=PRINT_LearnDEX1;
	str5=PRINT_LearnDEX5;
  }
  else if (___attr==ATR_HITPOINTS_MAX)
  {
    str1=PRINT_LearnHP1;
	str5=PRINT_LearnHP5;
  }
  else if (___attr==ATR_MANA_MAX)
  {
    str1=PRINT_LearnMANA1;
	str5=PRINT_LearnMANA5;
  };
  
  Info_ClearChoices(___dialog);
  
  Info_AddChoice(___dialog,DIALOG_BACK,_TeachMeBack);
  
  Info_AddChoice(___dialog, B_BuildLearnString(str1, B_GetLearnCostAttribute(other,___attr)),_TeachMe1);
  
  Info_AddChoice(___dialog, B_BuildLearnString(str5, B_GetLearnCostAttribute(other,___attr)*5),_TeachMe5);
};

func void _TeachMe1()
{
  B_TeachAttributePoints(self,other,___attr,1,___max);
	
  TeachMe();
};

func void _TeachMe5()
{
  B_TeachAttributePoints(self,other,___attr,5,___max);
	
  TeachMe();
};

//**************************************************
// sword 1H, sword 2H, bow, crossbow

func void TeachMeProc()
{
  var string str1;
  var string str5;
  
  if (___attr==NPC_TALENT_1H)
  {
    str1=PRINT_Learn1H1;
	str5=PRINT_Learn1H5;
  }
  else if (___attr==NPC_TALENT_2H)
  {
    str1=PRINT_Learn2H1;
	str5=PRINT_Learn2H5;
  }
  else if (___attr==NPC_TALENT_BOW)
  {
    str1=PRINT_LearnBOW1;
	str5=PRINT_LearnBOW5;
  }
  else if (___attr==NPC_TALENT_CROSSBOW)
  {
    str1=PRINT_LearnCROSSBOW1;
	str5=PRINT_LearnCROSSBOW5;
  };
  
  Info_ClearChoices(___dialog);
  
  Info_AddChoice(___dialog,DIALOG_BACK,_TeachMeBack);
  
  Info_AddChoice(___dialog, B_BuildLearnString(str1, B_GetLearnCostTalent(other,___attr,1)),_TeachMeProc1);
  
  Info_AddChoice(___dialog, B_BuildLearnString(str5, B_GetLearnCostTalent(other,___attr,1)*5),_TeachMeProc5);
};

func void _TeachMeProc1()
{
  B_TeachFightTalentPercent(self,other,___attr,1,___max);
	
  TeachMeProc();
};

func void _TeachMeProc5()
{
  B_TeachFightTalentPercent(self,other,___attr,5,___max);
	
  TeachMeProc();
};

//*******************************************************
// picklock, sneak, pickpocket

func void TeachMeThief()
{
  var string str1;
  
  if (___attr==NPC_TALENT_PICKLOCK)
  {
    str1=PRINT_LearnPicklock;
  }
  else if (___attr==NPC_TALENT_SNEAK)
  {
    str1=PRINT_LearnSneak;
  }
  else if (___attr==NPC_TALENT_PICKPOCKET)
  {
    str1=PRINT_LearnPickpocket;
  };
  
  Info_ClearChoices(___dialog);
  
  Info_AddChoice(___dialog,DIALOG_BACK,_TeachMeBack);
  
  Info_AddChoice(___dialog, B_BuildLearnString(str1, B_GetLearnCostTalent(other,___attr,1)),_TeachMeThief);
};

func void _TeachMeThief()
{
  ___max=B_TeachThiefTalent(self,other,___attr);
};

//**************************************************

func void TeachMeStrength(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=ATR_STRENGTH;
  ___max=max;
  TeachMe();
};

func void TeachMeDexterity(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=ATR_DEXTERITY;
  ___max=max;
  TeachMe();
};

func void TeachMeLife(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=ATR_HITPOINTS_MAX;
  ___max=max;
  TeachMe();
};

func void TeachMeMana(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=ATR_MANA_MAX;
  ___max=max;
  TeachMe();
};

func void TeachMeSword1H(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=NPC_TALENT_1H;
  ___max=max;
  TeachMeProc();
};

func void TeachMeSword2H(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=NPC_TALENT_2H;
  ___max=max;
  TeachMeProc();
};

func void TeachMeBow(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=NPC_TALENT_BOW;
  ___max=max;
  TeachMeProc();
};

func void TeachMeCrossbow(var int dialog, var int max)
{
  ___dialog=dialog;
  ___attr=NPC_TALENT_CROSSBOW;
  ___max=max;
  TeachMeProc();
};

func int TeachMePicklock(var int dialog)
{
  ___dialog=dialog;
  ___attr=NPC_TALENT_PICKLOCK;
  TeachMeThief();
  return ___max;
};

func int TeachMeSneak(var int dialog)
{
  ___dialog=dialog;
  ___attr=NPC_TALENT_SNEAK;
  TeachMeThief();
  return ___max;
};

func int TeachMePickpocket(var int dialog)
{
  ___dialog=dialog;
  ___attr=NPC_TALENT_PICKPOCKET;
  TeachMeThief();
  return ___max;
};

func int LearnedPicklock()
{
  return Npc_GetTalentSkill(hero, NPC_TALENT_PICKLOCK);
};

func int LearnedSneak()
{
  return Npc_GetTalentSkill(hero, NPC_TALENT_SNEAK);
};

func int LearnedPickpocket()
{
  return Npc_GetTalentSkill(hero, NPC_TALENT_PICKPOCKET);
};

func void DoPickpocket(var int dialog)
{
  ___dialog=dialog;
  Info_ClearChoices(dialog);
  Info_AddChoice(dialog,DIALOG_BACK	,_TeachMeBack);
  Info_AddChoice(dialog,DIALOG_PICKPOCKET,_DoPickpocket);
};

func void _DoPickpocket()
{
  B_Beklauen();
  Info_ClearChoices(___dialog);
};
