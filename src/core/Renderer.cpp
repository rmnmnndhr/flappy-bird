#include "core/Renderer.hpp"

Renderer::Renderer(SDL_Window* window)
{
    if (!window)
    {
        std::cerr << "Renderer requires a valid SDL_Window pointer!\n";
        renderer = nullptr;
        return;
    }
    

    renderer = SDL_CreateRenderer(window, "metal");
    if (!renderer)
    {
        std::cerr << "Failed to create SDL_Renderer: " << SDL_GetError() << std::endl;
    }
}

Renderer::~Renderer()
{
    if (renderer)
    {
        SDL_DestroyRenderer(renderer);
    }
}

void Renderer::clear()
{
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
    SDL_RenderClear(renderer);
}

void Renderer::present()
{
    SDL_RenderPresent(renderer);
}

void Renderer::drawRect(float x, float y, float w, float h, SDL_Color color)
{
    SDL_FRect rect = { x, y, w, h };
    SDL_SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a);
    SDL_RenderFillRect(renderer, &rect);
}

