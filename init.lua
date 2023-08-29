--loader goes here
--check game and possibly make required folders
--add global security features too

local req = request or syn.request
local githubRepo = "https://raw.githubusercontent.com/crazycatdev/lumen/main/"
local storedVersion = "prosperity.1"
local githubConfigEnc  = req({
    Url = githubRepo .. "lumen.json",
    Method = "GET"
}).Body
local githubConfig = game:GetService("HttpService"):JSONDecode(githubConfigEnc)

if githubConfig.version ~= storedVersion then game:GetService("Players").LocalPlayer:Kick("\nOutdated version. Please visit https://lumenlua.xyz\n")
end

if not githubConfig.places[game.PlaceId] then
--Load universal here
 end