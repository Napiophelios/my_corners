new_corners= {}

new_corners_creative = 0 --change value to 1 if you do not want the nodes in the creative inventory

new_corners.register_corner= function( basename, texture, description, craft_from )
	local group_def = {cracky=3, choppy=2, not_in_creative_inventory = new_corners_creative};

minetest.register_node("new_corners:corner_sandstonebrick_"..basename,{
description = "Sandstone Brick Corner with "..description,
tiles = {
  texture.."^([combine:32x32:16,16=default_sandstone_brick.png)^[transformFX",
  texture.."^([combine:32x32:16,16=default_sandstone_brick.png)^[transformR180",
  texture,
		"default_sandstone_brick.png^[transformFXR90^([combine:32x32:16,0="..texture..")^[transformFX",
		texture,
		"default_sandstone_brick.png^[transformFXR90^([combine:32x32:16,0="..texture..")",
		},
inventory_image = "default_sandstone_brick.png^[transformFXR90^([combine:32x32:16,0="..texture..")",
wield_image = "default_sandstone_brick.png^[transformFXR90^([combine:32x32:16,0="..texture..")",
paramtype = "light",
paramtype2 = "facedir",
drop= craft_from.." 2",
groups = group_def,
})

minetest.register_craft({
		output = "new_corners:corner_sandstonebrick_"..basename.." 4",
		recipe = { { "default:sandstonebrick", craft_from, ""},
			{ "default:sandstonebrick", craft_from, "" },
			{ "default:sandstonebrick", craft_from, ""},
		} });
end

--[[
--  Remove the ( -- ) from the nodes you wish to use
--  Add ( -- ) to the ones you dont want to use
]]--

--Default mod:
--new_corners.register_corner( 'brick',        'default_brick.png',        'Bricks',         'default:brick' );
--new_corners.register_corner( 'cobble',      'default_cobble.png',      'Cobble Stone',       'default:cobble' );
--new_corners.register_corner( 'junglewood',        'default_junglewood.png',        'Jungle Wood',         'default:junglewood' );
--new_corners.register_corner( 'pinewood',        'default_pinewood.png',        'pine Wood',         'default:pinewood' );
new_corners.register_corner( 'sandstone',       'default_sandstone.png',       'Sandstone',        'default:sandstone' );
new_corners.register_corner( 'sandstone_brick', 'default_sandstone_brick.png', 'Sandstone Bricks', 'default:sandstonebrick' );
--new_corners.register_corner( 'stone',       'default_stone.png',       'Stone',        'default:stone' );
--new_corners.register_corner( 'stone_brick', 'default_stone_brick.png', 'Stone Bricks', 'default:stonebrick' );
--new_corners.register_corner( 'wood',        'default_wood.png',        'Wood Planks',         'default:wood' );
