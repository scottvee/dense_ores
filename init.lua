--  default textures are here:
--  https://github.com/minetest/minetest_game/tree/master/mods/default/textures

local colorDeep = "^[colorize:#220044:40"
local colorDense = "^[colorize:#220011:80"
local colorUltra = "^[colorize:#220000:120"


minetest.register_node("dense_ores:deep_stone", {
	description = "Deep Stone",
	tiles = {"dense_ores_stone32.png"..colorDeep},
	groups = {cracky=2,stone=2},
})
minetest.register_node("dense_ores:dense_stone", {
	description = "Dense Stone",
	tiles = {"dense_ores_stone32.png"..colorDense},
	groups = {cracky=1,stone=1},
})
minetest.register_node("dense_ores:ultra_stone", {
	description = "Ultra Dense Stone",
	tiles = {"dense_ores_stone32.png"..colorUltra},
	groups = {cracky=1,stone=1},
})


-- unpack the stones

minetest.register_craft({
	output = 'default:stone 2',
	recipe = {
		{'dense_ores:deep_stone'}
	}
})

minetest.register_craft({
	output = 'default:stone 3',
	recipe = {
		{'dense_ores:dense_stone'}
	}
})
minetest.register_craft({
	output = 'default:stone 4',
	recipe = {
		{'dense_ores:ultra_stone'}
	}
})

-- IRON ORES 

local rot0="^add_iron.png"
local rot180="^(add_iron.png^[transformR180)"
local rotR90="^(add_iron.png^[transformR90)"
minetest.register_node("dense_ores:deep_iron_ore", {
	description = "Deep Iron Ore",
	tiles = {"dense_ores_stone32.png"..rot0..colorDeep},
	groups = {cracky=2,stone=2},
	drop = "default:iron_lump 2"
})
minetest.register_node("dense_ores:dense_iron_ore", {
	description = "Dense Iron Ore",
	tiles = {"dense_ores_stone32.png"..rot0..rot180..colorDense},
	groups = {cracky=1,stone=1},
	drop = "default:iron_lump 3"
})
minetest.register_node("dense_ores:ultra_iron_ore", {
	description = "Ultra Dense Iron Ore",
	tiles = {"dense_ores_stone32.png"..rot180..rotR90..colorUltra},
	groups = {cracky=1,stone=1},
	drop = "default:iron_lump 4"
})


-- COAL ORES 

local rot0="^add_coal.png"
local rot180="^(add_coal.png^[transformR180)"
local rotR90="^(add_coal.png^[transformR90)"
minetest.register_node("dense_ores:deep_coal_ore", {
	description = "Deep Coal Ore",
	tiles = {"dense_ores_stone32.png"..rot0..colorDeep},
	groups = {cracky=2,stone=2},
	drop = "default:coal_lump 2"
})
minetest.register_node("dense_ores:dense_coal_ore", {
	description = "Dense Coal Ore",
	tiles = {"dense_ores_stone32.png"..rot0..rot180..colorDense},
	groups = {cracky=1,stone=1},
	drop = "default:coal_lump 3"
})
minetest.register_node("dense_ores:ultra_coal_ore", {
	description = "Ultra Dense Coal Ore",
	tiles = {"dense_ores_stone32.png"..rot0..rotR90..colorUltra},
	groups = {cracky=1,stone=1},
	drop = "default:coal_lump 4"
})


-- COPPER ORES 

local rot0="^add_copper.png"
local rot180="^(add_copper.png^[transformR180)"
local rotR90="^(add_copper.png^[transformR90)"
minetest.register_node("dense_ores:deep_copper_ore", {
	description = "Deep Copper Ore",
	tiles = {"dense_ores_stone32.png"..rot0..colorDeep},
	groups = {cracky=2,stone=2},
	drop = "default:copper_lump 2"
})
minetest.register_node("dense_ores:dense_copper_ore", {
	description = "Dense Copper Ore",
	tiles = {"dense_ores_stone32.png"..rot0..rot180..colorDense},
	groups = {cracky=1,stone=1},
	drop = "default:copper_lump 3"
})
minetest.register_node("dense_ores:ultra_copper_ore", {
	description = "Ultra Dense Copper Ore",
	tiles = {"dense_ores_stone32.png"..rot0..rotR90..colorUltra},
	groups = {cracky=1,stone=1},
	drop = "default:copper_lump 4"
})

-- DIAMOND ORES 

local rot0="^add_diamond.png"
local rot180="^(add_diamond.png^[transformR180)"
local rotR90="^(add_diamond.png^[transformR90)"
minetest.register_node("dense_ores:deep_diamond_ore", {
	description = "Deep Diamond Ore",
	tiles = {"dense_ores_stone32.png"..rot0..colorDeep},
	groups = {cracky=2,stone=2},
	drop = "default:diamond 2"
})
minetest.register_node("dense_ores:dense_diamond_ore", {
	description = "Dense Diamond Ore",
	tiles = {"dense_ores_stone32.png"..rot0..rot180..colorDense},
	groups = {cracky=1,stone=1},
	drop = "default:diamond 3"
})
minetest.register_node("dense_ores:ultra_diamond_ore", {
	description = "Ultra Dense Diamond Ore",
	tiles = {"dense_ores_stone32.png"..rot0..rotR90..colorUltra},
	groups = {cracky=1,stone=1},
	drop = "default:diamond 4"
})
local modpath = minetest.get_modpath("dense_ores")

dofile(modpath.."/oregen.lua")

minetest.log("info", "[dense_ores] Done loading main.")