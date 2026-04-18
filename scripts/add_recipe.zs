import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI; 
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.entity.IEntityDefinition;

var upgrade = <extrautils2:ingredients:8>;
var redstoneblock = <minecraft:redstone_block>;
var gold = <minecraft:gold_ingot>;
var goldpickaxe = <minecraft:golden_pickaxe>;
var xp_berry = <fkbite:xp_berry>;
var experience_essence = <mysticalagriculture:experience_essence>;
var staff_of_gay_magnet = <fkbite:staff_of_gay_magnet>;
var mystical_stick = <mysticalagriculture:crafting:22>;
var mystical_feather = <mysticalagriculture:crafting:24>;
var ender_pearl = <minecraft:ender_pearl>;
var emerald_block = <minecraft:emerald_block>;
var obesity_stick = <fkbite:obesity_stick>;
var anvil = <minecraft:anvil>;
var basic_module = <fkbite:basic_module>;
var nefario_stick = <fkbite:nefario_stick>;
var zombie_chunk = <mysticalagriculture:chunk:6>;
var regeneration_module = <fkbite:regeneration_module>;
var speed_module = <fkbite:speed_module>;
var jump_module = <fkbite:jump_module>;
var haste_module = <fkbite:haste_module>;
var water_breathing_module = <fkbite:water_breathing_module>;
var fire_resistance_module = <fkbite:fire_resistance_module>;
var health_boost_module = <fkbite:health_boost_module>;
var withering_module = <fkbite:withering_module>;
var mohb = <fkbite:modular_obsidian_helmet_breathing>;
var mohr = <fkbite:modular_obsidian_helmet_regen>;
var moch = <fkbite:modular_obsidian_chestplate_health_boost>;
var mocf = <fkbite:modular_obsidian_chestplate_fire_resistance>;
var molh = <fkbite:modular_obsidian_leggings_haste>;
var mobs = <fkbite:modular_obsidian_boots_speed>;
var mobj = <fkbite:modular_obsidian_boots_jump>;
var mosw = <fkbite:modular_obsidian_sword_wither>;
var moh = <fkbite:modular_obsidian_helmet>;
var moc = <fkbite:modular_obsidian_chestplate>;
var mol = <fkbite:modular_obsidian_leggings>;
var mob = <fkbite:modular_obsidian_boots>;
var mos = <fkbite:modular_obsidian_sword>;
val inferium = <item:mysticalagriculture:crafting>;
val infinite_water = <mysticalagriculture:crafting:48>;
val fleur = <minecraft:red_flower>
    .or(<minecraft:red_flower:1>)
    .or(<minecraft:red_flower:2>)
    .or(<minecraft:red_flower:3>)
    .or(<minecraft:red_flower:4>)
    .or(<minecraft:red_flower:5>)
    .or(<minecraft:red_flower:6>)
    .or(<minecraft:red_flower:7>)
    .or(<minecraft:red_flower:8>)
    .or(<minecraft:yellow_flower>);
val cobblestone = <minecraft:cobblestone>;
val charcoal = <minecraft:coal:1>;
val purinas_food = <fkbite:purinas_food>;
val inferium_essence = <ore:essenceInferium>;
val bone_meal = <minecraft:dye:15>;
val fertilized_essence =<mysticalagriculture:fertilized_essence>;
val coalInferium = <ore:coalInferium>;
val coalPrudentium = <ore:coalPrudentium>;
val coalIntermedium = <ore:coalIntermedium>;
val coalSuperium = <ore:coalSuperium>;
val coalSupremium = <ore:coalSupremium>;
val mystical_fertilizer = <mysticalagriculture:mystical_fertilizer>;
val gregoire_ring = <fkbite:gregoire_ring>;
val birane_ring = <fkbite:birane_ring>;
val lucky_stone = <fkbite:lucky_stone>;
val diamond_block = <minecraft:diamond_block>;


recipes.remove(<mysticalagriculture:mystical_fertilizer>);

recipes.addShaped(gregoire_ring, [
[diamond_block,lucky_stone,null],
[gold,null,gold],
[null,gold,null],
]);

recipes.addShaped(birane_ring, [
[obesity_stick,lucky_stone,null],
[gold,null,gold],
[null,gold,null],
]);


