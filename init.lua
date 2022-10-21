--[[
Author: Various, primarily Mark MacLean
Description: This mod is node registrations for antri stones and paladin ores. 


tiles = {
    "mymod_diamond_up.png",    -- y+
    "mymod_diamond_down.png",  -- y-
    "mymod_diamond_right.png", -- x+
    "mymod_diamond_left.png",  -- x-
    "mymod_diamond_back.png",  -- z+
    "mymod_diamond_front.png", -- z-
},
]]--

local modpath = minetest.get_modpath("anstri")
dofile(modpath.."/config.lua")
dofile(modpath.."/functions.lua")

--Anstri Stone List
anstristones = {
    RyanSandling = "ryansite",
    PeterTharp = "peterite",
    NickLassitor = "niclassite",
    CalebActon = "calbactite",
    JensonHelm = "jensonite",
    KiaHedgecoke = "kyhite",
    LexiGroom = "lexite",
    AndrewHerndon = "aherndite"
}

--Register the stones
anstri.reg_ore("Peter Tharp","peterite",21,"Used to craft a crafting book")
anstri.reg_ore("Nick Lassitor","niclassite",21)
anstri.reg_ore("Ryan Sandling","ryansite",17,"Used to craft the submarine")
anstri.reg_ore("Caleb Acton",anstristones.CalebActon,21,"Used to craft the engine for the automobile mod")
anstri.reg_ore("Kia Hedgcoke",anstristones.KiaHedgecoke,17,"used to craft a Demoiselle")
anstri.reg_ore("Lexi Groom",anstristones.LexiGroom,17,"Used to craft the Skull Shield")
anstri.reg_ore("Andrew Herndon",anstristones.AndrewHerndon,19,"Used to create the Boat")
-- Jordan Keifer 17
-- Mark Nicholas 17
-- Randy Elledge 21
-- Nicholas Rodgers 17
-- Asaf Abreu 21
-- David Powell 19
-- Grant Savage 17
-- Noah Moreland 21

minetest.register_node("anstri:jensonite", {
    description = "Jenson Helm's anstri stone created in 21",
    tiles = {"anstri_jensonite_1.png","anstri_jensonite_2.png",
            "anstri_jensonite_3.png","anstri_jensonite_4.png",
            "anstri_jensonite_5.png","anstri_jensonite_6.png",},
    groups = {dig_immediate=3,}
})

--Paladin Ore Registrations

--Overrides
anstri.override("nautilus:engine",anstristones.RyanSandling,7)
anstri.override("automobiles_lib:engine",anstristones.CalebActon,8)
anstri.override("demoiselle:body",anstristones.KiaHedgecoke,5)
anstri.override("equippable_accessories:skull_shield",anstristones.LexiGroom,1)
anstri.override("motorboat:engine",anstristones.AndrewHerndon,1)
anstri.override("steampunk_blimp:boiler",anstristones.PeterTharp,7)