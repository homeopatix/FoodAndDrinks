------------------------------------------------------------------------------------------
-- OptionWindow file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define size of the window
------------------------------------------------------------------------------------------
local windowWidth = 0;
local windowHeight = 0;
local positionInitiale = 0;

windowWidth = 400;
windowHeight = 300;
positionInitiale = 40;
------------------------------------------------------------------------------------------
-- create the options window
------------------------------------------------------------------------------------------
function GenerateOptionsWindow()
		OptionsWindow=Turbine.UI.Lotro.GoldWindow(); 
		OptionsWindow:SetSize(windowWidth, windowHeight); 
		OptionsWindow:SetText( T[ "PluginOptionsText" ] ); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(150,10); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 75, windowHeight - 17 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText( T[ "PluginText" ] ); 

		OptionsWindow:SetZOrder(0);
		OptionsWindow:SetWantsKeyEvents(true);

		OptionsWindow:SetPosition((Turbine.UI.Display:GetWidth()-OptionsWindow:GetWidth())/2,(Turbine.UI.Display:GetHeight()-OptionsWindow:GetHeight())/2);
		OptionsWindow:SetVisible(false);

		------------------------------------------------------------------------------------------
		-- center window
		------------------------------------------------------------------------------------------
		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		OptionsWindow.Message:SetText( T[ "PluginOption1" ] ); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale + 15 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("Max 24"); 
  
		textBoxLines = Turbine.UI.Lotro.TextBox();
		textBoxLines:SetParent( OptionsWindow );
		textBoxLines:SetSize(100, 30); 
		textBoxLines:SetText(settings["nbrLine"]["nbr"]); 
		textBoxLines:SetPosition(windowWidth/2 - 50, positionInitiale + 30);
		textBoxLines:SetVisible(true);
		textBoxLines:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		textBoxLines:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));
		textBoxLines:SetBackColor( Turbine.UI.Color( .9, .5, .7, .5));

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale + 80 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		OptionsWindow.Message:SetText( T[ "PluginOption2" ] ); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale + 95 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("Min 3 - Max 24"); 

		textBoxSlots = Turbine.UI.Lotro.TextBox();
		textBoxSlots:SetParent( OptionsWindow );
		textBoxSlots:SetSize(100, 30); 
		textBoxSlots:SetText(settings["nbrSlots"]["nbr"]); 
		textBoxSlots:SetPosition(windowWidth/2 - 50, positionInitiale + 125);
		textBoxSlots:SetVisible(true);
		textBoxSlots:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		textBoxSlots:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));
		textBoxSlots:SetBackColor( Turbine.UI.Color( .9, .5, .7, .5));		


		checkBoxKeep = Turbine.UI.Lotro.CheckBox();
		checkBoxKeep:SetParent( OptionsWindow );
		checkBoxKeep:SetSize(350, 20); 
		checkBoxKeep:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxKeep:SetText( T[ "PluginOption3" ] );
		checkBoxKeep:SetPosition(windowWidth/2 - 100, 210);
		checkBoxKeep:SetVisible(true);
		if(settings["borderShow"]["value"] == true)then
			checkBoxKeep:SetChecked(true);
		else
			checkBoxKeep:SetChecked(false);
		end
		checkBoxKeep:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

		buttonValider = Turbine.UI.Lotro.GoldButton();
		buttonValider:SetParent( OptionsWindow );
		buttonValider:SetPosition(windowWidth/2 - 125, 250);
		buttonValider:SetSize( 300, 20 );
		buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		buttonValider:SetText( T[ "PluginOptionValidate" ] );
		buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		buttonValider:SetVisible(true);
		buttonValider:SetMouseVisible(true);

		ValidateChanges();
end
------------------------------------------------------------------------------------------
-- boutton valider
------------------------------------------------------------------------------------------
function ValidateChanges()
	buttonValider.MouseClick = function(sender, args)
			local tmpLine = 0;
			tmpLine = tonumber(textBoxLines:GetText());

			if(tmpLine < 1 or tmpLine > 24)then
				tmpLine = 10;
				textBoxLines:SetText(tmpLine);
				settings["nbrLine"]["nbr"] =  tmpLine;
			else
				settings["nbrLine"]["nbr"] =  tmpLine;
			end

			local tmpSlots = 0;
			tmpSlots = tonumber(textBoxSlots:GetText());

			if(tmpSlots > 24 or tmpSlots < 3 or (tmpSlots*settings["nbrLine"]["nbr"]) > NbrSlotsMax)then
				tmpSlots = 10;
				textBoxSlots:SetText(tmpSlots);
				settings["nbrSlots"]["nbr"] = tmpSlots;
			else
				settings["nbrSlots"]["nbr"] = tmpSlots;
			end

			if (checkBoxKeep:IsChecked()) then
				settings["borderShow"]["value"] = true;
			else
				settings["borderShow"]["value"] = false;
			end

			OptionsWindow:SetVisible(false);
			settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;

			SaveSettings();
			UpdateWindow();
			UpdateOptionsWindow();
			ClosingTheOptionsWindow();
		end
end