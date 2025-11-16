---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

function sjson_ShellText(data)
	for _,v in ipairs(data.Texts) do
		if v.Id == 'MainMenuScreen_PlayGame' then
			v.DisplayName = 'Test ' .. _PLUGIN.guid
			break
		end
	end
end

function prefix_SetupMap()
	print('Map is loading, here we might load some packages.')
end

function trigger_Gift()
	modutil.mod.Hades.PrintOverhead('Hello there')
	for id, slottedTraitComponent in pairs( game.HUDScreen.ActiveTraitComponents ) do
		rom.log.warning(slottedTraitComponent)
		if slottedTraitComponent.TraitData.Name ~= nil then
			rom.log.warning('Trait: ' .. slottedTraitComponent.TraitData.Name)
		end
	end
	rom.log.warning('Here I am')
end
