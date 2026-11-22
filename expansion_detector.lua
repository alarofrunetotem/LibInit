--[[
    Expansion Detection Snippet for World of Warcraft Addons
    
    This snippet provides functions to detect which expansions are installed/available
    for the current player account.
]]

local ExpansionDetector = {}

-- Expansion constants mapping
local EXPANSION_NAMES = {
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
    [11] = "Midnight",
    [12] = "The Last Titan",
}

-- Get the current expansion level (0-based)
function ExpansionDetector:GetCurrentExpansionLevel()
    return GetExpansionLevel()
end

-- Check if a specific expansion is unlocked/available
function ExpansionDetector:IsExpansionUnlocked(expansionID)
    if C_PlayerInfo and C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer then
        return C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(expansionID)
    end
    -- Fallback: check if expansion level is at least the requested one
    return GetExpansionLevel() >= expansionID
end

-- Get all available expansions as a table
function ExpansionDetector:GetAvailableExpansions()
    local expansions = {}
    local currentLevel = GetExpansionLevel()
    
    -- Check each expansion level
    for i = 0, currentLevel do
        local isUnlocked = true
        -- Try to use the more accurate check if available
        if C_PlayerInfo and C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer then
            isUnlocked = C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(i)
        end
        
        if isUnlocked then
            expansions[i] = {
                id = i,
                name = EXPANSION_NAMES[i] or ("Expansion " .. i),
                unlocked = true
            }
        end
    end
    
    return expansions
end

-- Get a formatted list of available expansions as a string
function ExpansionDetector:GetExpansionsList()
    local expansions = self:GetAvailableExpansions()
    local list = {}
    
    for id, exp in pairs(expansions) do
        table.insert(list, string.format("%d: %s", id, exp.name))
    end
    
    table.sort(list)
    return table.concat(list, "\n")
end

-- Check for specific expansion by constant (e.g., LE_EXPANSION_DRAGONFLIGHT)
function ExpansionDetector:HasExpansion(expansionConstant)
    if not expansionConstant then
        return false
    end
    
    if C_PlayerInfo and C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer then
        return C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(expansionConstant)
    end
    
    -- Fallback: compare with current expansion level
    local currentLevel = GetExpansionLevel()
    return currentLevel >= expansionConstant
end

-- Example usage:
--[[
    -- Get current expansion level
    local currentExp = ExpansionDetector:GetCurrentExpansionLevel()
    print("Current expansion level:", currentExp)
    
    -- Check for specific expansion
    if ExpansionDetector:HasExpansion(LE_EXPANSION_DRAGONFLIGHT) then
        print("Dragonflight is available!")
    end
    
    -- Get all available expansions
    local expansions = ExpansionDetector:GetAvailableExpansions()
    for id, exp in pairs(expansions) do
        print(string.format("Expansion %d: %s", id, exp.name))
    end
    
    -- Print formatted list
    print(ExpansionDetector:GetExpansionsList())
]]

return ExpansionDetector
