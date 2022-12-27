local start_time = os.time()

local function delta_time()
    local seconds = os.difftime(os.time(), start_time)
    local minutes = math.floor(seconds / 60)
    local hours = math.floor(minutes / 60)

    return string.format("%02d:%02d", hours % 60, minutes % 60)
end

return {
    delta_time = delta_time
}
