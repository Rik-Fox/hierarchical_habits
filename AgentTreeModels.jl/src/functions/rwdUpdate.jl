function rwdUpdate(s::State, actn::String, Rwd::T, α::T) where T<:Float64

    if actn == "A1"
        s.R.A1 = (1-α)*s.R.A1 + α*Rwd*s.e.A1
    else
        s.R.A2 = (1-α)*s.R.A2 + α*Rwd*s.e.A2
    end

    return s
end
