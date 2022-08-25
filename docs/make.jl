using RiverREM
using Documenter

DocMeta.setdocmeta!(RiverREM, :DocTestSetup, :(using RiverREM); recursive=true)

makedocs(;
    modules=[RiverREM],
    authors="Maarten Pronk <git@evetion.nl> and contributors",
    repo="https://github.com/evetion/RiverREM.jl/blob/{commit}{path}#{line}",
    sitename="RiverREM.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://evetion.github.io/RiverREM.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/evetion/RiverREM.jl",
    devbranch="main",
)
