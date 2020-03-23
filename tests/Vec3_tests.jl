using Test
include("../Vec3.jl")

x1, y1, z1, x2, y2, z2 = rand(1:100,6)
l1 = sqrt(x1^2+y1^2+z1^2);
v1 = vec3(x1,y1,z1);
v2 = vec3(x2,y2,y2);
@testset "Space and color are related" begin
    @test v1.x == v1.r;
    @test v1.y == v1.g;
    @test v1.z == v1.b;
end

@testset "Vector operations" begin
    @test length(v1) == l1;
    @test make_unit_vector(v1) == vec3(x1/l1, y1/l1, z1/l1);
end
