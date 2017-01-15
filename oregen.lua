local dense_ores_params = {offset = 0, scale = 1, spread = {x = 8, y = 8, z = 8}, seed = 221, octaves = 2, persist = 0.7}
local dense_ores_threshhold = 0.2

local conf_table = dense_ores_config:to_table()

dense_ores_rarity_deep = conf_table["rarity_deep_stone"]
if type(dense_ores_rarity_deep) ~= "number" then dense_ores_rarity_deep=5 end
dense_ores_rarity_dense = conf_table["rarity_dense_stone"]
if type(dense_ores_rarity_dense) ~= "number" then dense_ores_rarity_dense=5 end
dense_ores_rarity_ultra = conf_table["rarity_ultra_stone"] 
if type(dense_ores_rarity_ultra) ~= "number" then dense_ores_rarity_ultra=5 end
dense_ores_rarity_ores = conf_table["rarity_of_ores"]
if type(dense_ores_rarity_ores) ~= "number" then dense_ores_rarity_ores=5 end

minetest.register_ore({
	ore_type         = "blob",
	ore              = "dense_ores:deep_stone",
	wherein          = "default:stone",
	clust_scarcity   = 60*tonumber(dense_ores_rarity_deep),
	-- clust_num_ores   = 4,
	clust_size       = 8,
	y_min       = -2000,
	y_max       = -200,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "blob",
	ore              = "dense_ores:deep_stone",
	wherein          = "default:stone",
	clust_scarcity   = 30*tonumber(dense_ores_rarity_deep),
	-- clust_num_ores   = 4,
	clust_size       = 12,
	y_min       = -4000,
	y_max       = -2000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

minetest.register_ore({
	ore_type         = "sheet",
	ore              = "dense_ores:dense_stone",
	wherein          = "default:stone",
	clust_scarcity   = 90*tonumber(dense_ores_rarity_dense),
	column_height_max  = 3,
	y_min       = -7500,
	y_max       = -1500,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "sheet",
	ore              = "dense_ores:dense_stone",
	wherein          = "default:stone",
	clust_scarcity   = 60*tonumber(dense_ores_rarity_dense),
	column_height_max  = 6,
	y_min       = -15000,
	y_max       = -7500,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

minetest.register_ore({
	ore_type         = "sheet",
	ore              = "dense_ores:ultra_stone",
	wherein          = "default:stone",
	clust_scarcity   = 60*tonumber(dense_ores_rarity_ultra),
	column_height_max  = 2,
	y_min       = -15000,
	y_max       = -5000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "blob",
	ore              = "dense_ores:ultra_stone",
	wherein          = "default:stone",
	clust_scarcity   = 80*tonumber(dense_ores_rarity_ultra),
	clust_size       = 5,
	y_min       = -20000,
	y_max       = -15000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "blob",
	ore              = "dense_ores:ultra_stone", --"default:meselamp",
	wherein          = "default:stone",
	clust_scarcity   = 120*tonumber(dense_ores_rarity_ultra),
	clust_size       = 9,
	y_min       = -31000,
	y_max       = -20001,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

-- --------------------------------- DEEP ORES

minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_coal_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 12*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 7,
	clust_size       = 16,
	y_min       = -3000,
	y_max       = -300,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_copper_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 20*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 6,
	clust_size       = 8,
	y_min       = -3000,
	y_max       = -300,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_diamond_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 25*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 3,
	clust_size       = 16,
	y_min       = -3000,
	y_max       = -300,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_gold_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 60*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 9,
	y_min       = -4000,
	y_max       = -2100,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_iron_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 40*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 12,
	y_min       = -3000,
	y_max       = -300,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_mese_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 30*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 7,
	y_min       = -4000,
	y_max       = -2100,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
-- -------------------------------- DENSE ORES

minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_coal_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 10*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 7,
	clust_size       = 16,
	y_min       = -6000,
	y_max       = -1500,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_copper_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 30*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 5,
	clust_size       = 10,
	y_min       = -6000,
	y_max       = -1500,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_diamond_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 50*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 3,
	clust_size       = 16,
	y_min       = -15000,
	y_max       = -7500,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_gold_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 12*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 10,
	y_min       = -12000,
	y_max       = -8000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_iron_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 20*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 10,
	y_min       = -10000,
	y_max       = -5000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_mese_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 24*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 6,
	y_min       = -15000,
	y_max       = -9000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

-- ------------------------------ ULTRA DENSE ORES


minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_coal_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 40*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 16,
	y_min       = -31000,
	y_max       = -5000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_copper_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 60*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 7,
	clust_size       = 16,
	y_min       = -15000,
	y_max       = -5000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_diamond_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 20*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 2,
	clust_size       = 8,
	y_min       = -31000,
	y_max       = -15000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_gold_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 50*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 12,
	y_min       = -22000,
	y_max       = -12000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_iron_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 30*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 10,
	y_min       = -20000,
	y_max       = -10000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_mese_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 40*tonumber(dense_ores_rarity_ores),
	clust_num_ores   = 4,
	clust_size       = 10,
	y_min       = -31000,
	y_max       = -22000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})


minetest.log("info", "[dense_ores] Done loading oregen.lua.")