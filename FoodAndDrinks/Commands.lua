------------------------------------------------------------------------------------------
-- Command file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
FoodAndDrinksCommand = Turbine.ShellCommand();
------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function FoodAndDrinksCommand:Execute( command, arguments )
	local args3, value3, value4 = arguments:match "(repos) (.*) (.*)";
	------------------------------------------------------------------------------------------
	-- Help command--
	------------------------------------------------------------------------------------------
	if ( arguments == "help" ) then
		commandsHelp();
------------------------------------------------------------------------------------------
-- show command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "show" ) then
		Write(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. T[ "PluginWindowShow" ]);
		FoodAndDrinks:SetVisible(true);
		settings["isWindowVisible"]["isWindowVisible"] = true;
		SaveSettings();
------------------------------------------------------------------------------------------
-- hide command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "hide" ) then
		Write(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. T[ "PluginWindowHide" ]);
		FoodAndDrinks:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings["isWindowVisible"]["isWindowVisible"] == true)then
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowHide" ]);
			FoodAndDrinks:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
		else
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowShow" ]);
			FoodAndDrinks:SetVisible(true);
			settings["isWindowVisible"]["isWindowVisible"] = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- lock command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "lock" ) then
		--Write("Hide the PopoHelper Window");
		if(settings.isLocked == false)then
			settings.isLocked = true;
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " : " .. T[ "PluginLocked" ]);
		else
			settings.isLocked = false;
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " : " .. T[ "PluginUnlocked" ]);
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- options command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "options" ) then
		Write("Display the options Window");
		OptionsWindow:SetVisible(true);
		FoodAndDrinks:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
		settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = true;
		SaveSettings();
------------------------------------------------------------------------------------------
-- clear command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "clear" ) then
		Write(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. T[ "PluginWindowClear" ]);
		ClearWindow();
		SaveSettings();
------------------------------------------------------------------------------------------
-- esc command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "esc" ) then
		if(settings["escEnable"]["escEnable"] == true) then
			Write(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. T[ "PluginEscDesable" ]);
			settings["escEnable"]["escEnable"] = false;
		else
			Write(rgb["start"] .. pluginName .. rgb["clear"] .. " - " .. T[ "PluginEscEnable" ]);
			settings["escEnable"]["escEnable"] = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- reposition command --
------------------------------------------------------------------------------------------
	elseif ( arguments == "repos" ) then
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " : " .. T[ "PluginPosition" ] .. " X: " .. settings["IconPosition"]["xPosIcon"]);
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " : " .. T[ "PluginPosition" ] .. " Y: " .. settings["IconPosition"]["yPosIcon"]);
	elseif ( args3 == "repos" ) then
		Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " : " .. T[ "PluginResize" ] .. " " .. value3 .. "x" .. value4);
		settings["IconPosition"]["xPosIcon"] = value3;
		settings["IconPosition"]["yPosIcon"] = value4;
		SaveSettings();
		Write(T[ "PluginUnload" ] .. " " .. T[ "PluginName" ]);
		Write(T[ "PluginReload" ] .. " " .. T[ "PluginName" ]);
------------------------------------------------------------------------------------------
-- alt command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings["altEnable"]["altEnable"] == true) then
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginAltEnable" ]);
			settings["altEnable"]["altEnable"] = false;
		else
			Write(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginAltEnable" ]);
			settings["altEnable"]["altEnable"] = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- default if nothing is right command --
------------------------------------------------------------------------------------------
	elseif ( arguments ~= "help" or 
			arguments ~= "show" or 
			arguments ~= "hide" or 
			arguments ~= "repos" or 
			arguments ~= "lock" or 
			arguments ~= "options" or 
			arguments ~= "clear" or 
			arguments ~= "toggle" or 
			arguments ~= "esc" or 
			arguments ~= "alt") then
			-- nothing found, so display the help
		commandsHelp();
	end
end
------------------------------------------------------------------------------------------
-- Add the sahell command --
------------------------------------------------------------------------------------------
Turbine.Shell.AddCommand( "Fo;FoodAndDrinks", FoodAndDrinksCommand );