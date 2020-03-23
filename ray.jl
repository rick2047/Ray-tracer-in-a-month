include("Vec3.jl")
struct ray
    origin::vec3;
    direction::vec3;
end
point_at_parameter(r::ray, t::Number) = r.origin + t*r.direction;
