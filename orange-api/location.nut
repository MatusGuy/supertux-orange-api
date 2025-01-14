import("orange-api/orange_api_util.nut")

get_api_table().in_level <- function() try {
    return sector != null
} catch(e) return false

get_api_table().in_worldmap <- function() try {
    return worldmap != null
} catch(e) return false

get_api_table().on_titlescreen <- function() return get_api_table().in_level() && "logo" in sector

// Nasty workaround. If you have a better soloution please let me know.
get_api_table().in_editor <- function() return sector.Tux.get_x() == 0 && sector.Tux.get_y() == 0 && sector.Tux.get_velocity_x() == 0 && sector.Tux.get_velocity_y() == 0