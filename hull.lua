local MP = minetest.get_modpath(minetest.get_current_modname())

local g_hull = {groups={"hull"}}
local g_inside = {groups={"hull_inside"}}

mapblock_tileset.register_tileset("hull", {
    catalog = MP .. "/schematics/hull.zip",
    groups = {
        hull = true
    },
    disable_orientation = {
        ["scifi_nodes:blackdmg"] = true
    },
    tiles = {
        {
            -- center corner
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["0,0,1"] = g_inside,
                ["-1,0,0"] = g_inside,
                ["0,0,-1"] = g_hull,
                ["1,0,0"] = g_hull,
                ["0,-1,0"] = g_hull,
                ["0,1,0"] = g_hull
            },
            rotations = {0,90,180,270}
        },{
            -- center straight
            positions = {{x=1,y=1,z=0}},
            rules = {
                ["0,0,1"] = g_inside
            },
            rotations = {0,90,180,270}
        },{
            -- center outer edge
            positions = {{x=2,y=1,z=0}},
            rules = {
                ["-1,0,0"] = g_hull,
                ["0,0,1"] = g_hull,
                ["0,-1,0"] = g_hull,
                ["0,1,0"] = g_hull
            },
            rotations = {0,90,180,270}
        },{
            -- upper corner
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,-1,1"] = g_inside,
                ["-1,-1,0"] = g_inside,
                ["0,0,-1"] = g_hull,
                ["1,0,0"] = g_hull,
                ["0,-1,0"] = g_hull,
            },
            rotations = {0,90,180,270}
        },{
            -- upper straight
            positions = {{x=1,y=2,z=0}},
            rules = {
                ["0,-1,1"] = g_inside,
                ["0,0,1"] = g_hull,
                ["0,-1,0"] = g_hull,
            },
            rotations = {0,90,180,270}
        },{
            -- upper outer edge
            positions = {{x=2,y=2,z=0}},
            rules = {
                ["-1,-1,1"] = g_inside,
                ["-1,0,0"] = g_hull,
                ["0,0,1"] = g_hull,
                ["0,-1,0"] = g_hull,
            },
            rotations = {0,90,180,270}
        },{
            -- lower corner
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,1,1"] = g_inside,
                ["-1,1,0"] = g_inside,
                ["0,0,-1"] = g_hull,
                ["1,0,0"] = g_hull,
                ["0,1,0"] = g_hull,
            },
            rotations = {0,90,180,270}
        },{
            -- lower straight
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["0,1,1"] = g_inside,
                ["-1,0,0"] = g_hull,
                ["1,0,0"] = g_hull,
                ["0,1,0"] = g_hull,
                ["0,0,1"] = g_hull,
            },
            rotations = {0,90,180,270}
        },{
            -- lower outer edge
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["-1,1,1"] = g_inside,
                ["-1,0,0"] = g_hull,
                ["0,0,1"] = g_hull,
                ["0,1,0"] = g_hull,
            },
            rotations = {0,90,180,270}
        },{
            -- top
            positions = {{x=3,y=2,z=0}},
            rules = {
                ["0,1,0"] = g_inside
            },
            fallback = true,
            rotations = {0}
        },{
            -- bottom
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["0,-1,0"] = g_inside
            },
            rotations = {0}
        }
    }
})

mapblock_tileset.register_tileset("hull_inside", {
    catalog = MP .. "/schematics/hull_inside.zip",
    groups = {
        hull_inside = true
    },
    tiles = {
        {
            positions = {{x=0,y=0,z=0}},
            rules = {},
            rotations = {0},
            fallback = true
        }
    }
})