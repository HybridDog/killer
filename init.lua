minetest.register_node("killer:killer", {
        tiles = {"killer_killer.png"},
        groups = {crumbly=1},
        description = "[!] Killer [!]",
        inventory_image = minetest.inventorycube("killer_killer.png", "killer_killer.png", "killer_killer.png"),
        light_source = 14,
})

minetest.register_abm({
        nodenames = {"killer:killer"},
        chance = 5,
        interval = 5,
        action = function(pos, node, active_object_count, active_object_count_wider)
                minetest.set_node({x=pos.x+(math.random(1, 3) * math.random(-1, 1)), y=pos.y+(math.random(1, 3) * math.random(-1, 1)), z=pos.z+(math.random(1, 3)*math.random(-1, 1))}, {name="killer:killer"})
        end,
})

minetest.register_craft({
	output="killer:killer 1",
	recipe={
		{"default:gold_ingot", "default:steel_ingot", "default:gold_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:gold_ingot", "default:steel_ingot", "default:gold_ingot"},
		},
})
