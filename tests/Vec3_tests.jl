using Test

v1 = Vec3(1,2,3);
v2 = Vec3(2,3,4);
@testset "Space related stuff" begin
    @test x(v1) == 1;
    @test y(v1) == 2;
    @test z(v1) == 3;
end

@testset "Color related stuff" begin
    @test r(v1) == 1;
    @test g(v1) == 2;
    @test b(v1) == 3;
end

@testset "Vector operations" begin
    @test length(v1) == sqrt(1+4+9);
    @test make_unit_vector(v1) == Vec3(1/sqrt(1+4+9), 2/sqrt(1+4+9), 3/sqrt(1+4+9))
end
