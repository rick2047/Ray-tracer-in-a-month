using StaticArrays
import Base.length

Vec3 = SVector{3};
## treating vector as location in space
x(v::Vec3) = v[1];
y(v::Vec3) = v[2];
z(v::Vec3) = v[3];
## treating vector as color
r(v::Vec3) = v[1];
g(v::Vec3) = v[2];
b(v::Vec3) = v[3];
## special operators
length(v::Vec3) = sqrt(v[1]^2 + v[2]^2 + v[3]^2);
squared_length(v::Vec3) = v[1]^2 + v[2]^2 + v[3]^2;
make_unit_vector(v::Vec3) = v/length(v);
