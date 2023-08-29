local req = request or syn.request
local githubRepo = "https://raw.githubusercontent.com/crazycatdev/lumen/main/"
local storedVersion = "prosperity.1"
local githubConfig = game:GetService("HttpService"):JSONDecode(req({
    Url = githubRepo .. "lumen.json",
    Method = "GET"
}).Body)

local function loadCode()
    local gameID = game.PlaceId
    if githubConfig.places[gameID] then
        local codeURL = githubRepo .. gameID .. ".lua"
        local code = req({
            Url = codeURL,
            Method = "GET"
        }).Body

        loadstring(code)()
    else
        -- Load universal
    end
end

if githubConfig.version ~= storedVersion then
    game:GetService("Players").LocalPlayer:Kick("\nOutdated version. Please visit https://lumenlua.xyz\n")
else
    loadCode()
end