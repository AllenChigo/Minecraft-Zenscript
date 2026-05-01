/*
    Cross-Mod Integration Script
    Mods used: Thermal Expansion, Botania, Industrial Foregoing
*/

// 1. Thermal Expansion: Add a recipe to the Pulverizer
// Makes it so pulverizing a Mana Diamond gives you Mana Powder and a chance for Iron
// Syntax: <recipetype:thermal:pulverizer>.addRecipe(name, [outputs], input, experience)
<recipetype:thermal:pulverizer>.addRecipe("pulverized_mana_diamond", 
    [<item:botania:mana_powder>, <item:minecraft:iron_ingot> % 15], 
    <item:botania:mana_diamond>, 
    0.5
);

// 2. Botania: Mana Infusion
// Allows "cleansing" Industrial Foregoing's Plastic into regular Acrylic (or another item)
// Syntax: <recipetype:botania:mana_infusion>.addRecipe(name, output, input, mana_cost)
<recipetype:botania:mana_infusion>.addRecipe("plastic_purification", 
    <item:minecraft:white_wool>, 
    <item:industrialforegoing:plastic>, 
    500
);

// 3. Industrial Foregoing: Dissolution Chamber
// Creating a high-tier tool using Botania materials and Thermal fluids
// This requires the Dissolution Chamber to have Latex fluid inside
/*
<recipetype:industrialforegoing:dissolution_chamber>.addRecipe("mana_machine_frame", 
    [<item:botania:manasteel_ingot>, <item:botania:manasteel_ingot>, <item:botania:manasteel_ingot>], 
    <fluid:industrialforegoing:latex> * 1000, 
    100, 
    <item:thermal:machine_frame>, 
    <fluid:minecraft:empty>
);
*/

// 4. Global Tooltip for Modded Items
// Useful for guiding players through your custom progression
<item:botania:mana_diamond>.addTooltip("§dCan now be processed in a Pulverizer!");
