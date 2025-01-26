
NTSPU = {} -- Neurotrauma Surgery Plus
NTSP = {} -- this existing should make surgical skill gain work?
NTSPU.Name="NT Surgery Plus Ultra (name Pending)"
NTSPU.Version = "A4.0"
NTSPU.VersionNum = 01020401
NTSPU.MinNTVersion = "A1.10.0"
NTSPU.MinNTVersionNum = 01100000
NTSPU.Path = table.pack(...)[1]
Timer.Wait(function() if NTC ~= nil and NTC.RegisterExpansion ~= nil then NTC.RegisterExpansion(NTSPU) end end,1)

-- server-side code (also run in singleplayer)
if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then
    Timer.Wait(function()
        if NTC == nil then
            print("Error loading NT Surgery Plus Ultra: It appears Neurotrauma isn't loaded!")
            return
        end

        dofile(NTSPU.Path.."/Lua/Scripts/humanupdate.lua")
        dofile(NTSPU.Path.."/Lua/Scripts/items.lua")

        NTC.AddPreHumanUpdateHook(NTSPU.PreUpdateHuman)
        NTC.AddHumanUpdateHook(NTSPU.PostUpdateHuman)
    end,1)

end

Timer.Wait(function()
        dofile(NTSPU.Path.."/Lua/Scripts/configdata.lua")
end, 1)