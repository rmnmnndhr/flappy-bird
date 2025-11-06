#pragma once
#include <SDL3/SDL.h>
#include <SDL3_image/SDL_image.h>
#include "Renderer.hpp"
#include <iostream>
#include "InputManager.hpp"
#include "TextureManager.hpp"

//game
#include "../game/Flappy.hpp"
#include "../game/Background.hpp"
#include "../game/Base.hpp"



class Engine 
{
public:
    Engine();
    ~Engine();
    bool init(const char* title, int width, int height);
    void run();

private:
    bool load();
    void update();
    void render();

private:
    SDL_Window* window;
    Renderer* renderer;
    bool running;
    TextureManager* textureManager;

    Uint32 lastFrameTime = 0;

private:
    Flappy *player;
    Background *bg;
    Base *base;
};
