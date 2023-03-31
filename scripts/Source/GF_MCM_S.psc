Scriptname GF_MCM_S extends SKI_ConfigBase  
;Attach to GF_MCM_Quest

    ;TODO: MCM Menu

    ;/// Properties ///;
    GF_Settings_S property settings auto
    
    ;Called when this config menu is initialized
    event OnConfigInit()
        
        if (settings.debugMode)

            Debug.MessageBox("OnConfigInit")

        endif

    endEvent
    
    ;Called when this config menu registered at the control panel
    event OnConfigRegister()

        if (settings.debugMode)
        
            Debug.Notification("GF: MCM Registered")
        
        endif

    endEvent
    
    ;Called when this config menu is opened
    event OnConfigOpen()
        
        if (settings.debugMode)
        
            Debug.MessageBox("OnConfigOpen")
        
        endif

    endEvent
    
    ;Called when a new page is selected, including the initial empty page
    event OnPageReset(string a_page)

        if a_page == "Main"

            ;/.../;

        elseif a_page == "Debug"

            ;/.../;

        endIf

    endEvent
        