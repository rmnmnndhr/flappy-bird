#pragma once
#include <SDL3/SDL.h>
#include <iostream>

class Renderer 
{
public:
    Renderer(const Renderer&) = delete;
    Renderer& operator=(const Renderer&) = delete;

    static Renderer& getInstance(SDL_Window* window = nullptr)
    {
        static Renderer instance(window);
        return instance;
    }

    
    void clear();
    void present();
    void drawRect(float x, float y, float w, float h, SDL_Color color);
    void render(SDL_Texture* tex, SDL_FRect* dstrect);

    SDL_Renderer* getRenderer() const { return renderer; }

private:
    explicit Renderer(SDL_Window* window);
    ~Renderer();

    SDL_Renderer* renderer;
};
