------------------------------------------------------------------------------------------
-- UI file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
-- create the window
------------------------------------------------------------------------------------------
centerWindow = {};
centerLabel = {};
centerQS = {};

function GenerateWindow()

		iconSize = 40;

		local horizontalPosition = 20 ;
		local verticalPosition = 40;
		local nbrSlot = 0;
		local windowWidth = (settings["nbrSlots"]["nbr"] * (iconSize + 2)) + 38;
		local windowHeight = (settings["nbrLine"]["nbr"] * (iconSize + 4)) + 60;
		local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

		if(settings["borderShow"]["value"] == true)then
			FoodAndDrinks=Turbine.UI.Lotro.GoldWindow(); 
		else
			FoodAndDrinks=Turbine.UI.Extensions.SimpleWindow(); 
		end
		FoodAndDrinks:SetSize(windowWidth, windowHeight); 
		FoodAndDrinks:SetText(  T[ "PluginName" ] ); 

		FoodAndDrinks.Message=Turbine.UI.Label(); 
		FoodAndDrinks.Message:SetParent(FoodAndDrinks); 
		FoodAndDrinks.Message:SetSize(150,10); 
		FoodAndDrinks.Message:SetPosition(windowWidth/2 - 75, windowHeight - 20 ); 
		FoodAndDrinks.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		if(settings["borderShow"]["value"] == true)then
			FoodAndDrinks.Message:SetText( T[ "PluginText" ] ); 
		else
			FoodAndDrinks.Message:SetText( "" ); 
		end

		FoodAndDrinks:SetZOrder(0);
		FoodAndDrinks:SetWantsKeyEvents(true);
		FoodAndDrinks:SetWantsUpdates(true);
		FoodAndDrinks:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);

		------------------------------------------------------------------------------------------
		-- center window --
		------------------------------------------------------------------------------------------

		for i=1, totalSlots do
			if(nbrSlot == tonumber(settings["nbrSlots"]["nbr"]))then
				verticalPosition = verticalPosition + 40;
				nbrSlot = 0;
				horizontalPosition = 20;
			end

			centerWindow[i] = Turbine.UI.Extensions.SimpleWindow();
			centerWindow[i]:SetSize( iconSize , iconSize );
			centerWindow[i]:SetParent( FoodAndDrinks );
			centerWindow[i]:SetPosition( horizontalPosition , verticalPosition);
			centerWindow[i]:SetVisible( true );
			if(totalSlots < 7)then
				if(i == settings["nbrSlots"]["nbr"])then
					centerWindow[i]:SetBackColor( Turbine.UI.Color( .5, .8, .5, .5) );
				else
					centerWindow[i]:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );
				end
			else
				if(i == settings["nbrSlots"]["nbr"])then
					centerWindow[i]:SetBackColor( Turbine.UI.Color( .5, .8, .5, .5) );
				else
					centerWindow[i]:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );
				end
			end

			centerLabel = Turbine.UI.Label();
			centerLabel:SetParent(centerWindow[i]);
			centerLabel:SetPosition( 0, 0 );
			centerLabel:SetSize( iconSize, iconSize  );
			centerLabel:SetText( "" );
			centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabel:SetZOrder(-1);
			centerLabel:SetMouseVisible(false);

			centerQS[i] = Turbine.UI.Lotro.Quickslot();
			centerQS[i]:SetParent( centerWindow[i] );
			centerQS[i]:SetPosition( 1, 1 );
			centerQS[i]:SetSize( iconSize-4, iconSize-4 );
			centerQS[i]:SetUseOnRightClick(false);

			nbrSlot = nbrSlot + 1;
			horizontalPosition = horizontalPosition + 42;
		end
------------------------------------------------------------------------------------------
-- setting the datas	
------------------------------------------------------------------------------------------
	SettingTheShortCuts();
	DragAndDrop();
	DeleteShortCutes();
	MouseClickHandler();
	EscapeKeyPressed();
	ClosingTheWindow();
end

------------------------------------------------------------------------------------------
-- setting the shortcuts	
------------------------------------------------------------------------------------------
function SettingTheShortCuts()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	for i=1, totalSlots do
		if(settings["shortcuts"]["Data" .. i] ~= "") then
			centerQS[i]:SetShortcut( Turbine.UI.Lotro.Shortcut( settings["shortcuts"]["Type" .. i], settings["shortcuts"]["Data" .. i] ) );
		end
	end
end
------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop	
------------------------------------------------------------------------------------------
function DragAndDrop()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	for i=1, totalSlots do
		centerQS[i].DragDrop = function(sender, args)
			local tmp = Turbine.UI.Lotro.Quickslot();
			local tmp2 = Turbine.UI.Lotro.Quickslot();
			
			tmp = centerQS[i]:GetShortcut();
			tmp = tmp:GetData();

			tmp2 = centerQS[i]:GetShortcut();
			tmp2 = tmp2:GetType();

			settings["shortcuts"]["Data" .. i] = tmp;
			settings["shortcuts"]["Type" .. i] = tmp2;

			SaveSettings();
		end
	end
end
------------------------------------------------------------------------------------------
-- delete the shortcut with mouse wheel
------------------------------------------------------------------------------------------
function DeleteShortCutes()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	for i=1, totalSlots do
		centerQS[i].MouseWheel = function(sender, args)
			if(settings.isLocked == false)then
				settings["shortcuts"]["Data" .. i] = ""; 
				settings["shortcuts"]["Type" .. i] = ""; 
				centerQS[i]:SetShortcut(Turbine.UI.Lotro.Shortcut());
				SaveSettings();
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- MousCLick Handler
------------------------------------------------------------------------------------------
function MouseClickHandler()
	local totalSlots = tonumber(settings["nbrSlots"]["nbr"]) * tonumber(settings["nbrLine"]["nbr"]);

	if(totalSlots < 7 or totalSlots > 7)then
		centerQS[totalSlots].MouseClick = function(sender, args)
			FoodAndDrinks:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
			SaveSettings();
		end
	else
		centerQS[7].MouseClick = function(sender, args)
			FoodAndDrinks:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
			SaveSettings();
		end
	end
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheWindow()
	function FoodAndDrinks:Closing(sender, args)
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- updating the window
------------------------------------------------------------------------------------------
function UpdateWindow()
	ClearWindow();
	GenerateWindow();
end
------------------------------------------------------------------------------------------
-- updating the options window
------------------------------------------------------------------------------------------
function UpdateOptionsWindow()
	GenerateOptionsWindow();
	EscapeKeyPressed();
	ClosingTheWindow();
	ClosingTheOptionsWindow();
end