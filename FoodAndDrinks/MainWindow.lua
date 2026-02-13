------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
function CreateMainWindow()
	FoodAndDrinksWindow=Turbine.UI.Lotro.GoldWindow(); 
	FoodAndDrinksWindow:SetSize(300,100); 
	FoodAndDrinksWindow:SetText(Strings.PluginName); 
	FoodAndDrinksWindow.Message=Turbine.UI.Label(); 
	FoodAndDrinksWindow.Message:SetParent(FoodAndDrinksWindow); 
	FoodAndDrinksWindow.Message:SetSize(150,10); 
	FoodAndDrinksWindow.Message:SetPosition(FoodAndDrinksWindow:GetWidth()/2 - 75, FoodAndDrinksWindow:GetHeight()/2 + 30); 
	FoodAndDrinksWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	FoodAndDrinksWindow.Message:SetText(Strings.PluginText); 
	FoodAndDrinksWindow:SetZOrder(0);
	FoodAndDrinksWindow:SetWantsKeyEvents(true);

	FoodAndDrinksWindow:SetPosition(settings.positionX, settings.positionY);

------------------------------------------------------------------------------------------
-- center window
------------------------------------------------------------------------------------------
	centerWindow = Turbine.UI.Extensions.SimpleWindow();
	centerWindow:SetSize( 36 , 36 );
	centerWindow:SetParent( FoodAndDrinksWindow );
	centerWindow:SetPosition( 18 ,FoodAndDrinksWindow:GetHeight()/2 - 10);
	centerWindow:SetVisible( true );
	centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

	centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow2:SetSize( 36 , 36 );
	centerWindow2:SetParent( FoodAndDrinksWindow );
	centerWindow2:SetPosition( 56 ,FoodAndDrinksWindow:GetHeight()/2 - 10);
	centerWindow2:SetVisible( true );
	centerWindow2:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

	centerWindow3 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow3:SetSize( 36 , 36 );
	centerWindow3:SetParent( FoodAndDrinksWindow );
	centerWindow3:SetPosition( 94,FoodAndDrinksWindow:GetHeight()/2 - 10);
	centerWindow3:SetVisible( true );
	centerWindow3:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

	centerWindow4 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow4:SetSize( 36 , 36 );
	centerWindow4:SetParent( FoodAndDrinksWindow );
	centerWindow4:SetPosition( 132,FoodAndDrinksWindow:GetHeight()/2 - 10);
	centerWindow4:SetVisible( true );
	centerWindow4:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

	centerWindow5 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow5:SetSize( 36 , 36 );
	centerWindow5:SetParent( FoodAndDrinksWindow );
	centerWindow5:SetPosition( 170,FoodAndDrinksWindow:GetHeight()/2 - 10);
	centerWindow5:SetVisible( true );
	centerWindow5:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

	centerWindow6 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow6:SetSize( 36 , 36 );
	centerWindow6:SetParent( FoodAndDrinksWindow );
	centerWindow6:SetPosition( 208,FoodAndDrinksWindow:GetHeight()/2 - 10);
	centerWindow6:SetVisible( true );
	centerWindow6:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

	centerWindow7 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow7:SetSize( 36 , 36 );
	centerWindow7:SetParent( FoodAndDrinksWindow );
	centerWindow7:SetPosition( 246,FoodAndDrinksWindow:GetHeight()/2 - 10);
	centerWindow7:SetVisible( true );
	centerWindow7:SetBackColor( Turbine.UI.Color( .5, .8, .5, .5) );

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 36, 36  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow2);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 36, 36  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow3);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 36, 36  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow4);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 36, 36  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow5);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 36, 36  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow6);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 36, 36  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow7);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 36, 36  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerQS1 = Turbine.UI.Lotro.Quickslot();
	centerQS1:SetParent( centerWindow );
	centerQS1:SetPosition( 0, 0 );
	centerQS1:SetSize( 35, 35 );
	centerQS1:SetUseOnRightClick(false);

	centerQS2 = Turbine.UI.Lotro.Quickslot();
	centerQS2:SetParent( centerWindow2 );
	centerQS2:SetPosition( 0, 0 );
	centerQS2:SetSize( 35, 35 );
	centerQS2:SetUseOnRightClick(false);

	centerQS3 = Turbine.UI.Lotro.Quickslot();
	centerQS3:SetParent( centerWindow3 );
	centerQS3:SetPosition( 0, 0 );
	centerQS3:SetSize( 35, 35 );
	centerQS3:SetUseOnRightClick(false);

	centerQS4 = Turbine.UI.Lotro.Quickslot();
	centerQS4:SetParent( centerWindow4 );
	centerQS4:SetPosition( 0, 0 );
	centerQS4:SetSize( 35, 35 );
	centerQS4:SetUseOnRightClick(false);

	centerQS5 = Turbine.UI.Lotro.Quickslot();
	centerQS5:SetParent( centerWindow5 );
	centerQS5:SetPosition( 0, 0 );
	centerQS5:SetSize( 35, 35 );
	centerQS5:SetUseOnRightClick(false);

	centerQS6 = Turbine.UI.Lotro.Quickslot();
	centerQS6:SetParent( centerWindow6 );
	centerQS6:SetPosition( 0, 0 );
	centerQS6:SetSize( 35, 35 );
	centerQS6:SetUseOnRightClick(false);

	centerQS7 = Turbine.UI.Lotro.Quickslot();
	centerQS7:SetParent( centerWindow7 );
	centerQS7:SetPosition( 0, 0 );
	centerQS7:SetSize( 35, 35 );
	centerQS7:SetUseOnRightClick(false);
end