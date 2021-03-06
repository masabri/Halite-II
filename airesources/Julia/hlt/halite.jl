module Halite

using Memento

export Game, DockedStatus, start_game, thrust, dock, undock, update_map,
    all_players, all_planets, all_ships, all_docked_ships, get_player, get_me, get_planet,
    get_docked_ship, isdocked, isowned, isfull, can_dock, navigate, send_command_queue,
    closest_point_to, nearest_unoccupied_planet

export MAX_SPEED, SHIP_RADIUS, MAX_SHIP_HEALTH, BASE_SHIP_HEALTH, WEAPON_COOLDOWN,
    WEAPON_RADIUS, WEAPON_DAMAGE, EXPLOSION_RADIUS, DOCK_RADIUS, DOCK_TURNS,
    BASE_PRODUCTIVITY, SPAWN_RADIUS

@enum DockedStatus UNDOCKED=0 DOCKING=1 DOCKED=2 UNDOCKING=3

include("entity.jl")
include("player.jl")
include("utils.jl")
include("game_map.jl")
include("game.jl")

# Constants

# Max number of units of distance a ship can travel in a turn
const MAX_SPEED = 7
# Radius of a ship
const SHIP_RADIUS = 0.5
# Starting health of ship, also its max
const MAX_SHIP_HEALTH = 255
# Starting health of ship, also its max
const BASE_SHIP_HEALTH = 255
# Weapon cooldown period
const WEAPON_COOLDOWN = 1
# Weapon damage radius
const WEAPON_RADIUS = 5.0
# Weapon damage
const WEAPON_DAMAGE = 64
# Radius in which explosions affect other entities
const EXPLOSION_RADIUS = 10.0
# Distance from the edge of the planet at which ships can try to dock
const DOCK_RADIUS = 4.0
# Number of turns it takes to dock a ship
const DOCK_TURNS = 4
# Number of production units per turn contributed by each docked ship
const BASE_PRODUCTIVITY = 6
# Distance from the planets edge at which new ships are created
const SPAWN_RADIUS = 2.0

end #module
