Scriptname GF_Updater_S extends ActiveMagicEffect
;Attach to GF_Updater_Effect
;TODO: Updater Spell for pc/npc

    ;/// Properties ///;
    GF_Master_S property master auto

    ;Event received when this effect is first started (OnInit may not have been run yet!)
    event OnEffectStart(Actor akTarget, Actor akCaster)

        string targetName = akTarget.GetName()

        if(master.isValidFemale(akTarget))

            Debug.Notification("GF: " + targetName + " is a valid actor")
            ;TODO: Actor is a female

        else

            Debug.Notification("GF: " + targetName + " is not a valid actor!")
            Dispel()

        endIf

    endEvent

    ;Event received when this effect is finished (effect may already be deleted, calling
    ;functions on this effect will fail)
    event OnEffectFinish(Actor akTarget, Actor akCaster)

        ;TODO: OnEffectFinish

    endEvent
