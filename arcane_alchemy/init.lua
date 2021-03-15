dofile_once("mods/arcane_alchemy/files/scripts/misc/add_translation.lua")

register_translation("item_vial_with_material", "Vial of $0")
register_translation("item_vial_with_material_description", "A glass vial containing $0")

function add_random_recipe(file_to_insert, input1, input2, output1, output2, probability, blob_radius)
	local a1, a2, a3, a4, a5, a6 = GameGetDateAndTimeUTC()

	SetRandomSeed( a1*a2*a3*a4*a5*a6, a1*a2*a3*a4*a5*a6 )

	local xml2lua = dofile("mods/arcane_alchemy/lib/xml2lua/xml2lua.lua")
	local handler = dofile("mods/arcane_alchemy/lib/xml2lua/xmlhandler/tree.lua")

	local parser = xml2lua.parser(handler)

	local materials = ModTextFileGetContent(file_to_insert)

	parser:parse(materials)

	local bla = {}

	

	local mat1num = Random(0, #input1)
	
	--[[local has_key = table_get_key(input2, input1[mat1num])
	if(has_key ~= nil)then
		input2[has_key] = nil
	end]]
	
	for k,v in pairs(input2) do
		if v == input1[mat1num] then
			table.remove(input2, k)
		end
	end

	local mat2num = Random(0, #input2)

	table.insert(handler.root.Materials.Reaction, { _attr = {
		probability=tostring(probability),
		input_cell1=input1[mat1num],
		input_cell2=input2[mat2num],
		output_cell1=output1,
		output_cell2=output2,
		blob_radius1=tostring(blob_radius),
		blob_radius2=tostring(blob_radius)
	}})

	ModTextFileSetContent(file_to_insert, xml2lua.toXml(handler.root, "Materials", 0))

	return input1[mat1num], input2[mat1num], output1, output2
end


ModMaterialsFileAdd( "mods/arcane_alchemy/files/scripts/append/append_materials.xml" )
ModLuaFileAppend( "data/scripts/status_effects/status_list.lua", "mods/arcane_alchemy/files/scripts/append/append_status_list.lua" );
ModLuaFileAppend( "data/scripts/items/potion.lua", "mods/arcane_alchemy/files/scripts/append/append_potion.lua" );
ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/arcane_alchemy/files/scripts/append/append_actions.lua")

--local materials = {"AA_MAT_HITSELF","AA_MAT_SHRINKIUM","AA_MAT_DARKMATTER","AA_MAT_STATIC_CHARGE"}
--local materials2 = {"AA_MAT_HITSELF","AA_MAT_SHRINKIUM","AA_MAT_DARKMATTER","AA_MAT_STATIC_CHARGE"}

--add_random_recipe("mods/arcane_alchemy/files/scripts/append/append_materials.xml", materials, materials2, "AA_MAT_BLOOM", "air", 100, 2)




function OnPlayerSpawned( player_entity ) -- this runs when player entity has been created
	local x, y = EntityGetTransform(player_entity)
	--EntityLoad("data/entities/items/pickup/broken_wand.xml",x,y)
--	dofile("data/scripts/items/potion.lua")

	--[[
	for k, v in pairs(materials_magic)do
		print(v.material)
	end
]]



	--[[EntityAddComponent( player_entity, "LuaComponent", {
		script_source_file="mods/arcane_alchemy/files/scripts/misc/modify_broken.lua",
		execute_on_added="1",
		execute_every_n_frame="5",
	})]]
	--EntityLoad("mods/arcane_alchemy/files/entities/misc/vial.xml",x,y)
end

