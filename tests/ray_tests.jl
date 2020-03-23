using Test
include("../ray.jl")
o = vec3(0,0,0);
move_right = vec3(1,0,0);
r1 = ray(o, move_right)
@testset "Point at parameter" begin
    @test point_at_parameter(r1, 1) == vec3(1,0,0)
end
