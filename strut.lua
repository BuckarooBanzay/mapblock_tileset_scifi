local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("strut", {
    catalog = MP .. "/schematics/strut.zip",
    groups = {
        strut = true
    },
    tiles = {
        {
            -- all sides
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,1,0"] = {groups={"strut"}},
                ["0,-1,0"] = {groups={"strut"}},
                ["0,0,1"] = {groups={"strut"}},
                ["0,0,-1"] = {groups={"strut"}},
                ["1,0,0"] = {groups={"strut"}},
                ["-1,0,0"] = {groups={"strut"}}
            },
            fallback = true,
            rotations = {0}
        },{
            -- upside L shape
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,1,0"] = {groups={"strut"}},
                ["1,0,0"] = {groups={"strut"}}
            },
            rotations = {0,90,180,270}
        },{
            -- downside L shape
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,-1,0"] = {groups={"strut"}},
                ["1,0,0"] = {groups={"strut"}}
            },
            rotations = {0,90,180,270}
        },{
            -- sideways L shape
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,0,1"] = {groups={"strut"}},
                ["1,0,0"] = {groups={"strut"}}
            },
            rotations = {0,90,180,270}
        },{
            -- top
            positions = {{x=0,y=3,z=0}},
            rules = {
                ["0,-1,0"] = {groups={"strut"}}
            },
            rotations = {0}
        },{
            -- middle
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,-1,0"] = {groups={"strut"}},
                ["0,1,0"] = {groups={"strut"}}
            },
            rotations = {0}
        },{
            -- bottom
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["0,1,0"] = {groups={"strut"}}
            },
            rotations = {0}
        },{
            -- horizontal start
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = {groups={"strut"}}
            },
            rotations = {0,90,180,270}
        },{
            -- horizontal center
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["-1,0,0"] = {groups={"strut"}},
                ["1,0,0"] = {groups={"strut"}}
            },
            rotations = {0,90,180,270}
        }
    }
})