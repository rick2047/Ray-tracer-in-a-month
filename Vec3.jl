import Base.length
using StaticArrays

vec3 = SVector{3};

function Base.getproperty(v::vec3, s::Symbol)
    ## treating vector as color
    if s == :x
        return getindex(v, 1);
    elseif s == :y
        return getindex(v, 2);
    elseif s == :z
        return getindex(v, 3);
    elseif s == :r
        return getindex(v, 1);
    elseif s == :g
        return getindex(v, 2);
    elseif s == :b
        return getindex(v, 3);
    else
        return getfield(v, s)
    end
end
## special operators
length(v::vec3) = sqrt(squared_length(v));
squared_length(v::vec3) = sum(v.^2);
make_unit_vector(v::vec3) = v/length(v);
