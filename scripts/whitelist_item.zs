import crafttweaker.item.IItemStack as IItemStack;

// Liste des items AUTORISÉS (modifie ICI tes choix)
val autorises = [
    <minecraft:iron_pickaxe>,
    <minecraft:iron_shovel>,
    <extrautils2:bagofholding>.withTag({Items: {}}),
    <extrautils2:ingredients:8>,
    <extrautils2:enderlilly>,
    <extrautils2:itembuilderswand>,
    <extrautils2:grocket>,
    <extrautils2:wateringcan>,
    <extrautils2:spike_wood>,
    <extrautils2:spike_stone>,
    <extrautils2:spike_iron>,
    <extrautils2:spike_gold>,
    <extrautils2:spike_diamond>,
    <extrautils2:decorativesolidwood:1>,
    <extrautils2:pipe>,
    <securitycraft:keypad>,
    <securitycraft:bucket_f_water>,
    <securitycraft:bucket_f_lava>
] as IItemStack[];


for item in loadedMods["mysticalagriculture"].items {
    if (item.name.contains("helmet")
     || item.name.contains("chestplate")
     || item.name.contains("leggings")
     || item.name.contains("boots")
     || item.name.contains("sword")
     || item.name.contains("bow")
     || item.name.contains("charm")
     || item.name.contains("tool")
     || item.name.contains("armor")
     || item.name.contains("arrow")
     || item.name.contains("pickaxe")
     || item.name.contains("shovel")
     || item.name.contains("axe")
     || item.name.contains("hoe")
     || item.name.contains("shears")
     || item.name.contains("sickle")
     || item.name.contains("scythe")
     || item.name.contains("apple")
     || item.name.contains("fishing_rod")
     || item.name.contains("tinker"))
    mods.jei.JEI.removeAndHide(item);
    
}
mods.jei.JEI.removeAndHide(<mysticalagriculture:xp_droplet>);

// Cache TOUS ExtraUtils2 sauf autorisés
for item in loadedMods["extrautils2"].items {
    var cacher = true;
    for aut in autorises {
        if (item.matches(aut)) {
            cacher = false;
            break;
        }
    }
    if (cacher) {
        mods.jei.JEI.removeAndHide(item);
	recipes.remove(item);
    }
}
// Cache TOUS SecurityCraft sauf autorisés
for item in loadedMods["securitycraft"].items {
    var cacher = true;
    for aut in autorises {
        if (item.matches(aut)) {
            cacher = false;
            break;
        }
    }
    if (cacher) {
        mods.jei.JEI.removeAndHide(item);
	recipes.remove(item);
    }
}
recipes.remove(<extrautils2:ingredients:8>);

