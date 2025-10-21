#pragma once
#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>

class Renderer {
public:
    Renderer(SDL_Window* window);
    ~Renderer();

    void Clear();
    void Present();
    void DrawRect(int x, int y, int w, int h, SDL_Color color);

private:
    SDL_Renderer* renderer;
};