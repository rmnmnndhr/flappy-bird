#pragma once
#include "core/Entity.hpp"

class Base : public Entity {
public:
    Base(SDL_Texture* texture);
    ~Base() override = default;

    void update(float) override;
    
    void draw(SDL_Renderer* renderer) override;
private:
    SDL_FRect dst1;
    SDL_FRect dst2;

    SDL_Texture* texture;

    float width, height;
};
