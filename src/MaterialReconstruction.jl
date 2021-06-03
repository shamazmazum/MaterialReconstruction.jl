module MaterialReconstruction
using CorrelationFunctions.Directional
using CorrelationTrackers
using StatsBase: mean
using Base.Iterators

include("modifiers.jl")
include("initialization.jl")
include("furnace.jl")
include("cost.jl")
include("annealing.jl")

export
    # Cost functions
    euclid_mean,
    euclid_directional,
    euclid_mean_weighted,
    euclid_directional_weighted,
    čapek_cost,
    # Initialization
    initialize_random,
    # Modifier structures
    AbstractModifier,
    RandomSwapper, RandomFlipper,
    InterfaceSwapper, InterfaceFlipper,
    # Annealing
    Furnace, annealing_step

end # module
