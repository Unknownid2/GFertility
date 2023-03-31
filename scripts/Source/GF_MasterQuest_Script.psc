Scriptname GF_Master_S extends Quest  
;Attach to GF_Master_Quest

    ;/// Propeties ///;
    SLIF_Inflate property slif auto ;unused
    GF_Settings_S property settings auto
    
    ;/// Vars ///;
    ;/.../;
    
    ;Start
    event OnInit()

        Debug.Notification("Build = " + settings.build) ;FIXME: always print 0

        if (Game.GetModByName("SexLab Inflation Framework.esp") != 255)

            GFStart()

        else

            Debug.Notification("GF: Slif not found!, stopping...")
            ;TODO: stop quest script

        endIf
        
    endEvent

    function GFStart()

        Debug.Notification("GF Starts...")
        ;TODO: Master behaviour...

    endFunction

    bool function isValidFemale(Actor akActor)

        if (SLIF_Main.GetGender(akActor) == 1)

            return true

        else

            return false

        endif

    endFunction
