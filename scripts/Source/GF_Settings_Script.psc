Scriptname GF_Settings_Script extends SKI_ConfigBase
{MCM menu of Goddess of Fertility}

;/// Variables ///;
;/// Properties ///;
    GF_MasterQuest_Script Property Master Auto

;/// Default Values ///;
    ; Main
    ; System
        bool default_debugMode = false

;/// Options Values ///;
    ; Stats
        ;TODO: MCM Stats page

    ; Main
        ;TODO: MCM Main page

    ; System
        ;TODO: MCM System page
        bool Property debugMode Auto ;Unused
        int Property build = 4 AutoReadOnly ;TODO: <- Change before tests
        string Property version = "0.1.4" AutoReadOnly ;TODO: <- Change before tests

;/// Options ///;
;/// Functions ///;

    ; Overridden skyUI GetVersion() to use its update event
    int Function GetVersion()
        return build
    EndFunction

    ; Return true if all required mods are present
    bool Function CheckRequirements()
        ; Note: Without skyui the mod won't work at all so it's is not checked

        ;SKSE
        ;TODO: check skse

        ;SLIF
        If (Game.GetModByName("SexLab Inflation Framework.esp") == 255)
            Debug.Notification("Missing requirement!: Sexlab Inflation Framework.")
            return false
        EndIf

        return true
    EndFunction

