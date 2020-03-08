using Test
include("../Vec3.jl")

x1, y1, z1, x2, y2, z2 = rand(1:100,6)
l1 = sqrt(x1^2+y1^2+z1^2);
v1 = Vec3(x1,y1,z1);
v2 = Vec3(x2,y2,y2);
@testset "Space related stuff" begin
    @test x(v1) == x1;
    @test y(v1) == y1;
    @test z(v1) == z1;
end

@testset "Color related stuff" begin
    @test r(v1) == x1;
    @test g(v1) == y1;
    @test b(v1) == z1;
end

@testset "Vector operations" begin
    @test length(v1) == l1;
    @test make_unit_vector(v1) == Vec3(x1/l1, y1/l1, z1/l1);
end
