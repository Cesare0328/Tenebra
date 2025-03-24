repeat task.wait() until game:IsLoaded()
if getgenv().TenebraLoadedX then return end
local AssetService = game:GetService("AssetService")

local function CheckPlaceId(GameID)
    local pages = AssetService:GetGamePlacesAsync()
    while true do
        for _, v in pairs(pages:GetCurrentPage()) do
            if v.PlaceId == GameID then
                return true
            end
        end
        
        if pages.IsFinished then
            break
        end
        
        pages:AdvanceToNextPageAsync()
    end
    
    return false
end

if game.PlaceId == 12604352060 or game.PlaceId == 18122780138 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6214e32f2450f4f49fcebfa21e4839d0.lua"))()
elseif game.PlaceId == 3272915504 then 
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a766b6ca36696855978a701ca1fa601d.lua"))()
elseif game.PlaceId == 15449776494 or game.PlaceId == 18122795128 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6a4881579b97c854344bc961ba379807.lua"))()
elseif CheckPlaceId(13772394625) then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/633b60c5baea9bd8b20a725d5b4f6075.lua"))()
end
