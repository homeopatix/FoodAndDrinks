------------------------------------------------------------------------------------------
-- localization file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
function CreateLocalizationInfo()
	Strings = {};

	------------------------------------------------------------------------------------------
	-- datas for special character
	------------------------------------------------------------------------------------------
	-- ü = \195\188
	-- ä = \195\164
	-- ö = \195\182
	-- Ä = \195\132
	-- ß = \195\159
	-- à = \195\160
	-- é = \195\169
	-- è = \195\168
	------------------------------------------------------------------------------------------
	-- Deutsche --
	------------------------------------------------------------------------------------------
	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "FoodAndDrinks";
		Strings.PluginText = "Von Homeopatix";
		Strings.PluginEscEnable = "Escape-Taste aktiviert";
		Strings.PluginEscDesable = "Escape-Taste deaktiviert";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginOptionsText = "FoodAndDrinks Optionen";
		Strings.PluginPosition = "Aktuelle Symbols Position";
		Strings.PluginResize = "Neupositionierung des Symbols auf ";
		Strings.PluginUnload = "Entladen Sie das Plugin mit : /plugins entladen ";
		Strings.PluginReload = "Laden Sie das Plugin mit : /plugins laden ";
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = "\n\nListe der Befehle:\n";
		Strings.PluginHelp2 = "/Fo show - Schaufenster.\n";
		Strings.PluginHelp3 = "/Fo hide - verstecke das Fenster.\n";
		Strings.PluginHelp4 = "/Fo options - Zeigen Sie das Optionsfenster an.\n";
		Strings.PluginHelp5 = "/Fo repos Zeigt die tats\195\164chliche Position des Symbols an\n";
		Strings.PluginHelp6 = "/Fo repos xxx xxx Positionieren Sie das Symbol an der Koordinate xxx und xxx\n";
		Strings.PluginHelp7 = "/Fo clear - L\195\182schen Sie alle Verkn\195\188pfungen.\n";
		Strings.PluginHelp8 = "/Fo lock um die Symbole zu sperren oder zu entsperren\n";
		Strings.PluginHelp9 = "/Fo toggle - Fenster ein-oder ausblenden\n";
		Strings.PluginHelp10 = "/Fo alt - Aktivieren oder deaktivieren Sie die alt-Taste um das Symbol zu verschieben.\n\n";
		Strings.PluginHelp11 = "Klicken Sie mit der rechten Maustaste auf das Symbol, um das Optionsfeld anzuzeigen";
		------------------------------------------------------------------------------------------
		-- command text  --
		------------------------------------------------------------------------------------------
		Strings.PluginWindowShow = "Schaufenster.";
		Strings.PluginWindowHide = "verstecke das Fenster.";
		Strings.PluginWindowClear = "L\195\182schen Sie alle Verkn\195\188pfungen.";
		Strings.PluginLocked = "Gesperrte Symbole";
		Strings.PluginUnlocked = "Symbole freigeschaltet";
		------------------------------------------------------------------------------------------
		-- option window --
		------------------------------------------------------------------------------------------
		Strings.PluginOption1 = "Anzahl der Zeilen";
		Strings.PluginOption2 = "Anzahl der Steckpl\195\164tze pro Zeile";
		Strings.PluginOption3 = " Zeigen Sie den Fensterrand an";
		Strings.PluginOption10 = "\195\132nderungen validieren";
		------------------------------------------------------------------------------------------
		-- Français --
		------------------------------------------------------------------------------------------
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
		Strings.PluginName = "FoodAndDrinks";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginEscEnable = "Touche Escape activ\195\169";
		Strings.PluginEscDesable = "Touche Escape desactiv\195\169";
		Strings.PluginAltEnable = "Touche Alt activ\195\169";
		Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
		Strings.PluginOptionsText = "FoodAndDrinks Options";
		Strings.PluginPosition = "Position icone actuelle";
		Strings.PluginResize = "Repositionner l'icone pour ";
		Strings.PluginUnload = "D\195\169chargez le plugin avec : /plugins vider ";
		Strings.PluginReload = "Chargez le plugin avec : /plugins charger ";
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = "\n\nListe des commandes:\n";
		Strings.PluginHelp2 = "/Fo show - affiche la fen\195\168tre.\n";
		Strings.PluginHelp3 = "/Fo hide - cache la fen\195\168tre.\n";
		Strings.PluginHelp4 = "/Fo options - affiche la fen\195\168tre d'options.\n";
		Strings.PluginHelp5 = "/Fo repos Afficher la position actuelle de l'icone\n";
		Strings.PluginHelp6 = "/Fo repos xxx xxx positionner l'icone sur les coordonn\195\169es xxx et xxx\n";
		Strings.PluginHelp7 = "/Fo clear - efface tous les raccourcis.\n";
		Strings.PluginHelp8 = "/Fo lock pour verrouill\195\169 ou d\195\169verrouill\195\169 les icones\n";
		Strings.PluginHelp9 = "/Fo toggle - affiche ou cache la fenetre.\n";
		Strings.PluginHelp10 = "/Fo alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n\n";
		Strings.PluginHelp11 = "Clique droit sur l'icon pour afficher la fen\195\168tre d'options";
		------------------------------------------------------------------------------------------
		-- command text  --
		------------------------------------------------------------------------------------------
		Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
		Strings.PluginWindowHide = "Cache la fen\195\168tre.";
		Strings.PluginWindowClear = "Efface tous les raccourcis.";
		Strings.PluginLocked = "Icones verrouill\195\169es";
		Strings.PluginUnlocked = "Icones d\195\169verouill\195\169es";
		------------------------------------------------------------------------------------------
		-- option window --
		------------------------------------------------------------------------------------------
		Strings.PluginOption1 = "Nombre de lignes";
		Strings.PluginOption2 = "Nombre d'emplacements par ligne";
		Strings.PluginOption3 = " Afficher la bordure de la fenetre";
		Strings.PluginOption10 = "Valider les changements";
		------------------------------------------------------------------------------------------
		-- English --
		------------------------------------------------------------------------------------------
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
		Strings.PluginName = "FoodAndDrinks";
		Strings.PluginText = "By Homeopatix";
		Strings.PluginEscEnable = "Escape key Activated";
		Strings.PluginEscDesable = "Escape key Desactivated";
		Strings.PluginAltEnable = "Alt key Activated";
		Strings.PluginAltDesable = "Alt key Desactivated";
		Strings.PluginOptionsText = "Options FoodAndDrinks";
		Strings.PluginPosition = "Actual icon position";
		Strings.PluginResize = "Repositionning the icon to ";
		Strings.PluginUnload = "Unload the plugin with : /plugins unload ";
		Strings.PluginReload = "Load the plugin with : /plugins load ";
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = "\n\nList of all commands:\n";
		Strings.PluginHelp2 = "/Fo show - show the window.\n";
		Strings.PluginHelp3 = "/Fo hide - hide the window.\n";
		Strings.PluginHelp4 = "/Fo options - display the options window.\n";
		Strings.PluginHelp5 = "/Fo repos Display the actual position of the icon\n";
		Strings.PluginHelp6 = "/Fo repos xxx xxx position the icon to the xxx and xxx coord\n";
		Strings.PluginHelp7 = "/Fo clear - delete all shortcuts.\n";
		Strings.PluginHelp8 = "/Fo lock to lock or unlock the icons\n";
		Strings.PluginHelp9 = "/Fo toggle - display or hide the window\n";
		Strings.PluginHelp10 = "/Fo alt - Activate or deactivate the alt key to move the icon.\n\n";
		Strings.PluginHelp11 = "Right click the icon to show the options panel";
		------------------------------------------------------------------------------------------
		-- command text  --
		------------------------------------------------------------------------------------------
		Strings.PluginWindowShow = "show the window.";
		Strings.PluginWindowHide = "hide the window.";
		Strings.PluginWindowClear = "delete all shortcuts.";
		Strings.PluginLocked = "Icons Locked";
		Strings.PluginUnlocked = "Icons Unlocked";
		------------------------------------------------------------------------------------------
		-- option window --
		------------------------------------------------------------------------------------------
		Strings.PluginOption1 = "Number of lines";
		Strings.PluginOption2 = "Number of slots per line";
		Strings.PluginOption3 = " Display the window border";
		Strings.PluginOption10 = "Validate Changes";
	end
end