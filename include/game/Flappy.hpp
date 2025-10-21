// Flappy.hpp
#pragma once

#include <SDL3/SDL.h>
#include "../core/Entity.hpp"

class Flappy : public Entity {
private:
    SDL_Texture* texture;

public:
    Flappy(SDL_Texture* tex);
    
    void update(float deltaTime) override;
    void draw(SDL_Renderer* renderer) override;
};
