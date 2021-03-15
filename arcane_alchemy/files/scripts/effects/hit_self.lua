dofile_once("data/scripts/lib/utilities.lua")

local entity = GetUpdatedEntityID()

local root = EntityGetRootEntity( entity )

local x, y = EntityGetTransform(root)

child_id = EntityLoad( "mods/arcane_alchemy/files/entities/effects/punch_limb.xml", x, y )
EntityAddChild( root, child_id )
