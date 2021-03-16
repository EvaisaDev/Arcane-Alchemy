table.insert(status_effects, {
	id="AA_HIT_SELF",
	ui_name="Angry Limb",
	ui_description="Stop hitting yourself",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/hit_self.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/hit_self.xml",
});

table.insert(status_effects, {
	id="AA_COLLAPSE",
	ui_name="Collapsing",
	ui_description="You are collapsing in on yourself",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/dark_matter.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/dark_matter.xml",
	add_as_child=true
});

table.insert(status_effects, {
	id="AA_STATIC_CHARGE",
	ui_name="Static charge",
	ui_description="You are electrically charged",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/charged.png",
	protects_from_fire=false,
	effect_entity="data/entities/misc/electricity.xml",
});

table.insert(status_effects, {
	id="AA_SINKING",
	ui_name="Sinking",
	ui_description="You are being grabbed",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/hunger.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/sinking.xml",
});

table.insert(status_effects, {
	id="AA_REPULSION",
	ui_name="Repulsion",
	ui_description="A force is throwing you",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/repulsive.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/repulsion.xml",
});

table.insert(status_effects, {
	id="AA_SHRINK",
	ui_name="Shrunken",
	ui_description="You have been shrunken",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/shrink.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/shrink.xml",
});

table.insert(status_effects, {
	id="AA_HUNGRY_VOMIT",
	ui_name="Slime vomit",
	ui_description="You feel it crawling back up",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/crawl.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/vomitslime.xml",
});
table.insert(status_effects, {
	id="LOVE_POTION",
	ui_name="LOVE ME",
	ui_description="PLEASE DONT GO",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/LOVE.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/love.xml",
});

table.insert(status_effects, {
	id="PATH",
	ui_name="infinite wealth?",
	ui_description="Nearby liquids,gasses,and other objects become rice",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/rice.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/path.xml",
});

table.insert(status_effects, {
	id="ICEFIRE",
	ui_name="Frozen inferno",
	ui_description="Nearby fire burns into frozen vapour",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/icefire.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/icefire.xml",
});

table.insert(status_effects, {
	id="GRAVITY",
	ui_name="Gravitational anomaly",
	ui_description="Nearby objects fly towards you",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/gravity.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/gravity.xml",
});

table.insert(status_effects, {
	id="CLONE",
	ui_name="cloned",
	ui_description="you are being cloned!",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/cloned.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/cloned.xml",
});

table.insert(status_effects, {
	id="POLYMORPH2",
	ui_name="polymorph test",
	ui_description="you have polymorphed",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/cloned.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/polymorph_test.xml",
});

table.insert(status_effects, {
	id="GLUED",
	ui_name="Glued",
	ui_description="you feel extremely sticky",
	ui_icon="mods/arcane_alchemy/files/gfx/ui/glued.png",
	protects_from_fire=false,
	effect_entity="mods/arcane_alchemy/files/entities/effects/custom_glue/glue_shot.xml",
});