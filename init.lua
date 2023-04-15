--loader goes here
--check game and possibly make required folders
--add global security features too

local req = request or syn.request
local placeId = game.PlaceId
local githubRepo = "https://raw.githubusercontent.com/crazycatdev/lumen/main/"
local storedVersion = "prosperity.1"
local githubVersion  = req({
    Url = githubRepo .. "lumen.json",
    Method = "GET"
})

if githubVersion ~= storedVersion then
    game:GetService("Players").LocalPlayer:Kick("aaaaa")
end