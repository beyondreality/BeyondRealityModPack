import minetweaker.item.IItemStack;
import mods.railcraft.RockCrusher;

// Ore Dictonary Addition

// Shorts
val marstungstate = <beyondrealitycore:customBlock_23>;
val tungstate = <ore:oreTungsten>;
val mooniron = <beyondrealitycore:customBlock_0>;
val marsiron = <beyondrealitycore:customBlock_1>;
val iron = <ore:oreIron>;
val marsgold = <beyondrealitycore:customBlock_2>;
val gold = <ore:oreGold>;
val moonbauxite = <beyondrealitycore:customBlock_11>;
val marsbauxite = <beyondrealitycore:customBlock_12>;
val bauxite = <ore:oreBauxite>;
val moontetrahedrite = <beyondrealitycore:customBlock_9>;
val marstetrahedrite = <beyondrealitycore:customBlock_10>;
val tetrahedrite = <ore:oreTetrahedrite>;
val marsuranium = <beyondrealitycore:customBlock_13>;
val uranium = <ore:oreUranium>;
val mooncassiterite = <beyondrealitycore:customBlock_14>;
val marscassiterite = <beyondrealitycore:customBlock_15>;
val cassiterite = <ore:oreCassiterite>;
val moonruby = <beyondrealitycore:customBlock_25>;
val marsruby = <beyondrealitycore:customBlock_26>;
val ruby = <ore:oreRuby>;
val moonlead = <beyondrealitycore:customBlock_18>;
val marslead = <beyondrealitycore:customBlock_19>;
val lead = <ore:oreLead>;
val marsmutagen = <beyondrealitycore:customBlock_28>;
val moonsilver = <beyondrealitycore:customBlock_16>;
val marssilver = <beyondrealitycore:customBlock_17>;
val silver = <ore:oreSilver>;
val moonglowstone = <beyondrealitycore:customBlock_27>;
val marsnaquadria = <beyondrealitycore:customBlock_29>;
val naquadria = <ore:oreNaquadria>;
val moonlapis = <beyondrealitycore:customBlock_7>;
val marslapis = <beyondrealitycore:customBlock_8>;
val lapis = <ore:oreLapis>;
val moonredstone = <beyondrealitycore:customBlock_5>;
val marsredstone = <beyondrealitycore:customBlock_6>;
val redstone = <ore:oreRedstone>;
val moondiamond = <beyondrealitycore:customBlock_3>;
val marsdiamond = <beyondrealitycore:customBlock_4>;
val diamond = <ore:oreDiamond>;
val marsiridium = <beyondrealitycore:customBlock_20>;
val iridium = <ore:oreIridium>;
val marsnaquadah = <beyondrealitycore:customBlock_24>;
val naquadah = <ore:oreNaquadah>;
val marsosmium = <beyondrealitycore:customBlock_22>;
val osmium = <ore:oreOsmium>;
val marsplatinum = <beyondrealitycore:customBlock_21>;
val platinum = <ore:orePlatinum>;
val endernugget = <EnderIO:itemMaterial:4>;
val enderingot = <EnderIO:itemAlloy:2>;
val stick = <minecraft:stick>;
val dirt = <minecraft:dirt>;
val dust = <gregtech:gt.metaitem.01:2500>;
val tinyPileDarkAshes = <gregtech:gt.metaitem.01:816>;

// Gregtech Crushed Ores
val crushedGTIron		= <gregtech:gt.metaitem.01:5032>;
val crushedGTGold		= <gregtech:gt.metaitem.01:5086>;
val crushedGTCassiterite	= <gregtech:gt.metaitem.01:5824>;
val crushedGTTetrahedrite	= <gregtech:gt.metaitem.01:5840>;
val crushedGTBauxite		= <gregtech:gt.metaitem.01:5822>;
val crushedGTUranium		= <gregtech:gt.metaitem.01:5098>;
val crushedGTRuby		= <gregtech:gt.metaitem.01:5502>;
val crushedGTLead		= <gregtech:gt.metaitem.01:5089>;
val crushedGTSilver		= <gregtech:gt.metaitem.01:5054>;
val crushedGTLapis		= <gregtech:gt.metaitem.01:5526>;
val crushedGTRedstone		= <gregtech:gt.metaitem.01:5810>;
val crushedGTDiamond 		= <gregtech:gt.metaitem.01:5500>;
val crushedGTIridium		= <gregtech:gt.metaitem.01:5084>;
val crushedGTOsmium		= <gregtech:gt.metaitem.01:5083>;
val crushedGTPlatinum		= <gregtech:gt.metaitem.01:5085>;
val crushedGTNaquadah		= <gregtech:gt.metaitem.01:5324>;
val crushedGTNaquadria		= <gregtech:gt.metaitem.01:5327>;

// Nugget to ingot	
recipes.addShaped(enderingot, [
	[endernugget, endernugget, endernugget],
	[endernugget, endernugget, endernugget],
	[endernugget, endernugget, endernugget]]);		

