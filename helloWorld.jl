# This is a simple script which implements the "graphics hello world" described in chapter 2
using Printf
# constants
rows = 200;
cols = 100;
max_color = 255; # colors go from 0-255
fio = open("outputs\\helloWorld.ppm","w");
# format meta information, P3 format name, second line tells rows by column
@printf(fio, "P3\n%d %d\n%d\n",rows, cols, max_color);
for j in range(cols-1, 0, step=-1)
    for i in range(0, rows-1, step=1)
        r = Int(round(i/rows * max_color));
        g = Int(round(j/cols * max_color));
        b = Int(round(0.2 * max_color));
        @printf(fio, "%d %d %d\n", r, g, b);
    end
end
close(fio);
