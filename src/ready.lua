---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global


local file = rom.path.combine(rom.paths.Content, 'Game/Text/fr/ShellText.fr.sjson')
sjson.hook(file, function(data)
	return sjson_ShellText(data)
end)

modutil.mod.Path.Wrap("SetupMap", function(base, ...)
	prefix_SetupMap()
	
	return base(...)
end)

game.OnControlPressed({'Gift', function()
	return trigger_Gift()
end})