// furnace do stuff
furnace.addRecipe(<gendustry:HoneyDrop:11>, marsmutagen, 2.0);
furnace.addRecipe(<minecraft:glowstone_dust>, moonglowstone, 2.0);
// Mars and Moon diamond smelting recipe was missing
furnace.addRecipe(<minecraft:diamond>, moondiamond, 2.0);
furnace.addRecipe(<minecraft:diamond>, marsdiamond, 2.0);

// Dust to diamond
recipes.addShapeless(<minecraft:diamond>, [dust, dust, dust]);

// Adding
tungstate.add(marstungstate);
iron.add(mooniron);
iron.add(marsiron);
gold.add(marsgold);
bauxite.add(moonbauxite);
bauxite.add(marsbauxite);
tetrahedrite.add(moontetrahedrite);
tetrahedrite.add(marstetrahedrite);
uranium.add(marsuranium);
cassiterite.add(mooncassiterite);
cassiterite.add(marscassiterite);
ruby.add(moonruby);
ruby.add(marsruby);
lead.add(moonlead);
lead.add(marslead);
silver.add(moonsilver);
silver.add(marssilver);
naquadria.add(marsnaquadria);
lapis.add(moonlapis);
lapis.add(marslapis);
redstone.add(moonredstone);
redstone.add(marsredstone);
redstone.add(marsredstone);
diamond.add(moondiamond);
diamond.add(marsdiamond);
iridium.add(marsiridium);
naquadah.add(marsnaquadah);
osmium.add(marsosmium);
platinum.add(marsplatinum);

// Adding Moon and Martian ores to the Railcraft Rock Crusher

// RockCrusher Recipes
// InputStack, matchDamage, matchNBT, OutputStacks, Chance

// This recipe would add both stone dust and crushed ores at the normal rate 
// RockCrusher.addRecipe(mooniron, false, false, [<gregtech:gt.metaitem.01:5032> * 2, <gregtech:gt.metaitem.01:2299>], [1.0, 0.1]);
RockCrusher.addRecipe(mooniron, false, false, [crushedGTIron * 2], [1.0]);
RockCrusher.addRecipe(marsiron, false, false, [crushedGTIron * 2], [1.0]);
RockCrusher.addRecipe(marsgold, false, false, [crushedGTGold * 2], [1.0]);
RockCrusher.addRecipe(mooncassiterite, false, false, [crushedGTCassiterite * 4], [1.0]);
RockCrusher.addRecipe(marscassiterite, false, false, [crushedGTCassiterite * 4], [1.0]);
RockCrusher.addRecipe(moontetrahedrite, false, false, [crushedGTTetrahedrite * 2], [1.0]);
RockCrusher.addRecipe(marstetrahedrite, false, false, [crushedGTTetrahedrite * 2], [1.0]);
RockCrusher.addRecipe(moonbauxite, false, false, [crushedGTBauxite * 2], [1.0]);
RockCrusher.addRecipe(marsbauxite, false, false, [crushedGTBauxite * 2], [1.0]);
RockCrusher.addRecipe(marsuranium, false, false, [crushedGTUranium * 2], [1.0]);
RockCrusher.addRecipe(moonruby, false, false, [crushedGTRuby * 2], [1.0]);
RockCrusher.addRecipe(marsruby, false, false, [crushedGTRuby * 2], [1.0]);
RockCrusher.addRecipe(moonlead, false, false, [crushedGTLead * 2], [1.0]);
RockCrusher.addRecipe(marslead, false, false, [crushedGTLead * 2], [1.0]);
RockCrusher.addRecipe(moonsilver, false, false, [crushedGTSilver * 2], [1.0]);
RockCrusher.addRecipe(marssilver, false, false, [crushedGTSilver * 2], [1.0]);
RockCrusher.addRecipe(moonlapis, false, false, [crushedGTLapis * 2], [1.0]);
RockCrusher.addRecipe(marslapis, false, false, [crushedGTLapis * 2], [1.0]);
RockCrusher.addRecipe(moonredstone, false, false, [crushedGTRedstone * 2], [1.0]);
RockCrusher.addRecipe(marsredstone, false, false, [crushedGTRedstone * 2], [1.0]);
RockCrusher.addRecipe(moondiamond, false, false, [crushedGTDiamond * 2], [1.0]);
RockCrusher.addRecipe(marsdiamond, false, false, [crushedGTDiamond * 2], [1.0]);
RockCrusher.addRecipe(marsiridium, false, false, [crushedGTIridium * 2], [1.0]);
RockCrusher.addRecipe(marsosmium, false, false, [crushedGTOsmium * 2], [1.0]);
RockCrusher.addRecipe(marsplatinum, false, false, [crushedGTPlatinum * 2], [1.0]);
RockCrusher.addRecipe(marsnaquadah, false, false, [crushedGTNaquadah * 2], [1.0]);
RockCrusher.addRecipe(marsnaquadria, false, false, [crushedGTNaquadria * 2], [1.0]);
