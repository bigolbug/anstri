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

minetest.register_node("anstri:peterthite", {
    description = "Peter Tharp's anstri stone created in 21. Used to craft a crafting book",
    tiles = {"anstri_top.png","anstri_top.png",
            "anstri_peterite_side.png","anstri_peterite_side.png",
            "anstri_peterite_side.png","anstri_peterite_side.png",},
    groups = {dig_immediate=3,}
})

minetest.register_node("anstri:niclassite", {
    description = "Nick Lassiter's anstri stone created in 21",
    tiles = {"anstri_top.png","anstri_top.png",
            "anstri_niclassite_side.png","anstri_niclassite_side.png",
            "anstri_niclassite_side.png","anstri_niclassite_side.png",},
    groups = {dig_immediate=3,}
})

minetest.register_node("anstri:jensonite", {
    description = "Jenson Helm's anstri stone created in 21",
    tiles = {"anstri_jensonite_1.png","anstri_jensonite_2.png",
            "anstri_jensonite_3.png","anstri_jensonite_4.png",
            "anstri_jensonite_5.png","anstri_jensonite_6.png",},
    groups = {dig_immediate=3,}
})


