include("Vec3.jl")

struct ray
    origin::Vec3;
    direction::Vec3;
    point_at_parameter(r::ray, t::Number) = r.origin + t*r.direction;
end

function color(r::ray)::Vec3
    unit_direction = unit_vector(r.direction());
    t = 0.5*(y(unit_direction) + 1.0);
    return (1.0-t)*Vec3(1.0, 1.0, 1.0) + t*Vec3(0.5, 0.7, 1.0);
end
