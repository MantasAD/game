///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"Light Gray"		"211 211 211 20"
		"Gray" 				"128 128 128 150"
		"Dark Gray" 		"64 64 64 200"
		
		"Red"                "192 28 0 140"
		"Black"                "0 0 0 196"
		"TransparentBlack"    "0 0 0 196"
		"TransparentLightBlack"    "0 0 0 90"
	
		"Blank"                "0 0 0 1"

		"MOM.Panel.Fg"				"255 255 255 125"
		"MOM.Panel.Bg"				"211 211 211 50"
		"MomentumBlue"	"30 150 210 255"
		"MomentumRed"	"255 75 75 255"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"200 200 200 255"	// the lit side of a control
		Border.Dark						"40 40 40 100"		// the dark/unlit side of a control
		Border.Selection				"0 0 0 76"			// the additional border color for displaying the default/selected button
		Border.DarkSolid				"40 40 40 255"
		Border.Subtle					"80 80 80 255"

		Button.TextColor				"82 82 82 255"
		Button.BgColor					"227 227 227 255"
		Button.ArmedTextColor			"46 114 178 255"
		Button.ArmedBgColor				"240 240 240 255"	
		Button.DepressedTextColor		"White"
		Button.DepressedBgColor			"84 178 245 255"
		Button.FocusBorderColor			"82 82 82 20"

		CheckButton.TextColor			"White"
		CheckButton.SelectedTextColor	"White"
		CheckButton.BgColor				"MOM.Panel.Bg"
		CheckButton.Border1  			"Border.Subtle" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Subtle"		// the right checkbutton border
		CheckButton.Check				"118 189 118 255"	// color of the check itself
		CheckButton.HighlightFgColor	"OffWhite"
		CheckButton.ArmedBgColor		"Blank"
		CheckButton.DepressedBgColor	"Blank"
		CheckButton.DisabledBgColor	   	"153 153 153 255"
				
		ComboBoxButton.ArrowColor		"81 81 81 255"
		ComboBoxButton.ArmedArrowColor	"MomentumBlue"
		ComboBoxButton.BgColor			"MOM.Panel.Bg"
		ComboBoxButton.DisabledBgColor	"Light Gray"

		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"MOM.Panel.Bg"	
		Frame.OutOfFocusBgColor			"97 100 102 240"	
		Frame.FocusTransitionEffectTime	"0.3"					// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.3"					// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"200 200 200 196"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"200 200 200 196"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font				"DefaultSmall"		
		FrameTitleBar.TextColor			"255 255 255 204"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 91"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"DullWhite"
		Label.TextColor					"White"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"White"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"110 110 110 255"
		Label.DisabledFgColor2			"50 50 50 255"

		ListPanel.TextColor					"White"
		ListPanel.TextBgColor				"Blank"
		ListPanel.BgColor					"MOM.Panel.Bg"
		ListPanel.SelectedTextColor			"White"
		ListPanel.SelectedBgColor			"MomentumBlue"
		ListPanel.OutOfFocusSelectedTextColor	"Gray"
		ListPanel.SelectedOutOfFocusBgColor	"132 183 241 100"
		ListPanel.EmptyListInfoTextColor	"White"

		Menu.TextColor					"White"
		Menu.BgColor					"Gray"
		Menu.ArmedTextColor				"White"
		Menu.ArmedBgColor				"MomentumBlue"
		Menu.TextInset					"6"

		Panel.FgColor					"Gray"
		Panel.BgColor					"Blank"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"MOM.Panel.Bg"

		PropertySheet.TextColor			"10 10 10 200"
		PropertySheet.SelectedTextColor	"10 10 10 255"
		PropertySheet.SelectedBgColor	"10 10 10 255"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another
		PropertySheet.BgColor "0 0 0 255"

		RadioButton.TextColor			"White"
		RadioButton.SelectedTextColor	"MomentumBlue"

		RichText.TextColor				"White"
		RichText.BgColor				"TransparentBlack"
		RichText.SelectedTextColor		"MomentumBlue"
		RichText.SelectedBgColor		"Light Gray"//"MOM.Panel.Bg"

		ScrollBar.Wide					"15"

		ScrollBarButton.FgColor				"60 60 60 255"
		ScrollBarButton.BgColor				"207 207 207 255"
		ScrollBarButton.ArmedFgColor		"20 65 72 255"
		ScrollBarButton.ArmedBgColor		"210 237 255 255"
		ScrollBarButton.DepressedFgColor	"9 119 226 255"
		ScrollBarButton.DepressedBgColor	"31 207 248 255"

		ScrollBarSlider.FgColor				"220 220 220 255"			// nob color
		ScrollBarSlider.BgColor				"184 184 184 229"	// slider background color

		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Dark Gray"
		SectionedListPanel.TextColor		"Light Gray"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"White"
		SectionedListPanel.SelectedBgColor				"MomentumBlue"
		SectionedListPanel.OutOfFocusSelectedTextColor	"White"
		SectionedListPanel.OutOfFocusSelectedBgColor	"132 183 241 100"

		Slider.NobColor				"White"
		Slider.TextColor			"White"
        Slider.BgColor              "Blank"
		Slider.TrackColor			"White"
		Slider.DisabledTextColor1	"Dark Gray"
		Slider.DisabledTextColor2	"50 50 50 255"

		TextEntry.TextColor			"White"
		TextEntry.BgColor			"MOM.Panel.Bg"
		TextEntry.CursorColor		"Black"
		TextEntry.DisabledTextColor	"Light Gray"
		TextEntry.DisabledBgColor	"TransparentBlack"
		TextEntry.SelectedTextColor	"White"
		TextEntry.SelectedBgColor	"MomentumBlue"
		TextEntry.OutOfFocusSelectedBgColor	"132 183 241 100"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"White"

		Tooltip.TextColor			"White"
		Tooltip.BgColor				"MOM.Panel.Bg"

		TreeView.BgColor			"Light Gray"

		WizardSubPanel.BgColor		"Blank"

		Console.TextColor			"White"
		Console.DevTextColor		"MomentumBlue"
	}

	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		// fonts are used in order that they are listed
        "MapListFont"
		{
			"1"
			{
				"name" "BigNoodleTitling"
				"tall" "30"
				"weight" "0"
				"antialias" "1"
                "custom" "1"
			}
		}
        
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"10"
				"weight"	"500"
				"antialias" "1"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"7"
				"weight"	"500"
				"antialias" "1"
			}
		}
		"DefaultFixedOutline"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Lucida Console" [$X360]
				"name"		 "Lucida Console" [$OSX]
				"name"		 "Verdana" [$LINUX]
				"tall"		"14" [$LINUX]
				"tall"		 "10"
				"tall_lodef" "15"
				"tall_hidef" "20"
				"weight"	 "0"
				"outline"	 "1"
			}
		}
		"Default"
		{
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"16"
				"weight"	"500"
                "antialias" "1"
			}
		}
		"DefaultBold"
		{
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana Bold" [$LINUX]
				"tall"		"16"
				"weight"	"1000"
                "antialias" "1"
			}
		}
        "DefaultBoldLarge"
        {
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana Bold" [$LINUX]
				"tall"		"18"
				"weight"	"1000"
                "antialias" "1"
			}
		}
        
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"16"
				"weight"	"500"
				"underline" "1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"12" [!$LINUX]
				"tall"		"16" [$LINUX]
				"weight"	"0"
                "antialias" "1"
			}
		}
		"DefaultSmallDropShadow"
		{
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"13"
				"weight"	"0"
				"dropshadow" "1"
                "antialias" "1"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"11"
				"weight"	"0"
                "antialias" "1"
			}
		}

		"DefaultLarge"
		{
			"1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"18"
				"weight"	"0"
                "antialias" "1"
			}
		}
        "DefaultLargeDropShadow"
        {
            "1"
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"18"
				"weight"	"0"
				"dropshadow" "1"
                "antialias" "1"
			}
        }
        "DefaultVeryLarge"
        {
            "1"
            {
                "name" "Tahoma" [!$LINUX]
                "name" "Verdana" [$LINUX]
                "tall" "22"
                "antialias" "1"
            }
        }
        
		"UiBold"
		{
			"1"	[$WIN32]
			{
				"name"		"Tahoma" [!$LINUX]
				"name"		"Verdana" [$LINUX]
				"tall"		"12"
				"weight"	"1000"
			}
			"1"	[$X360]
			{
				"name"		"Tahoma"
				"tall"		"24"
				"weight"	"2000"
				"outline"	"1"
			}
		}
		"MenuLarge"
		{
			"1"
			{
				"name"		"Verdana" 
				"tall"		"16" 
				"weight"	"1000"
				"antialias" "1"
			}
		}
		"AchievementTitleFont"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"1200"
				"antialias" "1"
				"outline" "1"
			}
		}
		
		"AchievementTitleFontSmaller"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"18"
				"weight"	"1200"
				"antialias" "1"
				//"outline" "1"
			}
		}
		
		
		"AchievementDescriptionFont"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"15"
				"weight"	"1200"
				"antialias" "1"
				"outline" "1"
				"yres"		"0 480"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"1200"
				"antialias" "1"
				"outline" "1"
				"yres"	 "481 10000"
			}
		}
		
		"ConsoleText"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Lucida Console" [$OSX]
				"name"		 "Verdana" [$LINUX]
				"tall"		"14" [$LINUX]
				"tall"		"8"
				"weight"	"500"
                "antialias" "1"
			}
		}
        
        "ConsoleEntryText"
        {
            "1"
            {
                //"name" "Lucida Console" [$WINDOWS]
                //"name" "Lucida Console" [$OSX]
                //"name" "Verdana" [$LINUX]
                "name" "Verdana"
                "tall" "14" [$LINUX]
                "tall" "8"
                "weight" "500"
                "antialias" "1"
            }
        }

		// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"14"
				"weight"	"0"
				"symbol"	"1"
			}
		}

		"Trebuchet24"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"24"
				"weight"	"900"
			}
		}

		"Trebuchet20"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"20"
				"weight"	"900"
			}
		}

		"Trebuchet18"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"18"
				"weight"	"900"
			}
		}

		// HUD numbers
		// We use multiple fonts to 'pulse' them in the HUD, hence the need for many of near size
		"HUDNumber"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"40"
				"weight"	"900"
			}
		}
		"HUDNumber1"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"41"
				"weight"	"900"
			}
		}
		"HUDNumber2"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"42"
				"weight"	"900"
			}
		}
		"HUDNumber3"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"43"
				"weight"	"900"
			}
		}
		"HUDNumber4"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"44"
				"weight"	"900"
			}
		}
		"HUDNumber5"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"45"
				"weight"	"900"
			}
		}
		"DefaultFixed"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Lucida Console" [$X360]
				"name"		 "Verdana" [$LINUX]
				"tall"		"11" [$LINUX]
				"tall"		"10"
				"weight"	"0"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"DefaultFixedDropShadow"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Lucida Console" [$X360]
				"name"		 "Lucida Console" [$OSX]
				"name"		 "Courier" [$LINUX]
				"tall"		"14" [$LINUX]
				"tall"		"10"
				"weight"	"0"
				"dropshadow" "1"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		TitleFont
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"72"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}

		TitleFont2
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"120"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}
		
		StatsTitle	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"2000"
				"tall"			"20"
				"antialias"		"1"
			}
		}
		
		StatsText	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"2000"
				"tall"			"18"
				"antialias"		"1"
			}
		}
		
		AchievementItemTitle	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"1500"
				"tall"			"16" [!$POSIX]
				"tall"			"18" [$POSIX]
				"antialias"		"1"
			}
		}

		AchievementItemDate	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"1500"
				"tall"			"16"
				"antialias"		"1"
			}
		}

		
		StatsPageText
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"1500"
				"tall"			"14" [!$POSIX]
				"tall"			"16" [$POSIX]
				"antialias"		"1"
			}
		}
		
		AchievementItemTitleLarge	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"1500"
				"tall"			"18" [!$POSIX]
				"tall"			"19" [$POSIX]
				"antialias"		"1"
			}
		}
		
		AchievementItemDescription	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"weight"		"1000"
				"tall"			"14" [!$POSIX]
				"tall"			"15" [$POSIX]
				"antialias"		"1"
			}
		}

		
		"ServerBrowserTitle"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"35"
				"tall_lodef"	"40"
				"weight"	"500"
				"additive"	"0"
				"antialias" "1"
			}
		}

		"ServerBrowserSmall"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"480 599"
			}
			"2"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"768 1023"
				"antialias"	"1"
			}
			"4"
			{
				"name"		"Tahoma"
				"tall"		"19"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1024 1199"
				"antialias"	"1"
			}
			"5"
			{
				"name"		"Tahoma"
				"tall"		"19"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1200 6000"
				"antialias"	"1"
			}
		}
	
	}

	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder		SubtleBorder
		ButtonBorder	RaisedBorder
		ComboBoxBorder	DepressedBorder
		MenuBorder		SubtleBorder
		BrowserBorder	DepressedBorder
		PropertySheetBorder	RaisedBorder

		FrameBorder
		{
			// rounded corners for frames
			//"backgroundtype" "2"

			Left
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}
		}

		SubtleBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}
		}

		DepressedBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}
		}
		RaisedBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDisabledBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDepressedBorder
		{
			"backgroundtype" "0"
		}

		ScrollBarButtonBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}
		}
		
		ScrollBarButtonDepressedBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}
		}

		TabBorder
		{
			"inset" "1 1 1 1"

			render 
			{
				"0" "fill( x0, y0, x1, y1, Black )"
			}

			render_bg 
			{
				"0" "fill( x0, y0, x1, y1, Orange )"
			}

		}

		TabActiveBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Subtle"
					"offset" "0 0"
				}
			}

		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
			}
			Top
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.DarkSolid"
					"offset" "0 0"
				}
			}
		}
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		"1"		"resource/HALFLIFE2.ttf"
		"2"		"resource/font/HL2EP2.ttf"
		"3"     "resource/marlett.ttf"	
        "1"     "resource/font/BigNoodleTitling.ttf"
	}
}
