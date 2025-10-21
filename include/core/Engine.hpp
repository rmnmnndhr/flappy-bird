#pragma once
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include "Renderer.hpp"

class Engine {
public:
    Engine(const char* title, int width, int height);
    ~Engine();
    bool init(const char* title, int width, int height);
    void run();

private:
    SDL_Window* window;
    Renderer* renderer;
    bool running;
};
