minetest.register_node("killer:killer", {
		tiles = {"killer_killer.png"},
		groups = {crumbly=1},
		description = "[!] Killer [!]",
		light_source = 14,
})

minetest.register_abm({
		nodenames = {"killer:killer"},
		chance = 5,
		interval = 5,
		action = function(pos)
			local p = {
				x=pos.x+(math.random(1, 3) * math.random(-1, 1)),
				y=pos.y+(math.random(1, 3) * math.random(-1, 1)),
				z=pos.z+(math.random(1, 3) * math.random(-1, 1))
			}
			if minetest.get_node(p).name ~= "killer:killer" then
				minetest.set_node(p, {name="killer:killer"})
			end
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
