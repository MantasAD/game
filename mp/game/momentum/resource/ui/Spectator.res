"resource/ui/Spectator.res"
{
    "SpectatorGUI"
    {
        "ControlName"		"Frame"
        "fieldName"			"SpectatorGUI"
        "tall"				"480"
        "autoResize"		"0"
        "pinCorner"			"0"
        "visible"			"1"
        "enabled"			"1"
        "tabPosition"		"0"
    }

    "TopBar"
    {
        "ControlName"		"Panel"
        "fieldName"			"TopBar"
        "xpos"				"0"
        "ypos"				"0"
        "tall"				"52"
    //Handled in code
        "wide"				"0" 
        "autoResize"		"0"
        "pinCorner"			"0"
        "visible"			"1"
        "enabled"			"1"
        "tabPosition"		"0"
    }

    "PlayerLabel"
    {
        "ControlName"		"Label"
        "fieldName"			"PlayerLabel"
        "xpos"				"10"
        "ypos"				"20"
        "wide"				"81"
        "tall"				"15"
        "autoResize"		"0"
        "pinCorner"			"0"
        "visible"			"1"
        "enabled"			"1"
        "textAlignment"		"west"
        "dulltext"			"0"
        "brighttext"		"0"
        "auto_wide_tocontents" "1"
    }

    "TimeLabel"
    {
        "ControlName"		"Label"
        "fieldName"			"TimeLabel"
        "xpos"				"10"
        "ypos"				"28"
        "wide"				"81"
        "tall"				"15"
        "autoResize"		"0"
        "pinCorner"			"0"
        "visible"			"1"
        "enabled"			"1"
        "textAlignment"		"west"
        "dulltext"			"0"
        "brighttext"		"0"
        "auto_wide_tocontents" "1"
    }

    "ReplayLabel"
    {
        "ControlName"		"Label"
        "fieldName"			"ReplayLabel"
        "xpos"				"c-175"
        "ypos"				"18"
        "wide"				"350"
        "tall"				"26"
        "autoResize"		"0"
        "pinCorner"			"0"
        "visible"			"1"
        "enabled"			"1"
        "tabPosition"		"0"
        "textAlignment"		"center"
    }
    
    "ClosePanel"
    {
        "ControlName"   "ImagePanel"
        "fieldName"     "ClosePanel"
        "xpos"          "r36"//Give a 4 pixel padding
        "ypos"          "4"
        "wide"          "32"
        "tall"          "32"
        "autoResize"    "0"
        "pinCorner"     "0"
        "visible"       "1"
        "enabled"       "1"
        "scaleImage"    "1"
        "image"         "close_button"
        "mouseinputenabled" "1"
    }
    
    "ShowControls"
    {
        "ControlName"   "ImagePanel"
        "fieldName"     "ShowControls"
        "xpos"          "r72"
        "ypos"          "4"
        "wide"          "32"
        "tall"          "32"
        "autoResize"    "0"
        "pinCorner"     "0"
        "visible"       "1"
        "enabled"       "1"
        "scaleImage"    "1"
        "tooltiptext"   "#MOM_SpecGUI_ToggleControls" 
        "image"         "toggle_replay_controls"
        "mouseinputenabled" "1"
    }

    "PrevPlayerButton"
    {
        "ControlName"   "ImagePanel"
        "fieldName"     "PrevPlayerButton"
        "xpos"          "c-64"
        "ypos"          "16"
        "wide"          "32"
        "tall"          "32"
        "autoResize"    "0"
        "pinCorner"     "0"
        "visible"       "1"
        "enabled"       "1"
        "scaleImage"    "1"
        "tooltiptext"   "#MOM_SpecGUI_PrevPlayer" 
        "image"         "left_arrow_button"
        "mouseinputenabled" "1"
    }

    "NextPlayerButton"
    {
        "ControlName"   "ImagePanel"
        "fieldName"     "NextPlayerButton"
        "xpos"          "c+32"
        "ypos"          "16"
        "wide"          "32"
        "tall"          "32"
        "autoResize"    "0"
        "pinCorner"     "0"
        "visible"       "1"
        "enabled"       "1"
        "scaleImage"    "1"
        "tooltiptext"   "#MOM_SpecGUI_NextPlayer" 
        "image"         "right_arrow_button"
        "mouseinputenabled" "1"
    }

    "DetachInfo"
    {
        "ControlName" "Label"
        "fieldName" "DetachInfo"
        "xpos" "r202"
        "ypos" "34"
        "wide" "200"
        "tall" "20"
        "textAlignment" "east"
        "labelText" "#MOM_SpecGUI_GainControl"
        "dulltext" "0"
        "brighttext" "0"
    }
}
