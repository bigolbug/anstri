-- Create list of all registered nodes and items
local nodes = minetest.registered_nodes
local items = minetest.registered_items

function anstri.debug(message)
    if anstri.debugOn then minetest.debug(message) end
end

function anstri.exists(_)
    --Check to see if the item Exists in the nodes list defined at the top
    for node,pair in pairs(nodes) do
        if node == _ then
            return true
        end
    end

    -- if we could not find the item in registered nodes try the items
    if not exists then
        for node,pair in pairs(items) do
            if node == _ then
                return true
            end
        end
    end

    --the item does not exists
    minetest.debug("Anstri: ".._.." does not exists, skipping override")
    return false
end

function anstri.craft(og_recipe)
    local recipe = {{"","",""},{"","",""},{"","",""}}

    --fill recipe
    for i, item in pairs(og_recipe.items) do
        --i = math.tointeger(i)
        local r = 1 + math.floor((i - 1)/3)
        local c = i - ((r - 1)*3)
        recipe[r][c] = item
    end

    minetest.register_craft({
        output = og_recipe.output,
        recipe = recipe
    })
end
--Anstri Stone Registrations 
function anstri.reg_ore(stu_name,ore_name,year,desc)
    desc = desc or "" -- set desc to "" if it was not defined. 
    minetest.register_node("anstri:"..ore_name, {
        description = stu_name.."'s anstri stone created in 20"..year..". "..desc,
        tiles = {"anstri_top.png","anstri_top.png",
            "anstri_"..ore_name.."_side.png","anstri_"..ore_name.."_side.png",
            "anstri_"..ore_name.."_side.png","anstri_"..ore_name.."_side.png",},
        groups = {dig_immediate=3,}
    })    
end

--Anstri Override
function anstri.override(item,ore,slot)
    --If not defined the slot number will be 9
    slot = slot or 9
    ore = "anstri:"..ore
    --Does the item exist?
    if anstri.exists(item) and anstri.exists(ore) then
        local recipe = {}
        recipe.items = {}

        --Check to see if there is a recipe
        if minetest.get_all_craft_recipes(item) then
            --collect item components
            recipe = minetest.get_craft_recipe(item)
            anstri.debug("Anstri: Found recipe for "..item)
            --Remove old Craft recipe
            minetest.clear_craft(recipe)          
        else
            recipe.output = item
        end     

        recipe.items[slot] = ore
        anstri.craft(recipe)
    end

    minetest.debug("Anstri: Recipe for "..item.." replaced")
end
