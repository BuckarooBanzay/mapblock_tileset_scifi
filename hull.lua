local MP = minetest.get_modpath(minetest.get_current_modname())

local g_inside = {groups={"spaceship_inside"}}

mapblock_tileset.register_tileset("hull", {
    catalog = MP .. "/schematics/hull.zip",
    groups = {
        spaceship_inside = true
    },
    disable_orientation = {
        ["scifi_nodes:lighttop"] = true
    },
    tiles = {
        {
            -- center
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["-1,0,0"] = g_inside,
                ["1,0,0"] = g_inside,
                ["0,-1,0"] = g_inside,
                ["0,1,0"] = g_inside
            },
            rotations = {0},
            fallback = true
        },{
            -- upper corner
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,1,0"] = {not_groups={"spaceship_inside"}},
                ["0,-1,0"] = g_inside,
                ["0,0,1"] = g_inside,
                ["0,0,-1"] = {not_groups={"spaceship_inside"}},
                ["1,0,0"] = g_inside,
                ["-1,0,0"] = g_inside
            },
            rotations = {0,90,180,270}
        },{
            -- lower corner
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,1,0"] = g_inside,
                ["0,-1,0"] = {not_groups={"spaceship_inside"}},
                ["0,0,1"] = g_inside,
                ["0,0,-1"] = {not_groups={"spaceship_inside"}},
                ["1,0,0"] = g_inside,
                ["-1,0,0"] = g_inside
            },
            rotations = {0,90,180,270}
        },{
            -- center edge
            positions = {{x=1,y=1,z=0}},
            rules = {
                ["1,0,0"] = {not_groups={"spaceship_inside"}},
                ["-1,0,0"] = g_inside,
                ["0,0,1"] = g_inside,
                ["0,0,-1"] = {not_groups={"spaceship_inside"}},
                ["0,1,0"] = g_inside,
                ["0,-1,0"] = g_inside
            },
            rotations = {0,90,180,270}
        },{
            -- lower edge
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = {not_groups={"spaceship_inside"}},
                ["-1,0,0"] = g_inside,
                ["0,0,1"] = g_inside,
                ["0,0,-1"] = {not_groups={"spaceship_inside"}},
                ["0,1,0"] = g_inside,
                ["0,-1,0"] = {not_groups={"spaceship_inside"}}
            },
            rotations = {0,90,180,270}
        },{
            -- upper edge
            positions = {{x=1,y=2,z=0}},
            rules = {
                ["1,0,0"] = {not_groups={"spaceship_inside"}},
                ["-1,0,0"] = g_inside,
                ["0,0,1"] = g_inside,
                ["0,0,-1"] = {not_groups={"spaceship_inside"}},
                ["0,1,0"] = {not_groups={"spaceship_inside"}},
                ["0,-1,0"] = g_inside
            },
            rotations = {0,90,180,270}
        }
    }
})

mapblock_tileset.register_tileset("spaceship_inside", {
    catalog = MP .. "/schematics/spaceship_inside.zip",
    groups = {
        spaceship_inside = true
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