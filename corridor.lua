local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("corridor", {
    catalog = MP .. "/schematics/corridor.zip",
    groups = {
        corridor = true
    },
    disable_orientation = {
        ["scifi_nodes:octofloor"] = true
    },
    tiles = {
        {
            -- all directions
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"corridor"} },
                ["-1,0,0"] = { groups = {"corridor"} },
                ["0,0,1"] = { groups = {"corridor"} },
                ["0,0,-1"] = { groups = {"corridor"} }
            },
            fallback = true,
            rotations = {0}
        },{
            -- T
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"corridor"} },
                ["-1,0,0"] = { groups = {"corridor"} },
                ["0,0,1"] = { groups = {"corridor"} }
            },
            rotations = {0,90,180,270}
        },{
            -- Straight
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"corridor"} },
                ["-1,0,0"] = { groups = {"corridor"} }
            },
            rotations = {0,90}
        },{
            -- Corner
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"corridor"} },
                ["0,0,1"] = { groups = {"corridor"} }
            },
            rotations = {0,90,180,270}
        },{
            -- End
            positions = {{x=4,y=0,z=0}},
            rules = {
                ["-1,0,0"] = { groups = {"corridor"} }
            },
            rotations = {0,90,180,270}
        },{
            -- End with corridor up
            positions = {{x=4,y=0,z=1}},
            rules = {
                ["-1,0,0"] = { groups = {"corridor"} },
                ["0,1,0"] = { groups = {"corridor_stairs"} }
            },
            rotations = {0,90,180,270}
        },{
            -- End with corridor down
            positions = {{x=4,y=2,z=1}},
            rules = {
                ["-1,0,0"] = { groups = {"corridor"} },
                ["0,-1,0"] = { groups = {"corridor_stairs"} }
            },
            rotations = {0,90,180,270}
        }
    }
})

mapblock_tileset.register_tileset("corridor_stairs", {
    catalog = MP .. "/schematics/corridor.zip",
    groups = {
        corridor_stairs = true
    },
    disable_orientation = {
        ["scifi_nodes:octofloor"] = true
    },
    tiles = {
        {
            -- up and down
            positions = {{x=4,y=1,z=1}},
            rules = {
                ["0,1,0"] = { groups = {"corridor"} },
                ["0,-1,0"] = { groups = {"corridor"} }
            },
            fallback = true,
            rotations = {0} -- TODO
        }
    }
})