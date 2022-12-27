local start_time = os.time()

local function seconds()
    return os.difftime(os.time(), start_time)
end

local function minutes()
    return math.floor(seconds() / 60)
end

local function hours()
    return math.floor(minutes() / 60)
end

local function default()
    return string.format('%02d:%02d', hours() % 60, minutes() % 60)
end

return {
    seconds = seconds,
    minutes = minutes,
    hours = hours,
    default = default
}
