#include "core/Renderer.hpp"
#include <iostream>

Renderer::Renderer(SDL_Window* window) {
    renderer = SDL_CreateRenderer(window, SDL_GetRenderDriver(0));
    if (!renderer) {
        std::cerr << "Renderer Error: " << SDL_GetError() << std::endl;
    }
}

Renderer::~Renderer() {
    SDL_DestroyRenderer(renderer);
}

void Renderer::Clear() {
    SDL_SetRenderDrawColor(renderer, 30, 30, 30, 255); // dark gray background
    SDL_RenderClear(renderer);
}

void Renderer::Present() {
    SDL_RenderPresent(renderer);
}

void Renderer::DrawRect(int x, int y, int w, int h, SDL_Color color) {
    SDL_SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a);
    SDL_FRect rect = { (float)x, (float)y, (float)w, (float)h };
    SDL_RenderFillRect(renderer, &rect);
}
