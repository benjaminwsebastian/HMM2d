Base.eval(:(have_color = true))

using Documenter
using Literate
using Glob
using Random
using HMM2d

Random.seed!(2019)
#=
find_examples() = map(x -> joinpath("examlpes/", split(basename(x), ".")[1]), glob("*.jl", "examples/"))

if !("SKIP_EXAMPLES" in keys(ENV))
    for example in find_examples()
        Literate.markdown("$(example).jl", "docs/src/examples", documenter = true)
    end
end
=#

makedocs(sitename = "HMM2d", modules = [HMM2d], pages = ["index.md", "Manual" => ["placeholder.md"], "theory.md" ])

deploydocs( repo = "github.com/benjaminwsebastian/HMM2d.jl.git" )
