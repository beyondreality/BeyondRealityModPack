

val steelplate = <ore:plateSteel>; 
val steel = <ore:ingotSteel>;
var rod = <gregtech:gt.metaitem.01:23032>;
val basic = <EnderIO:itemBasicCapacitor>;
val bars = <minecraft:iron_bars>;
val ring = <ore:ringIron>;




recipes.remove(<EnderIO:itemMachinePart:1>);
recipes.addShaped(<EnderIO:itemMachinePart:1>, [[rod, steel, rod],
                                                    [steel, ring, steel],
                                                    [rod, steel, rod]]);
			
recipes.remove(<EnderIO:itemMachinePart>);
recipes.addShaped(<EnderIO:itemMachinePart>, [[bars, steelplate, bars],
                                                    [steelplate, basic, steelplate],
                                                    [bars, steelplate, bars]]);	
                                                    
val copperPlate = <Railcraft:part.plate:3>;
val coalPlate = <gregtech:gt.metaitem.01:17535>;
val glowstone = <minecraft:glowstone>;
val redstoneLiquid = <liquid:molten.redstone>;
val energeticLiquid = <liquid:molten.energeticalloy>;
val vibrantLiquid = <liquid:molten.vibrantalloy>;
val adv = <EnderIO:itemBasicCapacitor:1>;
val elite = <EnderIO:itemBasicCapacitor:2>;

val timeinS = 3; // May need to be changed for balancing
val t1eu = 32;

//Assembler recipes for ender io components
mods.gregtech.AssemblerLiq.addRecipe(basic, goldWire2x * 4, copperPlate, redstoneLiquid * 288, timeinS * 20, t1eu );

mods.gregtech.AssemblerLiq.addRecipe(adv, basic * 2, coalPlate, energeticLiquid * 864, timeinS * 20 * 2, t1eu * 4 );

mods.gregtech.AssemblerLiq.addRecipe(elite, adv * 2, glowstone, vibrantLiquid * 864, timeinS * 20 * 4, t1eu * 16 );	
