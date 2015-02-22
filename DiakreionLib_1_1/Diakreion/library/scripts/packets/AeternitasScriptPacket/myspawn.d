////////////////////////////////////////////////
///
///  AETERNITAS'S SCRIPT PACKET
///
///  CREATED BY AETERNITAS
///
///  http://darkforests.info
///
/////////////////////////////////////////////////

///////////////////////////////////////////////////
///   SPAWN CREATURES AT A PLACE OR AT SEVERAL PLACES


func void SpawnCreature(var int npcinstance, var string spawnpoint, var int howmany)
{
   if (howmany>0)
   {
     SpawnCreature(npcinstance,spawnpoint,howmany-1);
	 Wld_InsertNpc (npcinstance,spawnpoint);
   };	 
};

func void SpawnCreature2(var int npcinstance, var string spawnpoint1, var string spawnpoint2, var int howmany)
{
  SpawnCreature(npcinstance,spawnpoint1,howmany);
  SpawnCreature(npcinstance,spawnpoint2,howmany);
};

func void SpawnCreature3(var int npcinstance, var string spawnpoint1, var string spawnpoint2, var string spawnpoint3, var int howmany)
{
  SpawnCreature(npcinstance,spawnpoint1,howmany);
  SpawnCreature(npcinstance,spawnpoint2,howmany);
  SpawnCreature(npcinstance,spawnpoint3,howmany);
};

func void SpawnCreature4(var int npcinstance, var string spawnpoint1, var string spawnpoint2, var string spawnpoint3, var string spawnpoint4, var int howmany)
{
  SpawnCreature(npcinstance,spawnpoint1,howmany);
  SpawnCreature(npcinstance,spawnpoint2,howmany);
  SpawnCreature(npcinstance,spawnpoint3,howmany);
  SpawnCreature(npcinstance,spawnpoint4,howmany);
};

func void SpawnCreature5(var int npcinstance, var string spawnpoint1, var string spawnpoint2, var string spawnpoint3, var string spawnpoint4, var string spawnpoint5, var int howmany)
{
  SpawnCreature(npcinstance,spawnpoint1,howmany);
  SpawnCreature(npcinstance,spawnpoint2,howmany);
  SpawnCreature(npcinstance,spawnpoint3,howmany);
  SpawnCreature(npcinstance,spawnpoint4,howmany);
  SpawnCreature(npcinstance,spawnpoint5,howmany);
};

///////////////////////////////////////////////////
///   SPAWN CREATURES AT A PLACE

func void SpawnCreatureA1(var int npcinstance1,var string spawnpoint,var int howmany)
{
   SpawnCreature(npcinstance1,spawnpoint,howmany);
};


func void SpawnCreatureA2(var int npcinstance1,var int npcinstance2,var string spawnpoint,var int howmany)
{
   SpawnCreature(npcinstance1,spawnpoint,howmany);
   SpawnCreature(npcinstance2,spawnpoint,howmany);
};

func void SpawnCreatureA3(var int npcinstance1,var int npcinstance2,var int npcinstance3,var string spawnpoint,var int howmany)
{
   SpawnCreature(npcinstance1,spawnpoint,howmany);
   SpawnCreature(npcinstance2,spawnpoint,howmany);
   SpawnCreature(npcinstance3,spawnpoint,howmany);
};

func void SpawnCreatureA4(var int npcinstance1,var int npcinstance2,var int npcinstance3,var int npcinstance4,var string spawnpoint,var int howmany)
{
   SpawnCreature(npcinstance1,spawnpoint,howmany);
   SpawnCreature(npcinstance2,spawnpoint,howmany);
   SpawnCreature(npcinstance3,spawnpoint,howmany);
   SpawnCreature(npcinstance4,spawnpoint,howmany);
};

func void SpawnCreatureA5(var int npcinstance1,var int npcinstance2,var int npcinstance3,var int npcinstance4,var int npcinstance5,var string spawnpoint,var int howmany)
{
   SpawnCreature(npcinstance1,spawnpoint,howmany);
   SpawnCreature(npcinstance2,spawnpoint,howmany);
   SpawnCreature(npcinstance3,spawnpoint,howmany);
   SpawnCreature(npcinstance4,spawnpoint,howmany);
   SpawnCreature(npcinstance5,spawnpoint,howmany);
};

///////////////////////////////////////////////////
///   SPAWN ITEMS AT A PLACE OR AT SEVERAL PLACES

func void SpawnItem(var int iteminstance, var string spawnpoint, var int howmany)
{
   if (howmany>0)
   {
     SpawnItem(iteminstance,spawnpoint,howmany-1);
	   Wld_InsertItem (iteminstance,spawnpoint);
   };	 
};

func void SpawnItemA1(var int iteminstance1,var string spawnpoint,var int howmany)
{
   SpawnItem(iteminstance1,spawnpoint,howmany);
};

func void SpawnItemA2(var int iteminstance1,var int iteminstance2,var string spawnpoint,var int howmany)
{
   SpawnItem(iteminstance1,spawnpoint,howmany);
   SpawnItem(iteminstance2,spawnpoint,howmany);
};

func void SpawnItemA3(var int iteminstance1,var int iteminstance2,var int iteminstance3,var string spawnpoint,var int howmany)
{
   SpawnItem(iteminstance1,spawnpoint,howmany);
   SpawnItem(iteminstance2,spawnpoint,howmany);
   SpawnItem(iteminstance3,spawnpoint,howmany);
};

func void SpawnItemA4(var int iteminstance1,var int iteminstance2,var int iteminstance3,var int iteminstance4,var string spawnpoint,var int howmany)
{
   SpawnItem(iteminstance1,spawnpoint,howmany);
   SpawnItem(iteminstance2,spawnpoint,howmany);
   SpawnItem(iteminstance3,spawnpoint,howmany);
   SpawnItem(iteminstance4,spawnpoint,howmany);
};

func void SpawnItemA5(var int iteminstance1,var int iteminstance2,var int iteminstance3,var int iteminstance4,var int iteminstance5,var string spawnpoint,var int howmany)
{
   SpawnItem(iteminstance1,spawnpoint,howmany);
   SpawnItem(iteminstance2,spawnpoint,howmany);
   SpawnItem(iteminstance3,spawnpoint,howmany);
   SpawnItem(iteminstance4,spawnpoint,howmany);
   SpawnItem(iteminstance5,spawnpoint,howmany);
};
