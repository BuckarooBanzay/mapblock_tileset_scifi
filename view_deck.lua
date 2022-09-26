local MP = minetest.get_modpath(minetest.get_current_modname())

local g_inside = {groups={"spaceship_inside"}}

mapblock_tileset.register_tileset("view_deck", {
    catalog = MP .. "/schematics/view_deck.zip",
    groups = {
        spaceship_inside = true,
        view_deck = true,
        corridor_door = true
    },
    disable_orientation = {
        ["scifi_nodes:lighttop"] = true
    },
    tiles = {
        {
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,0,1"] = {not_groups={"spaceship_inside"}},
                ["0,0,-1"] = {groups={"corridor"}}
            },
            rotations = {0,90,180,270},
            fallback = true
        }
    }
})