;/// Events ///;

    ; Called when this config menu is initialized
    event OnConfigInit()
    	Debug.Notification("GFertility: Initializing...")
        Debug.Notification("Version = " + version)
        CheckRequirements()
    endEvent

    ; Called when this config menu registered at the control panel
    event OnConfigRegister()
    	Debug.Notification("GFertility: Ready!")
    endEvent

    event OnConfigOpen()
    	{Called when this config menu is opened}
    	Debug.Notification("GFertility: Event_OnConfigOpen Not implemented yet.")
    endEvent

    event OnConfigClose()
    	{Called when this config menu is closed}
    	Debug.Notification("GFertility: Event_OnConfigClose Not implemented yet.")
    endEvent

    ; Called when aVersion update of this script has been detected
    event OnVersionUpdate(int aVersion)
        ;TODO: Update code (if needed)
    	Debug.Notification("GFertility: Updating...")
        Debug.Notification("Version = " + aVersion)
    endEvent

    ; Called when a new page is selected, including the initial empty page
    event OnPageReset(string a_page)

        If (a_page == "Stats")
            SetCursorPosition(0)
            SetCursorFillMode(LEFT_TO_RIGHT)
            AddTextOption("Nothing here yet.", "", OPTION_FLAG_DISABLED)

        ElseIf (a_page == "Main")
            SetCursorPosition(0)
            SetCursorFillMode(LEFT_TO_RIGHT)
            AddTextOption("Nothing here yet.", "", OPTION_FLAG_DISABLED)

        ElseIf (a_page == "System")
            SetCursorPosition(0)
            SetCursorFillMode(LEFT_TO_RIGHT)
            AddTextOption("Nothing here yet.", "", OPTION_FLAG_DISABLED)

        Else
            ;TODO: Initial page
        EndIf
    endEvent

    event OnOptionHighlight(int a_option)
    	{Called when highlighting an option}
    	Debug.Notification("GFertility: Event_OnOptionHighlight Not implemented yet.")
    endEvent

    event OnOptionSelect(int a_option)
    	{Called when a non-interactive option has been selected}
    	Debug.Notification("GFertility: Event_OnOptionSelect Not implemented yet.")
    endEvent

    event OnOptionDefault(int a_option)
    	{Called when resetting an option to its default value}
    	Debug.Notification("GFertility: Event_OnOptionDefault Not implemented yet.")
    endEvent

    event OnOptionSliderOpen(int a_option)
    	{Called when a slider option has been selected}
    	Debug.Notification("GFertility: Event_OnOptionSliderOpen Not implemented yet.")
    endEvent

    event OnOptionSliderAccept(int a_option, float a_value)
    	{Called when a new slider value has been accepted}
    	Debug.Notification("GFertility: Event_OnOptionSliderAccept Not implemented yet.")
    endEvent

    event OnOptionMenuOpen(int a_option)
    	{Called when a menu option has been selected}
    	Debug.Notification("GFertility: Event_OnOptionMenuOpen Not implemented yet.")
    endEvent

    event OnOptionMenuAccept(int a_option, int a_index)
    	{Called when a menu entry has been accepted}
    	Debug.Notification("GFertility: Event_OnOptionMenuAccept Not implemented yet.")
    endEvent

    event OnOptionColorOpen(int a_option)
    	{Called when a color option has been selected}
    	Debug.Notification("GFertility: Event_OnOptionColorOpen Not implemented yet.")
    endEvent

    event OnOptionColorAccept(int a_option, int a_color)
    	{Called when a new color has been accepted}
    	Debug.Notification("GFertility: Event_OnOptionColorAccept Not implemented yet.")
    endEvent

    event OnOptionKeyMapChange(int a_option, int a_keyCode, string a_conflictControl, string a_conflictName)
    	{Called when a key has been remapped}
    	Debug.Notification("GFertility: Event_OnOptionKeyMapChange Not implemented yet.")
    endEvent

    ; @since 4
    event OnOptionInputOpen(int a_option)
    	{Called when a text input option has been selected}
    	Debug.Notification("GFertility: Event_OnOptionInputOpen Not implemented yet.")
    endEvent

    ; @since 4
    event OnOptionInputAccept(int a_option, string a_input)
    	{Called when a new text input has been accepted}
    	Debug.Notification("GFertility: Event_OnOptionInputAccept Not implemented yet.")
    endEvent

    ; @since 2
    event OnHighlightST()
    	{Called when highlighting a state option}
    	Debug.Notification("GFertility: Event_OnHighlightST Not implemented yet.")
    endEvent

    ; @since 2
    event OnSelectST()
    	{Called when a non-interactive state option has been selected}
    	Debug.Notification("GFertility: Event_OnSelectST Not implemented yet.")
    endEvent

    ; @since 2
    event OnDefaultST()
    	{Called when resetting a state option to its default value}
    	Debug.Notification("GFertility: Event_OnDefaultST Not implemented yet.")
    endEvent

    ; @since 2
    event OnSliderOpenST()
    	{Called when a slider state option has been selected}
    	Debug.Notification("GFertility: Event_OnSliderOpenST Not implemented yet.")
    endEvent

    ; @since 2
    event OnSliderAcceptST(float a_value)
    	{Called when a new slider state value has been accepted}
    	Debug.Notification("GFertility: Event_OnSliderAcceptST Not implemented yet.")
    endEvent

    ; @since 2
    event OnMenuOpenST()
    	{Called when a menu state option has been selected}
    	Debug.Notification("GFertility: Event_OnMenuOpenST Not implemented yet.")
    endEvent

    ; @since 2
    event OnMenuAcceptST(int a_index)
    	{Called when a menu entry has been accepted for this state option}
    	Debug.Notification("GFertility: Event_OnMenuAcceptST Not implemented yet.")
    endEvent

    ; @since 2
    event OnColorOpenST()
    	{Called when a color state option has been selected}
    	Debug.Notification("GFertility: Event_OnColorOpenST Not implemented yet.")
    endEvent

    ; @since 2
    event OnColorAcceptST(int a_color)
    	{Called when a new color has been accepted for this state option}
    	Debug.Notification("GFertility: Event_OnColorAcceptST Not implemented yet.")
    endEvent

    ; @since 2
    event OnKeyMapChangeST(int a_keyCode, string a_conflictControl, string a_conflictName)
    	{Called when a key has been remapped for this state option}
    	Debug.Notification("GFertility: Event_OnKeyMapChangeST Not implemented yet.")
    endEvent

    ; @since 4
    event OnInputOpenST()
    	{Called when a text input state option has been selected}
    	Debug.Notification("GFertility: Event_OnInputOpenST Not implemented yet.")
    endEvent

    ; @since 4
    event OnInputAcceptST(string a_input)
    	{Called when a new text input has been accepted for this state option}
    	Debug.Notification("GFertility: Event_OnInputAcceptST Not implemented yet.")
    endEvent

;/// Options States ///;
