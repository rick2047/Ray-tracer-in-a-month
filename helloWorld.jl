# This is a simple script which implements the "graphics hello world" described in chapter 2

# constants
rows = 200;
cols = 100;
max_color = 255; # colors go from 0-255
fio = open("outputs\\helloWorld.ppm", "w");
# format meta information, P3 format name, second line tells rows by column
println(fio, "P3\n$rows $cols\n$max_color");
# actual pixels
rgb = [
    [i / rows, j / cols, 0.2]
    for
    i in range(0, rows - 1, step = 1), j in range(cols - 1, 0, step = -1)
]
[
    println(fio, "$(c[1]) $(c[2]) $(c[3])")
    for c in map(x -> round.(Int, x * max_color), rgb)
]
close(fio);
