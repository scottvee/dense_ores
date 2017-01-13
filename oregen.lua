local dense_ores_params = {offset = 0, scale = 1, spread = {x = 50, y = 50, z = 50}, seed = 221, octaves = 2, persist = 0.7}
local dense_ores_threshhold = 0.2

minetest.register_ore({
	ore_type         = "blob",
	ore              = "dense_ores:deep_stone",
	wherein          = "default:stone",
	clust_scarcity   = 300,
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
	clust_scarcity   = 150,
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
	clust_scarcity   = 450,
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
	clust_scarcity   = 320,
	column_height_max  = 8,
	y_min       = -15000,
	y_max       = -7500,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

minetest.register_ore({
	ore_type         = "sheet",
	ore              = "dense_ores:ultra_stone",
	wherein          = "default:stone",
	clust_scarcity   = 400,
	column_height_max  = 2,
	y_min       = -15000,
	y_max       = -5000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "sheet",
	ore              = "dense_ores:ultra_stone",
	wherein          = "default:stone",
	clust_scarcity   = 180,
	column_height_max  = 6,
	y_min       = -31000,
	y_max       = -15000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

-- --------------------------------- DEEP ORES

minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_coal_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 240,
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
	clust_scarcity   = 400,
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
	clust_scarcity   = 450,
	clust_num_ores   = 3,
	clust_size       = 16,
	y_min       = -3000,
	y_max       = -300,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:deep_iron_ore",
	wherein          = "dense_ores:deep_stone",
	clust_scarcity   = 300,
	clust_num_ores   = 4,
	clust_size       = 12,
	y_min       = -3000,
	y_max       = -300,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

-- -------------------------------- DENSE ORES

minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_coal_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 350,
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
	clust_scarcity   = 280,
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
	clust_scarcity   = 512,
	clust_num_ores   = 3,
	clust_size       = 16,
	y_min       = -15000,
	y_max       = -7500,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:dense_iron_ore",
	wherein          = "dense_ores:dense_stone",
	clust_scarcity   = 400,
	clust_num_ores   = 4,
	clust_size       = 10,
	y_min       = -10000,
	y_max       = -5000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})

-- ------------------------------ ULTRA DENSE ORES


minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_coal_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 450,
	clust_num_ores   = 4,
	clust_size       = 16,
	y_min       = -15000,
	y_max       = -5000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_copper_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 300,
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
	clust_scarcity   = 450,
	clust_num_ores   = 2,
	clust_size       = 8,
	y_min       = -31000,
	y_max       = -15000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "dense_ores:ultra_iron_ore",
	wherein          = "dense_ores:ultra_stone",
	clust_scarcity   = 400,
	clust_num_ores   = 4,
	clust_size       = 10,
	y_min       = -20000,
	y_max       = -10000,
	noise_params     = dense_ores_params,
	noise_threshhold = dense_ores_threshhold,
})


minetest.log("info", "[dense_ores] Done loading oregen.lua.")