recipes.addShaped(upgrade, [
[null,redstoneblock,null],
[gold,goldpickaxe,gold],
[null,redstoneblock,null],
]);

recipes.addShaped(xp_berry *8, [
[experience_essence,experience_essence,experience_essence],
[experience_essence,null,experience_essence],
[experience_essence,experience_essence,experience_essence],
]);

recipes.addShaped(staff_of_gay_magnet, [
[mystical_feather,ender_pearl,emerald_block],
[null,mystical_stick,ender_pearl],
[mystical_stick,null,mystical_feather],
]);

recipes.addShaped(obesity_stick, [
[null,anvil,basic_module],
[null,mystical_stick,anvil],
[mystical_stick,null,null],
]);

recipes.addShaped(nefario_stick, [
[null,zombie_chunk,basic_module],
[null,mystical_stick,zombie_chunk],
[mystical_stick,null,null],
]);

recipes.addShapeless(purinas_food *4, [charcoal, cobblestone, fleur, infinite_water.reuse()]);

recipes.addShapeless(mohb, [moh, water_breathing_module]);
recipes.addShapeless(mohr, [moh, regeneration_module]);
recipes.addShapeless(moch, [moc, health_boost_module]);
recipes.addShapeless(mocf, [moc, fire_resistance_module]);
recipes.addShapeless(molh, [mol, haste_module]);
recipes.addShapeless(mobs, [mob, speed_module]);
recipes.addShapeless(mobj, [mob, jump_module]);
recipes.addShapeless(mosw, [mos, withering_module]);

recipes.addShaped(mystical_fertilizer *2, [
[bone_meal,inferium_essence,bone_meal],
[inferium_essence,coalInferium,inferium_essence],
[bone_meal,inferium_essence,bone_meal],
]);
recipes.addShaped(mystical_fertilizer *4, [
[bone_meal,inferium_essence,bone_meal],
[inferium_essence,coalPrudentium,inferium_essence],
[bone_meal,inferium_essence,bone_meal],
]);
recipes.addShaped(mystical_fertilizer *8, [
[bone_meal,inferium_essence,bone_meal],
[inferium_essence,coalIntermedium,inferium_essence],
[bone_meal,inferium_essence,bone_meal],
]);
recipes.addShaped(mystical_fertilizer *16, [
[bone_meal,inferium_essence,bone_meal],
[inferium_essence,coalSuperium,inferium_essence],
[bone_meal,inferium_essence,bone_meal],
]);
recipes.addShaped(mystical_fertilizer *32, [
[bone_meal,inferium_essence,bone_meal],
[inferium_essence,coalSupremium,inferium_essence],
[bone_meal,inferium_essence,bone_meal],
]);

recipes.addShaped(mystical_fertilizer *4, [
[fertilized_essence,inferium_essence,fertilized_essence],
[inferium_essence,coalInferium,inferium_essence],
[fertilized_essence,inferium_essence,fertilized_essence],
]);
recipes.addShaped(mystical_fertilizer *8, [
[fertilized_essence,inferium_essence,fertilized_essence],
[inferium_essence,coalPrudentium,inferium_essence],
[fertilized_essence,inferium_essence,fertilized_essence],
]);
recipes.addShaped(mystical_fertilizer *16, [
[fertilized_essence,inferium_essence,fertilized_essence],
[inferium_essence,coalIntermedium,inferium_essence],
[fertilized_essence,inferium_essence,fertilized_essence],
]);
recipes.addShaped(mystical_fertilizer *32, [
[fertilized_essence,inferium_essence,fertilized_essence],
[inferium_essence,coalSuperium,inferium_essence],
[fertilized_essence,inferium_essence,fertilized_essence],
]);
recipes.addShaped(mystical_fertilizer *64, [
[fertilized_essence,inferium_essence,fertilized_essence],
[inferium_essence,coalSupremium,inferium_essence],
[fertilized_essence,inferium_essence,fertilized_essence],
]);

<entity:minecraft:blaze>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:creeper>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:ghast>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:magma_cube>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:skeleton>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:slime>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:spider>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:witch>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:wither_skeleton>.addDrop(inferium, 1, 5, 0.5);
<entity:minecraft:zombie>.addDrop(inferium, 1, 5, 0.5);
