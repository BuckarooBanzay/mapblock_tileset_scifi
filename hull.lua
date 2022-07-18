local MP = minetest.get_modpath(minetest.get_current_modname())

local hull_full_rule = { groups = {"hull_full"} }
local hull_slope_rule = { groups = {"hull_slope"} }

mapblock_tileset.register_tileset("hull", {
    catalog = MP .. "/schematics/hull.zip",
    groups = {
        hull = true,
        hull_full = true
    },
    disable_orientation = {
        ["scifi_nodes:blackdmg"] = true
    },
    tiles = {
        {
            -- all sides
            positions = {{x=1,y=1,z=0}},
            rules = {},
            fallback = true,
            rotations = {0}
        }
    }
})

mapblock_tileset.register_tileset("hull_slope", {
    catalog = MP .. "/schematics/hull.zip",
    groups = {
        hull = true,
        hull_slope = true
    },
    disable_orientation = {
        ["scifi_nodes:blackdmg"] = true
    },
    tiles = {
        {
            -- upper slope
            positions = {{x=1,y=2,z=0}},
            rules = {
                ["0,0,1"] = hull_full_rule,
                ["0,-1,0"] = hull_full_rule
            },
            rotations = {0,90,180,270}
        },{
            -- lower slope
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["0,0,1"] = hull_full_rule,
                ["0,1,0"] = hull_full_rule
            },
            rotations = {0,90,180,270}
        },{
            -- side slope
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["0,0,1"] = hull_full_rule,
                ["1,0,0"] = hull_full_rule
            },
            rotations = {0,90,180,270}
        },{
            -- upper edge
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,-1,0"] = hull_slope_rule,
                ["0,0,1"] = hull_slope_rule,
                ["1,0,0"] = hull_slope_rule
            },
            rotations = {0,90,180,270}
        },{
            -- lower edge
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,1,0"] = hull_slope_rule,
                ["0,0,1"] = hull_slope_rule,
                ["1,0,0"] = hull_slope_rule
            },
            rotations = {0,90,180,270}
        }
    }
})
