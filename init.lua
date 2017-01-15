--  default textures are here:
--  https://github.com/minetest/minetest_game/tree/master/mods/default/textures

dense_ores_config = Settings(minetest.get_worldpath().."/dense_ores.conf")

local conf_table = dense_ores_config:to_table()

local defaults = {
	enable_deep = "true",
	enable_dense = "true",
	enable_ultra = "true",
	rarity_deep_stone = "3",
	rarity_dense_stone = "4",
	rarity_ultra_stone = "4",
	rarity_of_ores = "2"
}

for k, v in pairs(defaults) do
	if conf_table[k] == nil then
		dense_ores_config:set(k, v)
	end
end
dense_ores_config:write()

dense_ores_colorDeep = "^[colorize:#220044:40"
dense_ores_colorDense = "^[colorize:#220011:80"
dense_ores_colorUltra = "^[colorize:#220000:120"
dense_stone_debug_glow1 = 0 -- 5			-- for debugging the oregen, make stones glow at this level
dense_stone_debug_glow2 = 3 -- 10		-- for debugging the oregen, make ores glow at this level

if dense_ores_config:get_bool("enable_deep") then 
	minetest.register_node("dense_ores:deep_stone", {
		description = "Deep Stone",
		tiles = {"dense_ores_stone32.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2},
		light_source = dense_stone_debug_glow1,
	})
	minetest.register_craft({
		output = 'default:stone 2',
		recipe = {
			{'dense_ores:deep_stone'}
		}
	})
	minetest.register_node("dense_ores:deep_stone_brick", {
		description = "Deep Stone Brick",
		tiles = {"stone_brick32.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2}
	})
	minetest.register_craft({
		output = 'dense_ores:deep_stone_brick 4',
		recipe = {
			{'dense_ores:deep_stone', 'dense_ores:deep_stone'},
			{'dense_ores:deep_stone', 'dense_ores:deep_stone'}
		}
	})
end

if dense_ores_config:get_bool("enable_dense") then 
	minetest.register_node("dense_ores:dense_stone", {
		description = "Dense Stone",
		tiles = {"dense_ores_stone32.png"..dense_ores_colorDense},
		groups = {cracky=2,stone=1},
		light_source = dense_stone_debug_glow1,
	})
	minetest.register_craft({
		output = 'default:stone 3',
		recipe = {
			{'dense_ores:dense_stone'}
		}
	})
	minetest.register_node("dense_ores:dense_stone_brick", {
		description = "Dense Stone Brick",
		tiles = {"stone_brick32.png"..dense_ores_colorDense},
		groups = {cracky=2,stone=1}
	})
	minetest.register_craft({
		output = 'dense_ores:dense_stone_brick 4',
		recipe = {
			{'dense_ores:dense_stone', 'dense_ores:dense_stone'},
			{'dense_ores:dense_stone', 'dense_ores:dense_stone'}
		}
	})
end

if dense_ores_config:get_bool("enable_ultra") then 
	minetest.register_node("dense_ores:ultra_stone", {
		description = "Ultra Dense Stone",
		tiles = {"dense_ores_stone32.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1},
		light_source = dense_stone_debug_glow1,
	})
	minetest.register_craft({
		output = 'default:stone 4',
		recipe = {
			{'dense_ores:ultra_stone'}
		}
	})
	minetest.register_node("dense_ores:ultra_stone_brick", {
		description = "Ultra Stone Brick",
		tiles = {"stone_brick32.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1}
	})
	minetest.register_craft({
		output = 'dense_ores:ultra_stone_brick 4',
		recipe = {
			{'dense_ores:ultra_stone', 'dense_ores:ultra_stone'},
			{'dense_ores:ultra_stone', 'dense_ores:ultra_stone'}
		}
	})
end


-- DEEP ORES 

if dense_ores_config:get_bool("enable_deep") then 
	minetest.register_node("dense_ores:deep_coal_ore", {
		description = "Deep Coal Ore",
		tiles = {"dense_ores_stone32.png^add_coal.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2},
		light_source = dense_stone_debug_glow2,
		drop = "default:coal_lump 2"
	})
	minetest.register_node("dense_ores:deep_copper_ore", {
		description = "Deep Copper Ore",
		tiles = {"dense_ores_stone32.png^add_copper.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2},
		light_source = dense_stone_debug_glow2,
		drop = "default:copper_lump 2"
	})
	minetest.register_node("dense_ores:deep_diamond_ore", {
		description = "Deep Diamond Ore",
		tiles = {"dense_ores_stone32.png^add_diamond.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2},
		light_source = dense_stone_debug_glow2,
		drop = "default:diamond 2"
	})
	minetest.register_node("dense_ores:deep_gold_ore", {
		description = "Deep Gold Ore",
		tiles = {"dense_ores_stone32.png^add_gold.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2},
		drop = "default:gold_lump 2"
	})
	minetest.register_node("dense_ores:deep_iron_ore", {
		description = "Deep Iron Ore",
		tiles = {"dense_ores_stone32.png^add_iron.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2},
		drop = "default:iron_lump 2"
	})
	minetest.register_node("dense_ores:deep_mese_ore", {
		description = "Deep Mese Ore",
		tiles = {"dense_ores_stone32.png^add_mese.png"..dense_ores_colorDeep},
		groups = {cracky=2,stone=2},
		drop = "default:mese_crystal 2"
	})
end

-- DENSE ORES

if dense_ores_config:get_bool("enable_dense") then 
	minetest.register_node("dense_ores:dense_coal_ore", {
		description = "Dense Coal Ore",
		tiles = {"dense_ores_stone32.png^add_coal2.png"..dense_ores_colorDense},
		groups = {cracky=1,stone=1},
		light_source = dense_stone_debug_glow2,
		drop = "default:coal_lump 3"
	})
	minetest.register_node("dense_ores:dense_copper_ore", {
		description = "Dense Copper Ore",
		tiles = {"dense_ores_stone32.png^add_copper2.png"..dense_ores_colorDense},
		groups = {cracky=1,stone=1},
		light_source = dense_stone_debug_glow2,
		drop = "default:copper_lump 3"
	})
	minetest.register_node("dense_ores:dense_diamond_ore", {
		description = "Dense Diamond Ore",
		tiles = {"dense_ores_stone32.png^add_diamond2.png"..dense_ores_colorDense},
		groups = {cracky=1,stone=1},
		light_source = dense_stone_debug_glow2,
		drop = "default:diamond 3"
	})
	minetest.register_node("dense_ores:dense_gold_ore", {
		description = "Dense Gold Ore",
		tiles = {"dense_ores_stone32.png^add_gold2.png"..dense_ores_colorDense},
		groups = {cracky=1,stone=1},
		drop = "default:gold_lump 3"
	})
	minetest.register_node("dense_ores:dense_iron_ore", {
		description = "Dense Iron Ore",
		tiles = {"dense_ores_stone32.png^add_iron2.png"..dense_ores_colorDense},
		groups = {cracky=1,stone=1},
		drop = "default:iron_lump 3"
	})
	minetest.register_node("dense_ores:dense_mese_ore", {
		description = "Dense Mese Ore",
		tiles = {"dense_ores_stone32.png^add_mese2.png"..dense_ores_colorDense},
		groups = {cracky=1,stone=1},
		drop = "default:mese_crystal 3"
	})
end

-- ULTRA DENSE ORES

if dense_ores_config:get_bool("enable_ultra") then 
	minetest.register_node("dense_ores:ultra_coal_ore", {
		description = "Ultra Dense Coal Ore",
		tiles = {"dense_ores_stone32.png^add_coal3.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1},
		light_source = dense_stone_debug_glow2,
		drop = "default:coal_lump 4"
	})
	minetest.register_node("dense_ores:ultra_copper_ore", {
		description = "Ultra Dense Copper Ore",
		tiles = {"dense_ores_stone32.png^add_copper3.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1},
		light_source = dense_stone_debug_glow2,
		drop = "default:copper_lump 4"
	})
	minetest.register_node("dense_ores:ultra_diamond_ore", {
		description = "Ultra Dense Diamond Ore",
		tiles = {"dense_ores_stone32.png^add_diamond3.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1},
		light_source = dense_stone_debug_glow2,
		drop = "default:diamond 4"
	})
	minetest.register_node("dense_ores:ultra_gold_ore", {
		description = "Ultra Dense Gold Ore",
		tiles = {"dense_ores_stone32.png^add_gold3.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1},
		drop = "default:gold_lump 4"
	})
	minetest.register_node("dense_ores:ultra_iron_ore", {
		description = "Ultra Dense Iron Ore",
		tiles = {"dense_ores_stone32.png^add_iron3.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1},
		drop = "default:iron_lump 4"
	})
	minetest.register_node("dense_ores:ultra_mese_ore", {
		description = "Ultra Dense Mese Ore",
		tiles = {"dense_ores_stone32.png^add_mese3.png"..dense_ores_colorUltra},
		groups = {cracky=1,stone=1},
		drop = "default:mese_crystal 4"
	})
end




local modpath = minetest.get_modpath("dense_ores")

dofile(modpath.."/oregen.lua")

minetest.log("info", "[dense_ores] Done loading main.")