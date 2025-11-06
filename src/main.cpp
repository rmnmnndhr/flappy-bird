#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <iostream>
#include "core/Engine.hpp"

int main(int argc, char* argv[]) 
{
    Engine *engine = new Engine();
    engine->init("Flappy Bird", 432, 768);
    engine->run();
    return 0;

    
}
