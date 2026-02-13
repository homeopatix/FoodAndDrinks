------------------------------------------------------------------------------------------
-- fonctions file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
-- clear the main window
------------------------------------------------------------------------------------------
function ClearWindow()
	for i=1, NbrSlotsMax do
		settings["shortcuts"]["Data" .. i] = "";
		settings["shortcuts"]["Type" .. i] = "";
		if(centerQS[i] ~= nil)then
			centerQS[i]:SetShortcut( Turbine.UI.Lotro.Shortcut( ));
		end
	end
end
------------------------------------------------------------------------------------------
-- display the list of command
------------------------------------------------------------------------------------------
function commandsHelp()
	notification(
		rgb["start"] .. 
		T[ "PluginHelp1" ] ..
		rgb["clear"] ..
		T[ "PluginHelp2" ] ..
		T[ "PluginHelp3" ] ..
		T[ "PluginHelp4" ] ..
		T[ "PluginHelp5" ] ..
		T[ "PluginHelp6" ] ..
		T[ "PluginHelp7" ] ..
		T[ "PluginHelp8" ] ..
		T[ "PluginHelp9" ] ..
		T[ "PluginHelp10" ] ..
		T[ "PluginHelp11" ] ..
		T[ "PluginHelp12" ]
	);
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheOptionsWindow()
	function OptionsWindow:Closing(sender, args)
		settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- event handler for escape key
------------------------------------------------------------------------------------------
function EscapeKeyPressed()
	FoodAndDrinks.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			if(settings["escEnable"]["escEnable"] == false) then
				FoodAndDrinks:SetVisible(false);
				settings["isWindowVisible"]["isWindowVisible"] = false;
				SaveSettings();
			end
			OptionsWindow:SetVisible(false);
			settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
			SaveSettings();
		end
	
		-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
		if ( args.Action == 268435635 ) then
			hudVisible=not hudVisible;
			if hudVisible then
				FoodAndDrinks:SetVisible(false);
				MainMinimizedIcon:SetVisible(false);
			else
				FoodAndDrinks:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);
				MainMinimizedIcon:SetVisible(true);
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- window position changed
------------------------------------------------------------------------------------------
function WindowPositionChanged()
	FoodAndDrinks.PositionChanged = function( sender, args )
   		local x,y = FoodAndDrinks:GetPosition();
		settings["windowPosition"]["xPos"] = x;
   		settings["windowPosition"]["yPos"] = y;
		settings["optionsWindowPosition"]["xPos"] = x;
		settings["optionsWindowPosition"]["yPos"] = y;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- options window position changed
------------------------------------------------------------------------------------------
function OptionsWindowPositionChanged()
	OptionsWindow.PositionChanged = function( sender, args )
		local x,y = OptionsWindow:GetPosition();
		settings["optionsWindowPosition"]["xPos"] = x;
		settings["optionsWindowPosition"]["yPos"] = y;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- minimized icon handler
------------------------------------------------------------------------------------------
function CreateAndHandleMinimizeIcon()
if(settings["isWindowVisible"]["isWindowVisible"] == true)then
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, FoodAndDrinks:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, FoodAndDrinks:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(0);

	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
end