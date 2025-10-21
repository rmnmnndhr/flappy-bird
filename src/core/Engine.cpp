#include "core/Engine.hpp"
#include <iostream>

Engine::Engine(const char* title, int width, int height) : window(nullptr), renderer(nullptr), running(false) {}

Engine::~Engine() {
    delete renderer;
    SDL_DestroyWindow(window);
    SDL_Quit();
}

bool Engine::init(const char* title, int width, int height) {
    if (SDL_Init(SDL_INIT_VIDEO) == 0) {
        std::cerr << "SDL_Init Error: " << SDL_GetError() << std::endl;
        return false;
    }

    window = SDL_CreateWindow(title, width, height, SDL_WINDOW_MAXIMIZED);
    if (!window) {
        std::cerr << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
        return false;
    }

    renderer = new Renderer(window);
    running = true;
    return true;
}

void Engine::run() {
    SDL_Event event;
    while (running) {
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_EVENT_QUIT)
                running = false;
        }

        // Update game logic here...

        // Render
        renderer->Clear();
        renderer->DrawRect(350, 250, 100, 100, {255, 0, 0, 255}); // red square
        renderer->Present();
    }
}
