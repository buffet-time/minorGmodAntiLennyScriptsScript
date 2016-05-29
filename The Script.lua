if SERVER then
    util.AddNetworkString("gZ_BanMe")
    net.Receive("gZ_BanMe",function(len,ply)
        // if you want to add a Steam ID exception add it in the "" on this line and unccomment this. if(ply:SteamID=="") then return end
        for k,v in pairs(player.GetAll()) do
            v:ChatPrint(ply:Nick() .. " was kicked for cheating.")
        end
        ply:Kick("Cheats detected")
    end)
else
    timer.Create("CheckMe",10,0,function()
        if _G.Lenny then net.Start("gZ_BanMe") net.SendToServer() end
    end)
end
