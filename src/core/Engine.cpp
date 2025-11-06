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
    this->textureManager = new TextureManager();
    running = true;

    this->load();
    return true;
}

void Engine::update()
{   

    Uint32 currentFrameTime = SDL_GetTicks();
    float dt = (currentFrameTime - this->lastFrameTime) / 1000.0f;
    this->lastFrameTime = currentFrameTime;

    //KEY PRESED AND MOUSE CLICKS

    InputManager::GetInstance().Update();
    
    if(InputManager::GetInstance().IsKeyReleased(SDL_SCANCODE_SPACE))
    {
        this->player->applyForces(Vector{0.f, -1200.f});
    }
    if(InputManager::GetInstance().IsKeyPressed(SDL_SCANCODE_ESCAPE)) 
    {
        running = false;
    }


    SDL_Event event;
    while (SDL_PollEvent(&event)) 
    {
        if (event.type == SDL_EVENT_QUIT) 
        {
            running = false;
        }
    }


    //game
    this->player->update(dt);
    this->base->update(dt);



}

void Engine::render()
{
    renderer->clear();
    this->bg->draw(renderer->getRenderer());
    this->base->draw(renderer->getRenderer());

    this->player->draw(renderer->getRenderer());
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



bool Engine::load()
{
    if (!this->textureManager->load("player", "assets/sprites/bluebird-downflap.png", this->renderer->getRenderer()))
    {
        return false;
    }

    if (!this->textureManager->load("bg-day", "assets/sprites/background-day.png", this->renderer->getRenderer()))
    {
        return false;
    }

    if (!this->textureManager->load("base", "assets/sprites/base.png", this->renderer->getRenderer()))
    {
        return false;
    }


    this->player = new Flappy(this->textureManager->get("player"));


    this->bg = new Background(this->textureManager->get("bg-day"));


    this->base = new Base(this->textureManager->get("base"));




    return true;
}
