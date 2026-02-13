------------------------------------------------------------------------------------------
-- _init_ file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- import librarys
------------------------------------------------------------------------------------------
import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.UI.Extensions";
import "Turbine.Gameplay";
import "Turbine.Gameplay.Attributes";
------------------------------------------------------------------------------------------
-- Import Globals --
------------------------------------------------------------------------------------------
--import "Homeopatix.Potions.Globals";
if Turbine.Engine.GetLanguage() == Turbine.Language.German then
	import "Homeopatix.FoodAndDrinks.Localization.GlobalsDE";
	GLocale = "de";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
	import "Homeopatix.FoodAndDrinks.Localization.GlobalsFR";
	GLocale = "fr";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
	import "Homeopatix.FoodAndDrinks.Localization.GlobalsEN";
	GLocale = "en";
end
------------------------------------------------------------------------------------------
-- Import Utility --
------------------------------------------------------------------------------------------
import "Homeopatix.FoodAndDrinks.VindarPatch";
import "Homeopatix.FoodAndDrinks.Notification";
import "Homeopatix.FoodAndDrinks.LoadAndSave";
import "Homeopatix.FoodAndDrinks.MinimizedIcon";
import "Homeopatix.FoodAndDrinks.FCT";
------------------------------------------------------------------------------------------
-- Import initialization --
------------------------------------------------------------------------------------------
import "Homeopatix.FoodAndDrinks.Init";
import "Homeopatix.FoodAndDrinks.Activation";
------------------------------------------------------------------------------------------
-- Import Scripts --
------------------------------------------------------------------------------------------
import "Homeopatix.FoodAndDrinks.Main";
------------------------------------------------------------------------------------------
-- Import UI elements --
------------------------------------------------------------------------------------------
import "Homeopatix.FoodAndDrinks.UI";
import "Homeopatix.FoodAndDrinks.OptionsWindow";
------------------------------------------------------------------------------------------
-- Import Commands --
------------------------------------------------------------------------------------------
import "Homeopatix.FoodAndDrinks.Commands";