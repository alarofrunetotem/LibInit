--[[
    Simple Expansion Detection - Copy this into your addon
    
    Usage examples:
]]

-- Method 1: Get current expansion level (0 = Classic, 1 = TBC, etc.)
local currentExpansion = GetExpansionLevel()
print("Current expansion level:", currentExpansion)

-- Method 2: Check if specific expansion is unlocked (most accurate)
if C_PlayerInfo and C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer then
    -- Check for Dragonflight (expansion 9)
    if C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(LE_EXPANSION_DRAGONFLIGHT) then
        print("Dragonflight is available!")
    end
    
    -- Check for Shadowlands (expansion 8)
    if C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(LE_EXPANSION_SHADOWLANDS) then
        print("Shadowlands is available!")
    end
    
    -- Check for Battle for Azeroth (expansion 7)
    if C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(LE_EXPANSION_BATTLE_FOR_AZEROTH) then
        print("Battle for Azeroth is available!")
    end
end

-- Method 3: Simple function to check all expansions
local function CheckAllExpansions()
    local expansions = {
        [0] = "Classic",
        [1] = "The Burning Crusade",
        [2] = "Wrath of the Lich King",
        [3] = "Cataclysm",
        [4] = "Mists of Pandaria",
        [5] = "Warlords of Draenor",
        [6] = "Legion",
        [7] = "Battle for Azeroth",
        [8] = "Shadowlands",
        [9] = "Dragonflight",
        [10] = "The War Within",
    }
    
    local currentLevel = GetExpansionLevel()
    local available = {}
    
    for i = 0, currentLevel do
        local isUnlocked = true
        if C_PlayerInfo and C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer then
            isUnlocked = C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(i)
        end
        
        if isUnlocked then
            table.insert(available, string.format("%d: %s", i, expansions[i] or "Unknown"))
        end
    end
    
    print("Available expansions:")
    for _, exp in ipairs(available) do
        print("  " .. exp)
    end
    
    return available
end

-- Call it
-- CheckAllExpansions()
