ffi.cdef[[
int GetTickCount();
]]

local a1 = 0
local a2 = 0
local a3 =
{
  [0]  =  "onetap.su",
  [1]  =  "onetap.s",
  [2]  =  "onetap.",
  [3]  =  "onetap",
  [4]  =  "oneta",
  [5]  =  "onet",
  [6]  =  "one",
  [7]  =  "on",
  [8]  =  "o",
  [9]  =  "on",
  [10]  =  "one",
  [11]  =  "onet",
  [12]  =  "oneta,
  [13]  =  "onetap",
  [14]  =  "onetap.",
  [15]  =  "onetap.s"
  [16]  =  "onetap.su"
}

function paint()
    if engine.IsInGame() and entitylist.GetPlayerByIndex(engine.GetLocalPlayer()):GetTeamNum() > 0 then
        if a1 < ffi.C.GetTickCount() then     
            a2 = a2 + 1
            if a2 > 15 then
                a2 = 0
            end
            client.SetClantag(a3[a2])
            a1 = ffi.C.GetTickCount() + 650
        end
    end
end

client.RegisterCallback("paint_traverse", paint)
