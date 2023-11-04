--
--	#     #
--	##    #  ######  #    #  ######   ####   #    #   ####
--	# #   #  #       ##  ##  #       #       #    #  #
--	#  #  #  #####   # ## #  #####    ####   #    #   ####
--	#   # #  #       #    #  #            #  #    #       #
--	#    ##  #       #    #  #       #    #  #    #  #    #
--	#     #  ######  #    #  ######   ####    ####    ####
--
-- Created by Nemesus for FiveM
-- Website: https://nemesus.de
-- Youtube: https://youtube.nemesus.de
-- Console / Delete if you want

print("^0======================================================================^7")
print("^0nMoreFPS loaded:")
print("^0[^4Author^0] ^7:^0 ^0Nemesus | Version 1.0.0^7")
print("^0[^2Website^0] ^7:^0 ^5https://nemesus.de^7")
print("^0[^2Youtube^0] ^7:^0 ^5https://youtube.nemesus.de^7")
print("^0======================================================================^7")

-- ONLY EDIT IF YOU KNOW WHAT YOU ARE DOING!

-- Locales
local fpsModeOn = false

-- Commands
Citizen.CreateThread(function()
    Citizen.Wait(1)
    RegisterCommand("fpsmode", function()
        if fpsModeOn then
            fpsModeOn = false
            CascadeShadowsSetAircraftMode(true)
            CascadeShadowsEnableEntityTracker(false)
            CascadeShadowsSetDynamicDepthMode(true)
            CascadeShadowsSetEntityTrackerScale(5.0)
            CascadeShadowsSetCascadeBoundsScale(5.0)
            CascadeShadowsSetDynamicDepthValue(5.0)
            RopeDrawShadowEnabled(true)
            SetFlashLightFadeDistance(10.0)
            SetLightsCutoffDistanceTweak(10.0)
            SetArtificialLightsState(false)
            TriggerEvent('chat:addMessage', {
                color = {255, 0, 0},
                multiline = true,
                args = {"nMoreFPS", "FPS-Modus deaktiviert!"}
            })
        else
            fpsModeOn = true
            CascadeShadowsClearShadowSampleType()
            CascadeShadowsEnableEntityTracker(true)
            CascadeShadowsSetAircraftMode(false)
            CascadeShadowsSetDynamicDepthMode(false)
            RopeDrawShadowEnabled(false)
            CascadeShadowsSetEntityTrackerScale(0.0)
            CascadeShadowsSetCascadeBoundsScale(0.0)
            CascadeShadowsSetDynamicDepthValue(0.0)
            SetFlashLightFadeDistance(0.0)
            SetLightsCutoffDistanceTweak(0.0)
            TriggerEvent('chat:addMessage', {
                color = {255, 0, 0},
                multiline = true,
                args = {"nMoreFPS", "FPS-Modus aktiviert!"}
            })
        end
    end)
end)
