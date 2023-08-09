local ESX = exports['es_extended']:getSharedObject()

function palautus()

  Citizen.CreateThread(function()
    local playerPed = GetPlayerPed(-1)
			
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ExecuteCommand('walk butch')
    SetPedMotionBlur(playerPed, false)
  end)
end 



RegisterNetEvent('esx_t_drugeffect:kokaiini')
AddEventHandler('esx_t_drugeffect:kokaiini', function()
  local playerPed = GetPlayerPed(-1)

    local success = lib.progressCircle({
    duration = 1500,
    position = 'middle',
    label = 'Vedetään kamaa..',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
        move = false,
    },
    anim = {
        dict = 'switch@trevor@trev_smoking_meth',
        clip = 'trev_smoking_meth_loop' 
    },
})
    SetTimecycleModifier("spectator3")
    SetPedConfigFlag(GetPlayerPed(-1), 100, true)
    ExecuteCommand('walk drunk')
    Wait(250000)
    lib.notify({
      description = 'Saatanako heikottaa..',
      position = 'center-right',
      type = 'inform'
  })
    SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
    Wait(1000)
    palautus()
end)


RegisterNetEvent('esx_t_drugeffect:amfetamiini')
AddEventHandler('esx_t_drugeffect:amfetamiini', function()
  local playerPed = GetPlayerPed(-1)

    local success = lib.progressCircle({
    duration = 1500,
    position = 'middle',
    label = 'Vedetään kamaa..',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
        move = false,
    },
    anim = {
        dict = 'switch@trevor@trev_smoking_meth',
        clip = 'trev_smoking_meth_loop' 
    },
})
    SetTimecycleModifier("spectator7")
    SetPedConfigFlag(GetPlayerPed(-1), 100, true)
    ExecuteCommand('walk drunk')
    Wait(350000)
    lib.notify({
      description = 'Saatanako heikottaa..',
      position = 'center-right',
      type = 'inform'
  })
    SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
    Wait(1000)
    palautus()
end)
