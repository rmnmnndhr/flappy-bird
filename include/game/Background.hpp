
#pragma once
#include "core/GameObject.hpp"

class Background : public GameObject {
public:
    Background(SDL_Texture* texture);
    ~Background() override = default;

    void update(float) override;
    
    void draw(SDL_Renderer* renderer) override;
private:
    SDL_FRect dst;
    SDL_Texture* texture;
};
