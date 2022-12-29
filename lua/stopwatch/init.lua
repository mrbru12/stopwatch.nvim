local start_time = os.time()

-- Returns the seconds elapsed since Neovim started
local function seconds()
    return os.difftime(os.time(), start_time)
end

-- Returns the minutes elapsed since Neovim started
local function minutes()
    return math.floor(seconds() / 60)
end

-- Returns the hours elapsed since Neovim started
local function hours()
    return math.floor(minutes() / 60)
end

-- Returns a string formatted as "HOURS:MINUTES" elapsed since Neovim started 
local function default()
    return string.format('%02d:%02d', hours() % 60, minutes() % 60)
end

return {
    seconds = seconds,
    minutes = minutes,
    hours = hours,
    default = default
}
