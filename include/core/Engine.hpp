#pragma once
#include <SDL3/SDL.h>
#include <SDL3_image/SDL_image.h>
#include "Renderer.hpp"
#include <iostream>
#include "../game/Flappy.hpp"
#include "InputManager.hpp"

class Engine 
{
public:
    Engine();
    ~Engine();
    bool init(const char* title, int width, int height);
    void run();
    void update();
    void render();

private:
    SDL_Window* window;
    Renderer* renderer;
    bool running;

private:
    Flappy *player;
};
