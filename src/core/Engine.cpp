#include "core/Engine.hpp"

Engine::Engine() : window(nullptr), renderer(nullptr), running(false) {}

Engine::~Engine() 
{
    SDL_DestroyWindow(window);
    SDL_Quit();
}

bool Engine::init(const char* title, int width, int height) 
{
    if (SDL_Init(SDL_INIT_VIDEO) == 0) 
    {
        std::cerr << "SDL_Init Error: " << SDL_GetError() << std::endl;
        return false;
    }

    window = SDL_CreateWindow(title, width, height, SDL_WINDOW_MAXIMIZED);
    if (!window) 
    {
        std::cerr << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
        return false;
    }


    this->renderer = &Renderer::getInstance(window);
    running = true;
    


    SDL_Texture* tex = IMG_LoadTexture(this->renderer->getRenderer(), "assets/sprites/bluebird-downflap.png");
    this->player = new Flappy(tex);


    return true;
}

void Engine::update()
{   

    //KEY PRESED AND MOUSE CLICKS
    SDL_Event event;
    while (SDL_PollEvent(&event)) 
    {
        if (event.type == SDL_EVENT_QUIT) 
        {
            running = false;
        }
    }

    InputManager::GetInstance().Update();
    
    if(InputManager::GetInstance().IsMouseButtonPressed(SDL_BUTTON_LEFT))
    {

    }
    if(InputManager::GetInstance().IsKeyPressed(SDL_SCANCODE_ESCAPE)) 
    {
        running = false;
    }

}

void Engine::render()
{
    renderer->clear();
    this->player->draw(renderer->getRenderer());
    renderer->drawRect(350, 250, 100, 100, {255, 0, 0, 255});
    renderer->present();

}

void Engine::run() 
{
    
    while (running) 
    {
        this->update();
        this->render();
    }
}
