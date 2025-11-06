// Flappy.hpp
#pragma once

#include <SDL3/SDL.h>
#include "../core/Entity.hpp"

class Flappy : public Entity {
private:
    SDL_Texture* texture;
    Vector downforce = {0.f, 6.f};
    float maxVerticalVelocity = 600.f;

public:
    Flappy(SDL_Texture* tex);
    
    void update(float deltaTime) override;
    void draw(SDL_Renderer* renderer) override;

    void applyForces(Vector force);
    
};
