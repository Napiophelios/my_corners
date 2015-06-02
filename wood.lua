new_corners= {}

new_corners_creative = 0 --change value to 1 if you do not want the nodes in the creative inventory

new_corners.register_corner= function( basename, texture, description, craft_from )
	local group_def = {cracky=3, choppy=2, not_in_creative_inventory = new_corners_creative};

minetest.register_node("new_corners:corner_wood_"..basename,{
description = "Wood Corner with "..description,
inventory_image = texture.."^[transformR90^([combine:32x32:0,20=default_wood.png)^[transformFXR90",
wield_image = texture.."^[transformR90^([combine:32x32:0,20=default_wood.png)^[transformFXR90",
tiles = {
  texture.."^[transformFXR180^([combine:32x32:20,20=default_wood.png)^[transformFX",
  texture.."^[transformFXR180^([combine:32x32:20,20=default_wood.png)^[transformR180",
  texture,
		texture.."^[transformR90^([combine:32x32:0,20=default_wood.png)^[transformFXR90",
		texture.."^[transformFY",
		texture.."^[transformR90^([combine:32x32:0,20=default_wood.png)^[transformFYR90",
		},
		drop= craft_from.." 2",
  groups = group_def,
		paramtype = "light",
		paramtype2 = "facedir",
})

minetest.register_craft({
		output = "new_corners:corner_wood_"..basename.." 4",
		recipe = { { "default:wood", craft_from, ""},
			{ "default:wood", craft_from, "" },
			{ "default:wood", craft_from, ""},
		} });

end

--[[
--  Remove the ( -- ) from the nodes you wish to use
--  Add ( -- ) to the ones you dont want to use
]]--

--Default mod:
--new_corners.register_corner( 'brick',        'default_brick.png',	   'Bricks',	     'default:brick' );
--new_corners.register_corner( 'cobble',      'default_cobble.png',	 'Cobble Stone',       'default:cobble' );
--new_corners.register_corner( 'junglewood',	    'default_junglewood.png',	     'Jungle Wood',	    'default:junglewood' );
--new_corners.register_corner( 'pinewood',	  'default_pinewood.png',	 'pine Wood',	      'default:pinewood' );
--new_corners.register_corner( 'sandstone',	  'default_sandstone.png',	 'Sandstone',	     'default:sandstone' );
--new_corners.register_corner( 'sandstone_brick', 'default_sandstone_brick.png', 'Sandstone Bricks', 'default:sandstonebrick' );
new_corners.register_corner( 'stone',	    'default_stone.png',       'Stone',        'default:stone' );
new_corners.register_corner( 'stone_brick', 'default_stone_brick.png', 'Stone Bricks', 'default:stonebrick' );
new_corners.register_corner( 'wood',	    'default_wood.png',        'Wood Planks',	      'default:wood' );
