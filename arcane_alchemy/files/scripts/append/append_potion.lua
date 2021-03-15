table.insert(materials_magic, {
    material="AA_MAT_DARKMATTER",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_MAT_HITSELF",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_MAT_ARBORIUM",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_MAT_HUNGRY_SLIME",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_MAT_REPULTIUM",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_CLONE",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_GRAVLIQUID",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_ICEFIRE",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_PATH",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_LOVE",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_LIQUID_SPELL",
    cost=500,
    percentage=3
});

table.insert(materials_magic, {
    material="AA_UNSTABLE_LIQUID_SPELL",
    cost=500,
    percentage=0.4
});

table.insert(materials_magic, {
    material="AA_LIQUID_ROCK",
    cost=500,
});

table.insert(materials_magic, {
    material="AA_MAT_STATIC_CHARGE",
    cost=500,
});

local old_init = init
init = function( entity_id )
    roll_number = Random(1,100 * 1000) / 1000
    possible_rolls = {}
    for k, v in pairs(materials_magic)do
        if(v.percentage ~= nil)then
            if(roll_number < v.percentage)then
                table.insert(possible_rolls, v)
            end
        end
    end
    if(#possible_rolls == 0)then
        old_init(entity_id)
    else
        potion_material = random_from_array( possible_rolls)
        potion_material = potion_material.material

        local components = EntityGetComponent( entity_id, "VariableStorageComponent" )
    
        if( components ~= nil ) then
            for key,comp_id in pairs(components) do 
                local var_name = ComponentGetValue( comp_id, "name" )
                if( var_name == "potion_material") then
                    potion_material = ComponentGetValue( comp_id, "value_string" )
                end
            end
        end
        
        local year,month,day = GameGetDateAndTimeLocal()
        
        if ((( month == 5 ) and ( day == 1 )) or (( month == 4 ) and ( day == 30 ))) and (Random( 0, 100 ) <= 20) then
            potion_material = "sima"
        end
    
        local total_capacity = tonumber( GlobalsGetValue( "EXTRA_POTION_CAPACITY_LEVEL", "1000" ) ) or 1000
        if ( total_capacity > 1000 ) then
            local comp = EntityGetFirstComponentIncludingDisabled( entity_id, "MaterialSuckerComponent" )
                
            if ( comp ~= nil ) then
                ComponentSetValue( comp, "barrel_size", total_capacity )
            end
            
            EntityAddTag( entity_id, "extra_potion_capacity" )
        end
    
        AddMaterialInventoryMaterial( entity_id, potion_material, total_capacity )
    end
end