gcc -O2 -c -o tmp/compat.o -ID:/install/lua/5.2.4/include src/compat.c -Isrc                     
gcc -O2 -c -o tmp/deep.o -ID:/install/lua/5.2.4/include src/deep.c -Isrc                         
gcc -O2 -c -o tmp/lanes.o -ID:/install/lua/5.2.4/include src/lanes.c -Isrc                       
gcc -O2 -c -o tmp/keeper.o -ID:/install/lua/5.2.4/include src/keeper.c -Isrc                     
gcc -O2 -c -o tmp/tools.o -ID:/install/lua/5.2.4/include src/tools.c -Isrc                       
gcc -O2 -c -o tmp/threading.o -ID:/install/lua/5.2.4/include src/threading.c -Isrc               
gcc -shared -o ../../3.10.1/lanes/core.dll ^
    tmp/compat.o ^
    tmp/deep.o ^
    tmp/lanes.o ^
    tmp/keeper.o ^
    tmp/tools.o ^
    tmp/threading.o ^
    D:/install/lua/5.2.4/lib/lua52.dll ^
    -lm                                                 